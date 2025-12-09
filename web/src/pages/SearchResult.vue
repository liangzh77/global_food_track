<script setup lang="ts">
import { computed, ref, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { languageService, currentLang } from '@/services/languageService'
import { cropIcons, foodIcons, locationIcons } from '@/types'
import type { SearchResultItem } from '@/types'

const route = useRoute()
const router = useRouter()

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

const keyword = computed(() => (route.query.keyword as string) || '')
const searchText = ref(keyword.value)
const results = ref<SearchResultItem[]>([])

// 监听 keyword 变化
watch(keyword, (newKeyword) => {
  searchText.value = newKeyword
  if (newKeyword) {
    results.value = dataService.search(newKeyword)
  } else {
    results.value = []
  }
}, { immediate: true })

function goBack() {
  router.back()
}

function goHome() {
  router.push({ name: 'Home' })
}

function toggleLanguage() {
  languageService.toggleLanguage()
}

function handleSearch() {
  if (searchText.value.trim()) {
    router.replace({ name: 'SearchResult', query: { keyword: searchText.value.trim() } })
  }
}

function getIcon(item: SearchResultItem): string {
  if (item.type === 'crop') {
    return cropIcons.grain // 默认图标
  } else if (item.type === 'food') {
    return foodIcons.dish // 默认图标
  } else {
    return locationIcons.region
  }
}

function goToDetail(item: SearchResultItem) {
  if (item.type === 'crop') {
    router.push({ name: 'CropDetail', params: { id: item.id } })
  } else if (item.type === 'food') {
    router.push({ name: 'FoodDetail', params: { id: item.id } })
  } else {
    router.push({ name: 'LocationDetail', params: { id: item.id } })
  }
}

function getTypeName(type: string): string {
  const isEn = currentLang.value === 'en'
  switch (type) {
    case 'crop': return isEn ? 'Crop' : '作物'
    case 'food': return isEn ? 'Food' : '食物'
    case 'location': return isEn ? 'Location' : '地点'
    default: return ''
  }
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ t(ui.labels.searchResults) }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
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

    <!-- 内容 -->
    <div class="content">
      <div v-if="keyword" class="section-title">
        {{ currentLang === 'en' ? `"${keyword}" - ${results.length} results` : `"${keyword}" 的搜索结果 (${results.length})` }}
      </div>

      <div v-if="results.length === 0" class="empty-state">
        <div class="empty-icon">🔍</div>
        <div>{{ keyword ? t(ui.empty.noResults) : t(ui.placeholders.enterKeyword) }}</div>
      </div>

      <div
        v-for="item in results"
        :key="`${item.type}-${item.id}`"
        class="list-card"
        @click="goToDetail(item)"
      >
        <div class="list-card-icon">{{ getIcon(item) }}</div>
        <div class="list-card-content">
          <div class="list-card-title">{{ item.name }}</div>
          <div class="list-card-subtitle">
            <span class="tag">{{ getTypeName(item.type) }}</span>
            {{ item.subtitle }}
          </div>
        </div>
        <div class="list-card-arrow">›</div>
      </div>
    </div>
  </div>
</template>
