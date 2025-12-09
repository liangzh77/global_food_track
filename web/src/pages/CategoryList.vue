<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { languageService, currentLang } from '@/services/languageService'
import { foodIcons, getCropIcon } from '@/types'
import type { CropCategory, FoodCategory } from '@/types'

const route = useRoute()
const router = useRouter()

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

const type = computed(() => route.params.type as string)
const category = computed(() => route.params.category as string)

const categoryName = computed(() => {
  if (type.value === 'crop') {
    return languageService.getCropCategoryName(category.value)
  } else {
    return languageService.getFoodCategoryName(category.value)
  }
})

const items = computed(() => {
  if (type.value === 'crop') {
    return dataService.getCropsByCategory(category.value as CropCategory)
  } else {
    return dataService.getFoodsByCategory(category.value as FoodCategory)
  }
})

function getItemIcon(item: any): string {
  if (type.value === 'crop') {
    return getCropIcon(item.id, item.category)
  } else {
    return foodIcons[item.category] || '🍽️'
  }
}

function goBack() {
  router.back()
}

function goHome() {
  router.push({ name: 'Home' })
}

function toggleLanguage() {
  languageService.toggleLanguage()
}

function goToDetail(id: string) {
  if (type.value === 'crop') {
    router.push({ name: 'CropDetail', params: { id } })
  } else {
    router.push({ name: 'FoodDetail', params: { id } })
  }
}

function getItemName(item: any): string {
  return languageService.getName(item)
}

function getItemSubtitle(item: any): string {
  const location = dataService.getLocationById(item.origin.location)
  const locationName = location ? languageService.getName(location) : dataService.getLocationName(item.origin.location)
  const timeDisplay = languageService.getTimeDisplay(item.origin.time)
  const originLabel = t(ui.value.labels.origin)
  return `${originLabel}: ${locationName} · ${timeDisplay}`
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ categoryName }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
      </div>
    </div>

    <!-- 内容 -->
    <div class="content">
      <div v-if="items.length === 0" class="empty-state">
        <div class="empty-icon">📭</div>
        <div>{{ t(ui.empty.noResults) }}</div>
      </div>

      <div
        v-for="item in items"
        :key="item.id"
        class="list-card"
        @click="goToDetail(item.id)"
      >
        <div class="list-card-icon">{{ getItemIcon(item) }}</div>
        <div class="list-card-content">
          <div class="list-card-title">{{ getItemName(item) }}</div>
          <div class="list-card-subtitle">{{ getItemSubtitle(item) }}</div>
        </div>
        <div class="list-card-arrow">›</div>
      </div>
    </div>
  </div>
</template>
