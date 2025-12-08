<script setup lang="ts">
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { dataService } from '@/services/dataService'
import { foodIcons, foodCategoryNames, cropIcons } from '@/types'

const route = useRoute()
const router = useRouter()

const foodId = computed(() => route.params.id as string)
const food = computed(() => dataService.getFoodById(foodId.value))

const categoryName = computed(() => {
  if (!food.value) return ''
  return foodCategoryNames[food.value.category] || food.value.category
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
  return dataService.getLocationName(locationId)
}

function goToCrop(cropId: string) {
  router.push({ name: 'CropDetail', params: { id: cropId } })
}

function goToLocation(locationId: string) {
  router.push({ name: 'LocationDetail', params: { id: locationId } })
}
</script>

<template>
  <div class="container">
    <!-- 头部 -->
    <div class="header">
      <div class="header-back">
        <button class="back-btn" @click="goBack">←</button>
        <div class="header-title">{{ food?.name || '食物详情' }}</div>
      </div>
    </div>

    <div class="content" v-if="food">
      <!-- 基本信息 -->
      <div class="detail-section">
        <div style="text-align: center; margin-bottom: 16px;">
          <span style="font-size: 64px;">{{ icon }}</span>
        </div>
        <div class="detail-section-title">基本信息</div>
        <div class="detail-text">
          <p><strong>类别:</strong> {{ categoryName }}</p>
          <p v-if="food.alias?.length"><strong>别名:</strong> {{ food.alias.join('、') }}</p>
        </div>
      </div>

      <!-- 简介 -->
      <div class="detail-section">
        <div class="detail-section-title">简介</div>
        <div class="detail-text">{{ food.description }}</div>
      </div>

      <!-- 起源 -->
      <div class="detail-section">
        <div class="detail-section-title">起源</div>
        <div class="detail-text">
          <p>
            <span
              class="tag"
              style="cursor: pointer;"
              @click="goToLocation(food.origin.location)"
            >
              📍 {{ getLocationName(food.origin.location) }}
            </span>
            <span class="tag">🕐 {{ food.origin.time.display }}</span>
          </p>
        </div>
      </div>

      <!-- 主要原料 -->
      <div class="detail-section" v-if="ingredientCrops.length > 0">
        <div class="detail-section-title">主要原料</div>
        <div
          v-for="crop in ingredientCrops"
          :key="crop!.id"
          class="list-card"
          @click="goToCrop(crop!.id)"
        >
          <div class="list-card-icon">{{ cropIcons[crop!.category] || '🌱' }}</div>
          <div class="list-card-content">
            <div class="list-card-title">{{ crop!.name }}</div>
          </div>
          <div class="list-card-arrow">›</div>
        </div>
      </div>

      <!-- 传播路线 -->
      <div class="detail-section" v-if="food.spreads.length > 0">
        <div class="detail-section-title">传播路线</div>
        <div class="spread-item" v-for="(spread, index) in food.spreads" :key="index">
          <span>{{ getLocationName(spread.from) }}</span>
          <span class="spread-arrow">→</span>
          <span>{{ getLocationName(spread.to) }}</span>
          <span class="spread-time">{{ spread.time.display }}</span>
          <span v-if="spread.via" class="spread-via">({{ spread.via }})</span>
        </div>
      </div>

      <!-- 当前流行地区 -->
      <div class="detail-section" v-if="food.currentRegions.length > 0">
        <div class="detail-section-title">当前流行地区</div>
        <div>
          <span
            v-for="region in food.currentRegions"
            :key="region"
            class="tag"
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
        <div>未找到该食物</div>
      </div>
    </div>
  </div>
</template>
