<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { cropCategoryNames, getCropIcon } from '@/types'

const route = useRoute()
const router = useRouter()

const cropId = computed(() => route.params.id as string)
const crop = computed(() => dataService.getCropById(cropId.value))

const categoryName = computed(() => {
  if (!crop.value) return ''
  return cropCategoryNames[crop.value.category] || crop.value.category
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

function hasLocationDetail(locationId: string): boolean {
  return dataService.getLocationById(locationId) !== undefined
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ crop?.name || '作物详情' }}</div>
        </div>
        <button class="home-btn" @click="goHome">🏠</button>
      </div>
    </div>

    <div class="content" v-if="crop">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">基本信息</div>
        <div class="detail-text">
          <p><strong>类别:</strong> {{ categoryName }}</p>
          <p v-if="crop.alias?.length"><strong>别名:</strong> {{ crop.alias.join('、') }}</p>
        </div>
      </div>

      <!-- 简介 -->
      <div class="detail-section">
        <div class="detail-section-title">简介</div>
        <div class="detail-text">{{ crop.description }}</div>
      </div>

      <!-- 起源 -->
      <div class="detail-section">
        <div class="detail-section-title">起源</div>
        <div>
          <span
            class="tag-lg"
            style="cursor: pointer;"
            @click="goToLocation(crop.origin.location)"
          >
            📍 {{ getLocationName(crop.origin.location) }}
          </span>
          <span class="tag-lg">🕐 {{ crop.origin.time.display }}</span>
        </div>
      </div>

      <!-- 传播路线 -->
      <div class="detail-section" v-if="crop.spreads.length > 0">
        <div class="detail-section-title">传播路线</div>
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
          <span class="spread-time">{{ spread.time.display }}</span>
          <span v-if="spread.via" class="spread-via">({{ spread.via }})</span>
        </div>
      </div>

      <!-- 当前主产区 -->
      <div class="detail-section" v-if="crop.currentRegions.length > 0">
        <div class="detail-section-title">当前主产区</div>
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
        <div class="detail-section-title">相关食物</div>
        <div
          v-for="food in relatedFoods"
          :key="food.id"
          class="list-card"
          @click="goToFood(food.id)"
        >
          <div class="list-card-icon">🍽️</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ food.name }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>
    </div>

    <div v-else class="content">
      <div class="empty-state">
        <div class="empty-icon">❓</div>
        <div>未找到该作物</div>
      </div>
    </div>
  </div>
</template>
