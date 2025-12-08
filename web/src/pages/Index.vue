<script setup lang="ts">
import { ref, watch, onMounted } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { dataService } from '@/services/dataService'
import { timelineService } from '@/services/timelineService'
import { cropCategoryIcons, foodIcons, getLocationIcon, ERAS } from '@/types'

const router = useRouter()
const route = useRoute()
const searchText = ref('')
const activeTab = ref(0)

// 从路由参数恢复 tab 状态
onMounted(() => {
  const tab = route.query.tab
  if (tab !== undefined) {
    activeTab.value = parseInt(tab as string) || 0
  }
})

// tab 变化时更新路由参数
watch(activeTab, (newTab) => {
  router.replace({ query: { ...route.query, tab: newTab.toString() } })
})

const cropCategories = [
  { key: 'grain', name: '谷物' },
  { key: 'vegetable', name: '蔬菜' },
  { key: 'fruit', name: '水果' },
  { key: 'legume', name: '豆类' },
  { key: 'spice', name: '香料' },
  { key: 'beverage', name: '饮料作物' },
  { key: 'oil', name: '油料作物' },
  { key: 'sugar', name: '糖料作物' },
  { key: 'nut', name: '坚果' }
]

const foodCategories = [
  { key: 'staple', name: '主食' },
  { key: 'dish', name: '菜肴' },
  { key: 'beverage', name: '饮品' },
  { key: 'dessert', name: '甜点' },
  { key: 'snack', name: '小吃' },
  { key: 'condiment', name: '调味品' },
  { key: 'preserved', name: '腌制食品' }
]

const continents = dataService.getContinents()

function handleSearch() {
  if (searchText.value.trim()) {
    router.push({ name: 'SearchResult', query: { keyword: searchText.value.trim() } })
  }
}

function goToCategory(category: string, type: string) {
  router.push({ name: 'CategoryList', params: { type, category } })
}

function goToLocation(locationId: string) {
  router.push({ name: 'LocationDetail', params: { id: locationId } })
}

function getContinentSummary(continentId: string): string {
  const origins = dataService.getOriginsByLocation(continentId)
  const countries = dataService.getCountriesByContinent(continentId)
  const parts: string[] = []

  if (countries.length > 0) {
    parts.push(`${countries.length}个国家`)
  }
  if (origins.crops.length > 0) {
    parts.push(`${origins.crops.length}种起源作物`)
  }
  if (origins.foods.length > 0) {
    parts.push(`${origins.foods.length}种起源食物`)
  }

  return parts.length > 0 ? parts.join(' · ') : '点击探索'
}

function goToEra(eraId: string) {
  router.push({ path: `/timeline/${eraId}` })
}

function getEraEventCount(eraId: string): number {
  return timelineService.getEventCountByEra(eraId)
}

function getEraYearRange(era: typeof ERAS[0]): string {
  return timelineService.getEraYearRange(era)
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-title">食物全球史</div>
      <div class="header-subtitle">探索作物与食物的起源与传播</div>
    </div>

    <!-- 搜索栏 -->
    <div class="search-bar">
      <span class="search-icon">🔍</span>
      <input
        v-model="searchText"
        type="text"
        placeholder="搜索作物、食物或地点..."
        @keyup.enter="handleSearch"
      />
    </div>

    <!-- Tab栏 -->
    <div class="tab-bar">
      <div
        class="tab-item"
        :class="{ active: activeTab === 0 }"
        @click="activeTab = 0"
      >作物</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 1 }"
        @click="activeTab = 1"
      >食物</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 2 }"
        @click="activeTab = 2"
      >地区</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 3 }"
        @click="activeTab = 3"
      >时间线</div>
    </div>

    <!-- 内容区域 -->
    <div class="content">
      <!-- 作物分类 -->
      <template v-if="activeTab === 0">
        <div class="section-title">按类别探索作物</div>
        <div class="category-grid">
          <div
            v-for="item in cropCategories"
            :key="item.key"
            class="category-card"
            @click="goToCategory(item.key, 'crop')"
          >
            <div class="category-icon">{{ cropCategoryIcons[item.key] }}</div>
            <div class="category-name">{{ item.name }}</div>
          </div>
        </div>
      </template>

      <!-- 食物分类 -->
      <template v-else-if="activeTab === 1">
        <div class="section-title">按类别探索食物</div>
        <div class="category-grid">
          <div
            v-for="item in foodCategories"
            :key="item.key"
            class="category-card"
            @click="goToCategory(item.key, 'food')"
          >
            <div class="category-icon">{{ foodIcons[item.key] }}</div>
            <div class="category-name">{{ item.name }}</div>
          </div>
        </div>
      </template>

      <!-- 地区 -->
      <template v-else-if="activeTab === 2">
        <div class="section-title">按地区探索</div>
        <div
          v-for="continent in continents"
          :key="continent.id"
          class="list-card"
          @click="goToLocation(continent.id)"
        >
          <div class="list-card-icon">{{ getLocationIcon(continent.id, 'continent') }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ continent.name }}</div>
            <div class="list-card-subtitle">{{ getContinentSummary(continent.id) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </template>

      <!-- 时间线 -->
      <template v-else>
        <div class="section-title">按时代探索历史</div>
        <div
          v-for="era in ERAS"
          :key="era.id"
          class="era-card"
          @click="goToEra(era.id)"
        >
          <div class="era-card-icon">{{ era.icon }}</div>
          <div class="era-card-content">
            <div class="era-card-title">{{ era.name }}</div>
            <div class="era-card-years">{{ getEraYearRange(era) }}</div>
            <div class="era-card-desc">{{ era.description }}</div>
          </div>
          <div class="era-card-stats">
            <span class="event-count">{{ getEraEventCount(era.id) }}</span>
            <span class="event-label">事件</span>
          </div>
        </div>
      </template>
    </div>
  </div>
</template>
