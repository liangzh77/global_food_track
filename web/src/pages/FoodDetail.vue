<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { languageService, currentLang } from '@/services/languageService'
import { foodIcons, getCropIcon } from '@/types'

const route = useRoute()
const router = useRouter()

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

const foodId = computed(() => route.params.id as string)
const food = computed(() => dataService.getFoodById(foodId.value))

// 本地化食物名称
const foodName = computed(() => languageService.getName(food.value))
const foodDescription = computed(() => languageService.getDescription(food.value))
const foodAlias = computed(() => languageService.getAlias(food.value))

const categoryName = computed(() => {
  if (!food.value) return ''
  return languageService.getFoodCategoryName(food.value.category)
})

const icon = computed(() => {
  if (!food.value) return '🍽️'
  return foodIcons[food.value.category] || '🍽️'
})

const ingredientCrops = computed(() => {
  if (!food.value) return []
  return food.value.ingredients
    .map(id => dataService.getCropById(id))
    .filter(c => c !== undefined)
})

function goBack() {
  router.back()
}

function getLocationName(locationId: string): string {
  const location = dataService.getLocationById(locationId)
  if (location) {
    return languageService.getName(location)
  }
  return dataService.getLocationName(locationId)
}

function goToCrop(cropId: string) {
  router.push({ name: 'CropDetail', params: { id: cropId } })
}

function goToLocation(locationId: string) {
  router.push({ name: 'LocationDetail', params: { id: locationId } })
}

function goHome() {
  router.push({ name: 'Home' })
}

function toggleLanguage() {
  languageService.toggleLanguage()
}

function hasLocationDetail(locationId: string): boolean {
  return dataService.getLocationById(locationId) !== undefined
}

// 获取本地化的作物名称
function getCropName(crop: any): string {
  return languageService.getName(crop)
}

// 获取时间显示
function getTimeDisplay(time: any): string {
  return languageService.getTimeDisplay(time)
}

// 获取传播途径
function getVia(spread: any): string | undefined {
  return languageService.getVia(spread)
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ foodName || t(ui.buttons.viewFoodDetails) }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
      </div>
    </div>

    <div class="content" v-if="food">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">{{ t(ui.labels.basicInfo) }}</div>
        <div class="detail-text">
          <p><strong>{{ t(ui.labels.category) }}:</strong> {{ categoryName }}</p>
          <p v-if="foodAlias.length"><strong>{{ t(ui.labels.alias) }}:</strong> {{ foodAlias.join(currentLang === 'en' ? ', ' : '、') }}</p>
        </div>
      </div>

      <!-- 简介 -->
      <div class="detail-section">
        <div class="detail-section-title">{{ t(ui.labels.description) }}</div>
        <div class="detail-text">{{ foodDescription }}</div>
      </div>

      <!-- 起源 -->
      <div class="detail-section">
        <div class="detail-section-title">{{ t(ui.labels.origin) }}</div>
        <div>
          <span
            class="tag-lg"
            style="cursor: pointer;"
            @click="goToLocation(food.origin.location)"
          >
            📍 {{ getLocationName(food.origin.location) }}
          </span>
          <span class="tag-lg">🕐 {{ getTimeDisplay(food.origin.time) }}</span>
        </div>
      </div>

      <!-- 主要原料 -->
      <div class="detail-section" v-if="ingredientCrops.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.ingredients) }}</div>
        <div
          v-for="crop in ingredientCrops"
          :key="crop!.id"
          class="list-card"
          @click="goToCrop(crop!.id)"
        >
          <div class="list-card-icon">{{ getCropIcon(crop!.id, crop!.category) }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getCropName(crop) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 传播路线 -->
      <div class="detail-section" v-if="food.spreads.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.spreadRoute) }}</div>
        <div class="spread-item" v-for="(spread, index) in food.spreads" :key="index">
          <span
            :class="{ 'spread-location': hasLocationDetail(spread.from) }"
            @click="hasLocationDetail(spread.from) && goToLocation(spread.from)"
          >{{ getLocationName(spread.from) }}</span>
          <span class="spread-arrow">→</span>
          <span
            :class="{ 'spread-location': hasLocationDetail(spread.to) }"
            @click="hasLocationDetail(spread.to) && goToLocation(spread.to)"
          >{{ getLocationName(spread.to) }}</span>
          <span class="spread-time">{{ getTimeDisplay(spread.time) }}</span>
          <span v-if="getVia(spread)" class="spread-via">({{ getVia(spread) }})</span>
        </div>
      </div>

      <!-- 当前流行地区 -->
      <div class="detail-section" v-if="food.currentRegions.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.popularRegions) }}</div>
        <div>
          <span
            v-for="region in food.currentRegions"
            :key="region"
            class="tag-lg"
            style="cursor: pointer;"
            @click="goToLocation(region)"
          >
            {{ getLocationName(region) }}
          </span>
        </div>
      </div>
    </div>

    <div v-else class="content">
      <div class="empty-state">
        <div class="empty-icon">❓</div>
        <div>{{ t(ui.empty.noResults) }}</div>
      </div>
    </div>
  </div>
</template>
