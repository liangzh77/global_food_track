<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { foodIcons, getLocationIcon, getCropIcon, getCountryCode, isCountry } from '@/types'

const route = useRoute()
const router = useRouter()

const locationId = computed(() => route.params.id as string)
const location = computed(() => dataService.getLocationById(locationId.value))

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
  switch (type) {
    case 'continent': return '大洲'
    case 'country': return '国家'
    case 'region': return '地区'
    default: return '地点'
  }
}

function getSubLocationTypeName(): string {
  if (!location.value) return ''
  if (location.value.type === 'continent') return '国家'
  if (location.value.type === 'country') return '地区'
  return ''
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ location?.name || '地区详情' }}</div>
        </div>
        <button class="home-btn" @click="goHome">🏠</button>
      </div>
    </div>

    <div class="content" v-if="location">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span v-if="isCountryType && countryCode" :class="['fi', 'fi-' + countryCode]" style="font-size: 64px;"></span>
          <span v-else style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">基本信息</div>
        <div class="detail-text">
          <p><strong>类型:</strong> {{ getLocationTypeName(location.type) }}</p>
          <p v-if="parentLocation">
            <strong>所属:</strong>
            <span
              class="tag"
              style="cursor: pointer;"
              @click="goToLocation(parentLocation.id)"
            >
              {{ parentLocation.name }}
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
            <div class="list-card-title">{{ sub.name }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 起源作物 -->
      <div class="detail-section" v-if="origins.crops.length > 0">
        <div class="detail-section-title">起源作物 ({{ origins.crops.length }})</div>
        <div
          v-for="crop in origins.crops"
          :key="crop.id"
          class="list-card"
          @click="goToCrop(crop.id)"
        >
          <div class="list-card-icon">{{ getCropIcon(crop.id, crop.category) }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ crop.name }}</div>
            <div class="list-card-subtitle">{{ crop.origin.time.display }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 起源食物 -->
      <div class="detail-section" v-if="origins.foods.length > 0">
        <div class="detail-section-title">起源食物 ({{ origins.foods.length }})</div>
        <div
          v-for="food in origins.foods"
          :key="food.id"
          class="list-card"
          @click="goToFood(food.id)"
        >
          <div class="list-card-icon">{{ foodIcons[food.category] || '🍽️' }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ food.name }}</div>
            <div class="list-card-subtitle">{{ food.origin.time.display }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 空状态 -->
      <div
        v-if="subLocations.length === 0 && origins.crops.length === 0 && origins.foods.length === 0"
        class="empty-state"
      >
        <div class="empty-icon">📭</div>
        <div>暂无相关数据</div>
      </div>
    </div>

    <div v-else class="content">
      <div class="empty-state">
        <div class="empty-icon">❓</div>
        <div>未找到该地区</div>
      </div>
    </div>
  </div>
</template>
