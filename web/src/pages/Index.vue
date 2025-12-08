<script setup lang="ts">
import { ref } from 'vue'
import { useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { cropIcons, foodIcons, locationIcons } from '@/types'

const router = useRouter()
const searchText = ref('')
const activeTab = ref(0)

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
            <div class="category-icon">{{ cropIcons[item.key] }}</div>
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
      <template v-else>
        <div class="section-title">按地区探索</div>
        <div
          v-for="continent in continents"
          :key="continent.id"
          class="list-card"
          @click="goToLocation(continent.id)"
        >
          <div class="list-card-icon">{{ locationIcons.continent }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ continent.name }}</div>
            <div class="list-card-subtitle">{{ getContinentSummary(continent.id) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </template>
    </div>
  </div>
</template>
