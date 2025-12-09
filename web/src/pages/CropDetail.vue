<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { languageService, currentLang } from '@/services/languageService'
import { getCropIcon } from '@/types'

const route = useRoute()
const router = useRouter()

const cropId = computed(() => route.params.id as string)
const crop = computed(() => dataService.getCropById(cropId.value))

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

// 本地化作物名称
const cropName = computed(() => languageService.getName(crop.value))
const cropDescription = computed(() => languageService.getDescription(crop.value))
const cropAlias = computed(() => languageService.getAlias(crop.value))

const categoryName = computed(() => {
  if (!crop.value) return ''
  return languageService.getCropCategoryName(crop.value.category)
})

const icon = computed(() => {
  if (!crop.value) return '🌱'
  return getCropIcon(crop.value.id, crop.value.category)
})

const relatedFoods = computed(() => {
  if (!crop.value) return []
  return dataService.getFoodsByCropId(crop.value.id)
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

function goToFood(foodId: string) {
  router.push({ name: 'FoodDetail', params: { id: foodId } })
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

// 获取本地化的食物名称
function getFoodName(food: any): string {
  return languageService.getName(food)
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
          <div class="header-title">{{ cropName || t(ui.buttons.viewCropDetails) }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
      </div>
    </div>

    <div class="content" v-if="crop">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">{{ t(ui.labels.basicInfo) }}</div>
        <div class="detail-text">
          <p><strong>{{ t(ui.labels.category) }}:</strong> {{ categoryName }}</p>
          <p v-if="cropAlias.length"><strong>{{ t(ui.labels.alias) }}:</strong> {{ cropAlias.join(currentLang === 'en' ? ', ' : '、') }}</p>
        </div>
      </div>

      <!-- 简介 -->
      <div class="detail-section">
        <div class="detail-section-title">{{ t(ui.labels.description) }}</div>
        <div class="detail-text">{{ cropDescription }}</div>
      </div>

      <!-- 起源 -->
      <div class="detail-section">
        <div class="detail-section-title">{{ t(ui.labels.origin) }}</div>
        <div>
          <span
            class="tag-lg"
            style="cursor: pointer;"
            @click="goToLocation(crop.origin.location)"
          >
            📍 {{ getLocationName(crop.origin.location) }}
          </span>
          <span class="tag-lg">🕐 {{ getTimeDisplay(crop.origin.time) }}</span>
        </div>
      </div>

      <!-- 传播路线 -->
      <div class="detail-section" v-if="crop.spreads.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.spreadRoute) }}</div>
        <div class="spread-item" v-for="(spread, index) in crop.spreads" :key="index">
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

      <!-- 当前主产区 -->
      <div class="detail-section" v-if="crop.currentRegions.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.currentRegions) }}</div>
        <div>
          <span
            v-for="region in crop.currentRegions"
            :key="region"
            class="tag-lg"
            style="cursor: pointer;"
            @click="goToLocation(region)"
          >
            {{ getLocationName(region) }}
          </span>
        </div>
      </div>

      <!-- 相关食物 -->
      <div class="detail-section" v-if="relatedFoods.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.relatedFoods) }}</div>
        <div
          v-for="food in relatedFoods"
          :key="food.id"
          class="list-card"
          @click="goToFood(food.id)"
        >
          <div class="list-card-icon">🍽️</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getFoodName(food) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
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
