<script setup lang="ts">
import { ref, watch, onMounted, computed } from 'vue'
import { useRouter, useRoute } from 'vue-router'
import { dataService } from '@/services/dataService'
import { timelineService } from '@/services/timelineService'
import { languageService, currentLang } from '@/services/languageService'
import { cropCategoryIcons, foodIcons, getLocationIcon } from '@/types'

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

// 语言切换
function toggleLanguage() {
  languageService.toggleLanguage()
}

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

// 时代数据（本地化）
const eras = computed(() => languageService.getEras())

// 作物类别
const cropCategories = computed(() => [
  'grain', 'vegetable', 'fruit', 'legume', 'spice', 'beverage', 'oil', 'sugar', 'nut'
].map(key => ({
  key,
  name: languageService.getCropCategoryName(key)
})))

// 食物类别
const foodCategories = computed(() => [
  'staple', 'dish', 'beverage', 'dessert', 'snack', 'condiment', 'preserved'
].map(key => ({
  key,
  name: languageService.getFoodCategoryName(key)
})))

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
  const isEn = languageService.isEnglish

  if (countries.length > 0) {
    parts.push(isEn ? `${countries.length} countries` : `${countries.length}个国家`)
  }
  if (origins.crops.length > 0) {
    parts.push(isEn ? `${origins.crops.length} origin crops` : `${origins.crops.length}种起源作物`)
  }
  if (origins.foods.length > 0) {
    parts.push(isEn ? `${origins.foods.length} origin foods` : `${origins.foods.length}种起源食物`)
  }

  return parts.length > 0 ? parts.join(' · ') : t(ui.value.empty.clickToExplore)
}

function goToEra(eraId: string) {
  router.push({ path: `/timeline/${eraId}` })
}

function getEraEventCount(eraId: string): number {
  return timelineService.getEventCountByEra(eraId)
}

function getEraYearRange(era: { startYear: number, endYear: number }): string {
  return timelineService.getEraYearRange(era as any)
}

// 获取大洲名称（本地化）
function getContinentName(continent: any): string {
  return languageService.getName(continent)
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-main">
          <div class="header-title">{{ t(ui.app.title) }}</div>
          <div class="header-subtitle">{{ t(ui.app.subtitle) }}</div>
        </div>
        <button class="lang-toggle-header" @click="toggleLanguage">
          {{ currentLang === 'zh' ? 'EN' : '中文' }}
        </button>
      </div>
    </div>

    <!-- 搜索栏 -->
    <div class="search-bar">
      <span class="search-icon">🔍</span>
      <input
        v-model="searchText"
        type="text"
        :placeholder="t(ui.placeholders.searchCropsFoodsPlaces)"
        @keyup.enter="handleSearch"
      />
    </div>

    <!-- Tab栏 -->
    <div class="tab-bar">
      <div
        class="tab-item"
        :class="{ active: activeTab === 0 }"
        @click="activeTab = 0"
      >{{ t(ui.tabs.crops) }}</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 1 }"
        @click="activeTab = 1"
      >{{ t(ui.tabs.foods) }}</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 2 }"
        @click="activeTab = 2"
      >{{ t(ui.tabs.regions) }}</div>
      <div
        class="tab-item"
        :class="{ active: activeTab === 3 }"
        @click="activeTab = 3"
      >{{ t(ui.tabs.timeline) }}</div>
    </div>

    <!-- 内容区域 -->
    <div class="content">
      <!-- 作物分类 -->
      <template v-if="activeTab === 0">
        <div class="section-title">{{ t(ui.sections.exploreByCropCategory) }}</div>
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
        <div class="section-title">{{ t(ui.sections.exploreByFoodCategory) }}</div>
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
        <div class="section-title">{{ t(ui.sections.exploreByRegion) }}</div>
        <div
          v-for="continent in continents"
          :key="continent.id"
          class="list-card"
          @click="goToLocation(continent.id)"
        >
          <div class="list-card-icon">{{ getLocationIcon(continent.id, 'continent') }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getContinentName(continent) }}</div>
            <div class="list-card-subtitle">{{ getContinentSummary(continent.id) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </template>

      <!-- 时间线 -->
      <template v-else>
        <div class="section-title">{{ t(ui.sections.exploreByEra) }}</div>
        <div
          v-for="era in eras"
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
            <span class="event-label">{{ t(ui.units.events) }}</span>
          </div>
        </div>
      </template>
    </div>
  </div>
</template>
