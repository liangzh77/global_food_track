<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { languageService, currentLang } from '@/services/languageService'
import { foodIcons, getLocationIcon, getCropIcon, getCountryCode, isCountry } from '@/types'

const route = useRoute()
const router = useRouter()

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

const locationId = computed(() => route.params.id as string)
const location = computed(() => dataService.getLocationById(locationId.value))

// 本地化地点名称
const locationName = computed(() => languageService.getName(location.value))

const icon = computed(() => {
  if (!location.value) return '📍'
  return getLocationIcon(location.value.id, location.value.type)
})

const countryCode = computed(() => {
  if (!location.value) return null
  return getCountryCode(location.value.id)
})

const isCountryType = computed(() => {
  return location.value ? isCountry(location.value.type) : false
})

const subLocations = computed(() => {
  if (!location.value) return []
  if (location.value.type === 'continent') {
    return dataService.getCountriesByContinent(location.value.id)
  } else if (location.value.type === 'country') {
    return dataService.getRegionsByCountry(location.value.id)
  }
  return []
})

const origins = computed(() => {
  if (!location.value) return { crops: [], foods: [] }
  return dataService.getOriginsByLocation(location.value.id)
})

const currentRegionCrops = computed(() => {
  if (!location.value) return []
  return dataService.getCropsByCurrentRegion(location.value.id)
})

const currentRegionFoods = computed(() => {
  if (!location.value) return []
  return dataService.getFoodsByCurrentRegion(location.value.id)
})

const parentLocation = computed(() => {
  if (!location.value?.parent) return null
  return dataService.getLocationById(location.value.parent)
})

function goBack() {
  router.back()
}

function goHome() {
  router.push({ name: 'Home' })
}

function toggleLanguage() {
  languageService.toggleLanguage()
}

function goToLocation(id: string) {
  router.push({ name: 'LocationDetail', params: { id } })
}

function goToCrop(cropId: string) {
  router.push({ name: 'CropDetail', params: { id: cropId } })
}

function goToFood(foodId: string) {
  router.push({ name: 'FoodDetail', params: { id: foodId } })
}

function getLocationTypeName(type: string): string {
  return languageService.getLocationTypeName(type)
}

function getSubLocationTypeName(): string {
  if (!location.value) return ''
  if (location.value.type === 'continent') {
    return t(ui.value.labels.countries)
  }
  if (location.value.type === 'country') {
    return t(ui.value.labels.subRegions)
  }
  return ''
}

// 获取本地化名称
function getName(entity: any): string {
  return languageService.getName(entity)
}

// 获取时间显示
function getTimeDisplay(time: any): string {
  return languageService.getTimeDisplay(time)
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ locationName || t(ui.tabs.regions) }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
      </div>
    </div>

    <div class="content" v-if="location">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span v-if="isCountryType && countryCode" :class="['fi', 'fi-' + countryCode]" style="font-size: 64px;"></span>
          <span v-else style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">{{ t(ui.labels.basicInfo) }}</div>
        <div class="detail-text">
          <p><strong>{{ t(ui.labels.category) }}:</strong> {{ getLocationTypeName(location.type) }}</p>
          <p v-if="parentLocation">
            <strong>{{ currentLang === 'en' ? 'Parent' : '所属' }}:</strong>
            <span
              class="tag"
              style="cursor: pointer;"
              @click="goToLocation(parentLocation.id)"
            >
              {{ getName(parentLocation) }}
            </span>
          </p>
        </div>
      </div>

      <!-- 下属地区 -->
      <div class="detail-section" v-if="subLocations.length > 0">
        <div class="detail-section-title">{{ getSubLocationTypeName() }} ({{ subLocations.length }})</div>
        <div
          v-for="sub in subLocations"
          :key="sub.id"
          class="list-card"
          @click="goToLocation(sub.id)"
        >
          <div class="list-card-icon">
            <span v-if="isCountry(sub.type) && getCountryCode(sub.id)" :class="['fi', 'fi-' + getCountryCode(sub.id)]"></span>
            <span v-else>{{ getLocationIcon(sub.id, sub.type) }}</span>
          </div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getName(sub) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 起源作物 -->
      <div class="detail-section" v-if="origins.crops.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.originCrops) }} ({{ origins.crops.length }})</div>
        <div
          v-for="crop in origins.crops"
          :key="crop.id"
          class="list-card"
          @click="goToCrop(crop.id)"
        >
          <div class="list-card-icon">{{ getCropIcon(crop.id, crop.category) }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getName(crop) }}</div>
            <div class="list-card-subtitle">{{ getTimeDisplay(crop.origin.time) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 起源食物 -->
      <div class="detail-section" v-if="origins.foods.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.originFoods) }} ({{ origins.foods.length }})</div>
        <div
          v-for="food in origins.foods"
          :key="food.id"
          class="list-card"
          @click="goToFood(food.id)"
        >
          <div class="list-card-icon">{{ foodIcons[food.category] || '🍽️' }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getName(food) }}</div>
            <div class="list-card-subtitle">{{ getTimeDisplay(food.origin.time) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 当前主产区作物 -->
      <div class="detail-section" v-if="currentRegionCrops.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.mainCrops) }} ({{ currentRegionCrops.length }})</div>
        <div
          v-for="crop in currentRegionCrops"
          :key="crop.id"
          class="list-card"
          @click="goToCrop(crop.id)"
        >
          <div class="list-card-icon">{{ getCropIcon(crop.id, crop.category) }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getName(crop) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 当前流行食物 -->
      <div class="detail-section" v-if="currentRegionFoods.length > 0">
        <div class="detail-section-title">{{ t(ui.labels.popularFoods) }} ({{ currentRegionFoods.length }})</div>
        <div
          v-for="food in currentRegionFoods"
          :key="food.id"
          class="list-card"
          @click="goToFood(food.id)"
        >
          <div class="list-card-icon">{{ foodIcons[food.category] || '🍽️' }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ getName(food) }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 空状态 -->
      <div
        v-if="subLocations.length === 0 && origins.crops.length === 0 && origins.foods.length === 0 && currentRegionCrops.length === 0 && currentRegionFoods.length === 0"
        class="empty-state"
      >
        <div class="empty-icon">📭</div>
        <div>{{ t(ui.empty.noResults) }}</div>
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
