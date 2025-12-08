<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { cropIcons, foodIcons, cropCategoryNames, foodCategoryNames } from '@/types'
import type { CropCategory, FoodCategory } from '@/types'

const route = useRoute()
const router = useRouter()

const type = computed(() => route.params.type as string)
const category = computed(() => route.params.category as string)

const categoryName = computed(() => {
  if (type.value === 'crop') {
    return cropCategoryNames[category.value as CropCategory] || category.value
  } else {
    return foodCategoryNames[category.value as FoodCategory] || category.value
  }
})

const items = computed(() => {
  if (type.value === 'crop') {
    return dataService.getCropsByCategory(category.value as CropCategory)
  } else {
    return dataService.getFoodsByCategory(category.value as FoodCategory)
  }
})

const icon = computed(() => {
  if (type.value === 'crop') {
    return cropIcons[category.value] || '🌱'
  } else {
    return foodIcons[category.value] || '🍽️'
  }
})

function goBack() {
  router.back()
}

function goToDetail(id: string) {
  if (type.value === 'crop') {
    router.push({ name: 'CropDetail', params: { id } })
  } else {
    router.push({ name: 'FoodDetail', params: { id } })
  }
}

function getItemSubtitle(item: any): string {
  const locationName = dataService.getLocationName(item.origin.location)
  return `起源: ${locationName} · ${item.origin.time.display}`
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-back">
        <button class="back-btn" @click="goBack">←</button>
        <div class="header-title">{{ categoryName }}</div>
      </div>
    </div>

    <!-- 内容 -->
    <div class="content">
      <div v-if="items.length === 0" class="empty-state">
        <div class="empty-icon">📭</div>
        <div>暂无数据</div>
      </div>

      <div
        v-for="item in items"
        :key="item.id"
        class="list-card"
        @click="goToDetail(item.id)"
      >
        <div class="list-card-icon">{{ icon }}</div>
        <div class="list-card-content">
          <div class="list-card-title">{{ item.name }}</div>
          <div class="list-card-subtitle">{{ getItemSubtitle(item) }}</div>
        </div>
        <div class="list-card-arrow">›</div>
      </div>
    </div>
  </div>
</template>
