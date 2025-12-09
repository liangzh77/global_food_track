<template>
  <div class="era-detail-page">
    <!-- 头部 -->
    <header class="header">
      <div class="header-nav">
        <div class="header-back">
          <button class="back-btn" @click="goBack">←</button>
          <div class="header-title">{{ era?.name || t(ui.tabs.timeline) }}</div>
        </div>
        <div class="header-right">
          <button class="home-btn" @click="goHome">⌂</button>
          <button class="lang-toggle-header" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
        </div>
      </div>
      <div class="header-content">
        <span class="era-icon">{{ era?.icon }}</span>
        <div>
          <p class="era-years">{{ eraYearRange }}</p>
          <p class="era-desc">{{ era?.description }}</p>
        </div>
      </div>
    </header>

    <!-- 筛选栏 -->
    <div class="filter-bar">
      <div class="filter-group">
        <button
          :class="['filter-btn', { active: filter.entityType === 'all' }]"
          @click="filter.entityType = 'all'"
        >{{ t(ui.filters.all) }}</button>
        <button
          :class="['filter-btn', { active: filter.entityType === 'crop' }]"
          @click="filter.entityType = 'crop'"
        >{{ t(ui.filters.crop) }}</button>
        <button
          :class="['filter-btn', { active: filter.entityType === 'food' }]"
          @click="filter.entityType = 'food'"
        >{{ t(ui.filters.food) }}</button>
      </div>
      <div class="filter-group">
        <button
          :class="['filter-btn', { active: filter.eventType === 'all' }]"
          @click="filter.eventType = 'all'"
        >{{ t(ui.filters.all) }}</button>
        <button
          :class="['filter-btn', { active: filter.eventType === 'origin' }]"
          @click="filter.eventType = 'origin'"
        >{{ t(ui.labels.origin) }}</button>
        <button
          :class="['filter-btn', { active: filter.eventType === 'spread' }]"
          @click="filter.eventType = 'spread'"
        >{{ t(ui.labels.spread) }}</button>
      </div>
    </div>

    <!-- 搜索框 -->
    <div class="search-bar">
      <input
        v-model="filter.keyword"
        type="text"
        :placeholder="t(ui.placeholders.searchCropsFoodsPlaces)"
        class="search-input"
      />
    </div>

    <!-- 统计信息 -->
    <div class="stats-bar">
      <span>{{ currentLang === 'en' ? `Total ${filteredEvents.length} events` : `共 ${filteredEvents.length} 个事件` }}</span>
      <div class="stats-detail">
        <span v-if="stats.cropOrigin" class="stat crop-origin">{{ stats.cropOrigin }}{{ currentLang === 'en' ? ' Crop Origins' : '作物起源' }}</span>
        <span v-if="stats.cropSpread" class="stat crop-spread">{{ stats.cropSpread }}{{ currentLang === 'en' ? ' Crop Spreads' : '作物传播' }}</span>
        <span v-if="stats.foodOrigin" class="stat food-origin">{{ stats.foodOrigin }}{{ currentLang === 'en' ? ' Food Origins' : '食物起源' }}</span>
        <span v-if="stats.foodSpread" class="stat food-spread">{{ stats.foodSpread }}{{ currentLang === 'en' ? ' Food Spreads' : '食物传播' }}</span>
      </div>
    </div>

    <!-- 时间轴 -->
    <div class="timeline-container">
      <div class="timeline">
        <template v-for="(events, year) in groupedEvents" :key="year">
          <div class="year-marker">
            <span class="year-label">{{ formatYear(Number(year)) }}</span>
          </div>
          <div
            v-for="event in events"
            :key="event.id"
            class="event-item"
            :class="`${event.entityType}-${event.eventType}`"
            @click="showEventDetail(event)"
          >
            <div class="event-dot"></div>
            <div class="event-content">
              <div class="event-header">
                <span class="event-name">{{ getEventName(event) }}</span>
                <span class="event-type-badge">{{ getEventTypeLabel(event) }}</span>
              </div>
              <div class="event-location">
                <template v-if="event.eventType === 'origin'">
                  📍 {{ getEventLocation(event) }}
                </template>
                <template v-else>
                  {{ getEventFromLocation(event) }} → {{ getEventToLocation(event) }}
                  <span v-if="getEventVia(event)" class="event-via">（{{ getEventVia(event) }}）</span>
                </template>
              </div>
            </div>
          </div>
        </template>

        <div v-if="filteredEvents.length === 0" class="empty-state">
          <p>{{ t(ui.empty.noEvents) }}</p>
        </div>
      </div>
    </div>

    <!-- 事件详情弹窗 -->
    <div v-if="selectedEvent" class="modal-overlay" @click="closeEventDetail">
      <div class="modal-content" @click.stop>
        <!-- 顶部操作栏：语言切换居中，关闭按钮靠右 -->
        <div class="modal-toolbar">
          <div class="toolbar-spacer"></div>
          <button class="modal-lang-toggle" @click="toggleLanguage">
            {{ currentLang === 'zh' ? 'EN' : '中文' }}
          </button>
          <button class="modal-close-btn" @click="closeEventDetail">×</button>
        </div>

        <div class="modal-header" :class="`${selectedEvent.entityType}-${selectedEvent.eventType}`">
          <span class="modal-badge">{{ getEventTypeLabel(selectedEvent) }}</span>
          <h2>{{ getEventName(selectedEvent) }}</h2>
          <p class="modal-time">{{ getEventDisplayTime(selectedEvent) }}</p>
        </div>

        <div class="modal-body">
          <!-- 起源事件 -->
          <template v-if="selectedEvent.eventType === 'origin'">
            <div class="detail-row">
              <span class="detail-label">{{ t(ui.labels.originLocation) }}</span>
              <span
                class="detail-value clickable"
                @click="goToLocation(selectedEvent.locationId)"
              >
                📍 {{ getEventLocation(selectedEvent) }}
              </span>
            </div>
          </template>

          <!-- 传播事件 -->
          <template v-else>
            <div class="detail-row">
              <span class="detail-label">{{ t(ui.labels.spreadRoute) }}</span>
              <span class="detail-value">
                <span class="clickable" @click="goToLocation(selectedEvent.fromLocationId)">
                  {{ getEventFromLocation(selectedEvent) }}
                </span>
                →
                <span class="clickable" @click="goToLocation(selectedEvent.toLocationId)">
                  {{ getEventToLocation(selectedEvent) }}
                </span>
              </span>
            </div>
            <div v-if="getEventVia(selectedEvent)" class="detail-row">
              <span class="detail-label">{{ t(ui.labels.spreadMethod) }}</span>
              <span class="detail-value">{{ getEventVia(selectedEvent) }}</span>
            </div>
          </template>

          <div class="detail-row">
            <span class="detail-label">{{ t(ui.labels.description) }}</span>
            <p class="detail-description">{{ getEventDescription(selectedEvent) }}</p>
          </div>
        </div>

        <div class="modal-footer">
          <button class="detail-btn" @click="goToEntityDetail">
            {{ getDetailButtonText() }}
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, reactive } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { timelineService } from '@/services/timelineService'
import { languageService, currentLang } from '@/services/languageService'
import type { TimelineEvent, TimelineFilter } from '@/types'

const route = useRoute()
const router = useRouter()

// UI 文本
const ui = computed(() => languageService.ui)
const t = (textObj: any) => languageService.t(textObj)

// 获取时代ID
const eraId = computed(() => route.params.eraId as string)

// 获取时代信息（本地化）
const eras = computed(() => languageService.getEras())
const era = computed(() => eras.value.find(e => e.id === eraId.value))
const eraYearRange = computed(() => era.value ? timelineService.getEraYearRange(era.value as any) : '')

// 筛选条件
const filter = reactive<TimelineFilter>({
  entityType: 'all',
  eventType: 'all',
  keyword: ''
})

// 获取该时代的所有事件
const eraEvents = computed(() => timelineService.getEventsByEra(eraId.value))

// 筛选后的事件
const filteredEvents = computed(() =>
  timelineService.filterEvents(eraEvents.value, filter)
)

// 按年份分组
const groupedEvents = computed(() => {
  const grouped: Record<number, TimelineEvent[]> = {}
  filteredEvents.value.forEach(event => {
    if (!grouped[event.year]) {
      grouped[event.year] = []
    }
    grouped[event.year].push(event)
  })
  return grouped
})

// 统计信息
const stats = computed(() => timelineService.getEventStats(filteredEvents.value))

// 选中的事件（用于弹窗）
const selectedEvent = ref<TimelineEvent | null>(null)

// 格式化年份
function formatYear(year: number): string {
  return timelineService.formatYear(year)
}

// 获取事件类型标签
function getEventTypeLabel(event: TimelineEvent): string {
  const isEn = currentLang.value === 'en'
  const entityName = event.entityType === 'crop'
    ? (isEn ? 'Crop' : '作物')
    : (isEn ? 'Food' : '食物')
  const eventName = event.eventType === 'origin'
    ? (isEn ? ' Origin' : '起源')
    : (isEn ? ' Spread' : '传播')
  return `${entityName}${eventName}`
}

// 显示事件详情
function showEventDetail(event: TimelineEvent) {
  selectedEvent.value = event
}

// 关闭事件详情
function closeEventDetail() {
  selectedEvent.value = null
}

// 跳转到实体详情页
function goToEntityDetail() {
  if (!selectedEvent.value) return
  const path = selectedEvent.value.entityType === 'crop'
    ? `/crop/${selectedEvent.value.entityId}`
    : `/food/${selectedEvent.value.entityId}`
  router.push(path)
}

// 跳转到地点详情页
function goToLocation(locationId?: string) {
  if (!locationId) return
  router.push(`/location/${locationId}`)
}

// 返回上一页
function goBack() {
  router.back()
}

// 返回首页
function goHome() {
  router.push({ name: 'Home' })
}

// 切换语言
function toggleLanguage() {
  languageService.toggleLanguage()
}

// 获取详情按钮文本
function getDetailButtonText(): string {
  if (!selectedEvent.value) return ''
  const isEn = currentLang.value === 'en'
  const entityType = selectedEvent.value.entityType === 'crop'
    ? (isEn ? 'Crop' : '作物')
    : (isEn ? 'Food' : '食物')
  return isEn ? `View ${entityType} Details →` : `查看${entityType}详情 →`
}

// 本地化事件数据的辅助函数
function getEventName(event: any): string {
  return timelineService.getEventName(event)
}

function getEventDescription(event: any): string {
  return timelineService.getEventDescription(event)
}

function getEventDisplayTime(event: any): string {
  return timelineService.getEventDisplayTime(event)
}

function getEventLocation(event: any): string {
  return timelineService.getEventLocation(event)
}

function getEventFromLocation(event: any): string {
  return timelineService.getEventFromLocation(event)
}

function getEventToLocation(event: any): string {
  return timelineService.getEventToLocation(event)
}

function getEventVia(event: any): string | undefined {
  return timelineService.getEventVia(event)
}
</script>

<style scoped>
.era-detail-page {
  max-width: 480px;
  margin: 0 auto;
  min-height: 100vh;
  background-color: #f5f5f5;
  padding-bottom: 20px;
}

.header {
  background: linear-gradient(135deg, #2E7D32 0%, #4CAF50 100%);
  color: white;
  padding: 32px 16px 24px;
}

/* 使用全局样式: .header-nav, .header-back, .back-btn, .header-right, .home-btn, .lang-toggle-header */

.header-content {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-top: 12px;
}

.era-desc {
  margin: 4px 0 0;
  font-size: 13px;
  opacity: 0.85;
}

.era-icon {
  font-size: 40px;
}

.era-years {
  margin: 4px 0 0;
  font-size: 14px;
  opacity: 0.9;
}

.filter-bar {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  padding: 12px 16px;
  background: white;
  border-bottom: 1px solid #eee;
}

.filter-group {
  display: flex;
  gap: 4px;
  flex-wrap: wrap;
}

.filter-btn {
  padding: 6px 12px;
  border: 1px solid #ddd;
  border-radius: 16px;
  background: white;
  font-size: 13px;
  color: #666;
  cursor: pointer;
  transition: all 0.2s;
}

.filter-btn.active {
  background: #2E7D32;
  border-color: #2E7D32;
  color: white;
}

.search-bar {
  padding: 16px;
  background: white;
  border-bottom: 1px solid #eee;
  margin-top: 8px;
}

.search-input {
  width: 100%;
  padding: 10px 14px;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  font-size: 14px;
  box-sizing: border-box;
}

.search-input:focus {
  outline: none;
  border-color: #4CAF50;
}

.stats-bar {
  padding: 12px 16px;
  background: white;
  border-bottom: 1px solid #e0e0e0;
  font-size: 13px;
  color: #666;
}

.stats-detail {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin-top: 6px;
}

.stat {
  padding: 2px 8px;
  border-radius: 10px;
  font-size: 12px;
}

.stat.crop-origin { background: #E8F5E9; color: #2E7D32; }
.stat.crop-spread { background: #E3F2FD; color: #1565C0; }
.stat.food-origin { background: #FFF3E0; color: #E65100; }
.stat.food-spread { background: #F3E5F5; color: #7B1FA2; }

.timeline-container {
  padding: 16px;
}

.timeline {
  position: relative;
  padding-left: 24px;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 8px;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, #4CAF50, #81C784);
}

.year-marker {
  position: relative;
  margin: 20px 0 12px -24px;
  padding-left: 24px;
}

.year-label {
  display: inline-block;
  background: #2E7D32;
  color: white;
  padding: 4px 12px;
  border-radius: 12px;
  font-size: 13px;
  font-weight: 500;
}

.event-item {
  position: relative;
  background: white;
  border-radius: 10px;
  padding: 12px;
  margin-bottom: 10px;
  margin-left: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.08);
  cursor: pointer;
  transition: transform 0.2s, box-shadow 0.2s;
}

.event-item:hover {
  transform: translateX(4px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.12);
}

.event-dot {
  position: absolute;
  left: -20px;
  top: 16px;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  border: 2px solid white;
  box-shadow: 0 1px 3px rgba(0,0,0,0.2);
}

.event-item.crop-origin .event-dot { background: #4CAF50; }
.event-item.crop-spread .event-dot { background: #2196F3; }
.event-item.food-origin .event-dot { background: #FF9800; }
.event-item.food-spread .event-dot { background: #9C27B0; }

.event-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 6px;
}

.event-name {
  font-weight: 600;
  font-size: 15px;
  color: #333;
}

.event-type-badge {
  font-size: 11px;
  padding: 2px 8px;
  border-radius: 10px;
}

.event-item.crop-origin .event-type-badge { background: #E8F5E9; color: #2E7D32; }
.event-item.crop-spread .event-type-badge { background: #E3F2FD; color: #1565C0; }
.event-item.food-origin .event-type-badge { background: #FFF3E0; color: #E65100; }
.event-item.food-spread .event-type-badge { background: #F3E5F5; color: #7B1FA2; }

.event-location {
  font-size: 13px;
  color: #666;
}

.event-via {
  color: #999;
  font-size: 12px;
}

.empty-state {
  text-align: center;
  padding: 40px;
  color: #999;
}

/* 弹窗样式 */
.modal-overlay {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0,0,0,0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1000;
  padding: 20px;
}

.modal-content {
  background: white;
  border-radius: 16px;
  width: 100%;
  max-width: 400px;
  max-height: 80vh;
  overflow: auto;
  position: relative;
}

/* 弹窗顶部工具栏 */
.modal-toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
  background: #f5f5f5;
  border-radius: 16px 16px 0 0;
  border-bottom: 1px solid #e0e0e0;
}

.modal-lang-toggle {
  padding: 6px 14px;
  border: 1px solid #2E7D32;
  border-radius: 16px;
  background: white;
  color: #2E7D32;
  font-size: 13px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s;
}

.modal-lang-toggle:hover {
  background: #2E7D32;
  color: white;
}

.toolbar-spacer {
  width: 32px;
  height: 32px;
}

.modal-close-btn {
  width: 32px;
  height: 32px;
  border: none;
  background: #e0e0e0;
  border-radius: 50%;
  font-size: 20px;
  color: #666;
  cursor: pointer;
  transition: all 0.2s;
}

.modal-close-btn:hover {
  background: #d0d0d0;
  color: #333;
}

.modal-header {
  padding: 24px 20px;
  color: white;
}

.modal-header.crop-origin { background: linear-gradient(135deg, #388E3C, #4CAF50); }
.modal-header.crop-spread { background: linear-gradient(135deg, #1565C0, #2196F3); }
.modal-header.food-origin { background: linear-gradient(135deg, #E65100, #FF9800); }
.modal-header.food-spread { background: linear-gradient(135deg, #7B1FA2, #9C27B0); }

.modal-badge {
  display: inline-block;
  background: rgba(255,255,255,0.2);
  padding: 4px 10px;
  border-radius: 12px;
  font-size: 12px;
  margin-bottom: 8px;
}

.modal-header h2 {
  margin: 0;
  font-size: 22px;
}

.modal-time {
  margin: 6px 0 0;
  opacity: 0.9;
  font-size: 14px;
}

.modal-body {
  padding: 20px;
}

.detail-row {
  margin-bottom: 16px;
}

.detail-label {
  display: block;
  font-size: 12px;
  color: #999;
  margin-bottom: 4px;
}

.detail-value {
  font-size: 15px;
  color: #333;
}

.detail-value.clickable,
.clickable {
  color: #2E7D32;
  cursor: pointer;
}

.clickable:hover {
  text-decoration: underline;
}

.detail-description {
  margin: 0;
  font-size: 14px;
  color: #666;
  line-height: 1.6;
}

.modal-footer {
  padding: 0 20px 20px;
}

.detail-btn {
  width: 100%;
  padding: 12px;
  background: #2E7D32;
  color: white;
  border: none;
  border-radius: 8px;
  font-size: 15px;
  font-weight: 500;
  cursor: pointer;
  transition: background 0.2s;
}

.detail-btn:hover {
  background: #1B5E20;
}
</style>
