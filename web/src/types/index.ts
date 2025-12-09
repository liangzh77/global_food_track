// 时间表示
export interface TimePeriod {
  year?: number
  display: string
  displayEn?: string
}

// 地理位置类型
export type LocationType = 'continent' | 'country' | 'region'

// 地理位置
export interface Location {
  id: string
  name: string
  nameEn?: string
  type: LocationType
  parent?: string
}

// 作物类别
export type CropCategory =
  | 'grain'      // 谷物
  | 'vegetable'  // 蔬菜
  | 'fruit'      // 水果
  | 'legume'     // 豆类
  | 'spice'      // 香料
  | 'beverage'   // 饮料作物
  | 'oil'        // 油料作物
  | 'sugar'      // 糖料作物
  | 'nut'        // 坚果
  | 'other'      // 其他作物

// 食物类别
export type FoodCategory =
  | 'staple'     // 主食
  | 'dish'       // 菜肴
  | 'beverage'   // 饮品
  | 'dessert'    // 甜点
  | 'snack'      // 小吃
  | 'condiment'  // 调味品
  | 'preserved'  // 腌制食品

// 传播事件
export interface SpreadEvent {
  from: string
  to: string
  time: TimePeriod
  via?: string
  viaEn?: string
}

// 起源信息
export interface OriginInfo {
  location: string
  time: TimePeriod
}

// 作物
export interface Crop {
  id: string
  name: string
  nameEn?: string
  alias?: string[]
  aliasEn?: string[]
  category: CropCategory
  origin: OriginInfo
  spreads: SpreadEvent[]
  currentRegions: string[]
  description: string
  descriptionEn?: string
}

// 食物
export interface Food {
  id: string
  name: string
  nameEn?: string
  alias?: string[]
  aliasEn?: string[]
  category: FoodCategory
  ingredients: string[]
  origin: OriginInfo
  spreads: SpreadEvent[]
  currentRegions: string[]
  description: string
  descriptionEn?: string
}

// 实体类型
export type EntityType = 'crop' | 'food' | 'location'

// 搜索结果项
export interface SearchResultItem {
  id: string
  name: string
  type: EntityType
  subtitle: string
}

// 类别名称映射
export const cropCategoryNames: Record<CropCategory, string> = {
  grain: '谷物',
  vegetable: '蔬菜',
  fruit: '水果',
  legume: '豆类',
  spice: '香料',
  beverage: '饮料作物',
  oil: '油料作物',
  sugar: '糖料作物',
  nut: '坚果',
  other: '其他作物'
}

export const foodCategoryNames: Record<FoodCategory, string> = {
  staple: '主食',
  dish: '菜肴',
  beverage: '饮品',
  dessert: '甜点',
  snack: '小吃',
  condiment: '调味品',
  preserved: '腌制食品'
}

// 从共享数据文件导入图标
import cropsIconsData from '@data/icons/crops.json'
import foodsIconsData from '@data/icons/foods.json'
import locationsIconsData from '@data/icons/locations.json'

// 作物图标
export const cropIcons: Record<string, string> = cropsIconsData.icons
export const cropCategoryIcons: Record<string, string> = cropsIconsData.categoryIcons

// 食物图标
export const foodIcons: Record<string, string> = foodsIconsData.categoryIcons

// 地点图标
export const locationIcons: Record<string, string> = locationsIconsData.typeIcons
export const continentIcons: Record<string, string> = locationsIconsData.continentIcons
export const countryCodes: Record<string, string> = locationsIconsData.countryCodes

// 获取国家代码（用于 CSS 国旗图标）
export function getCountryCode(locationId: string): string | null {
  return countryCodes[locationId] || null
}

// 获取地点图标的辅助函数（用于非国家类型）
export function getLocationIcon(locationId: string, locationType: string): string {
  if (locationType === 'continent') {
    return continentIcons[locationId] || '🌍'
  }
  return '📍'
}

// 判断是否是国家
export function isCountry(locationType: string): boolean {
  return locationType === 'country'
}

// 获取作物图标的辅助函数
export function getCropIcon(cropId: string, category?: string): string {
  // 优先使用具体作物图标
  if (cropIcons[cropId]) {
    return cropIcons[cropId]
  }
  // 否则使用类别图标
  if (category && cropCategoryIcons[category]) {
    return cropCategoryIcons[category]
  }
  return '🌱'
}

// ============ 时间线相关类型 ============

// 时代定义
export interface Era {
  id: string
  name: string
  nameEn?: string
  icon: string
  startYear: number    // 负数表示公元前
  endYear: number
  description: string
  descriptionEn?: string
}

// 时间线事件类型
export type TimelineEventType = 'origin' | 'spread'

// 实体类型（仅作物和食物）
export type TimelineEntityType = 'crop' | 'food'

// 时间线事件
export interface TimelineEvent {
  id: string
  entityId: string           // 作物或食物的ID
  entityType: TimelineEntityType
  eventType: TimelineEventType
  year: number
  displayTime: string
  displayTimeEn?: string
  name: string               // 作物/食物名称
  nameEn?: string
  description: string        // 简介
  descriptionEn?: string
  // 起源事件
  location?: string          // 地点名称
  locationEn?: string
  locationId?: string        // 地点ID
  // 传播事件
  fromLocation?: string
  fromLocationEn?: string
  fromLocationId?: string
  toLocation?: string
  toLocationEn?: string
  toLocationId?: string
  via?: string               // 传播途径
  viaEn?: string
}

// 时间线筛选条件
export interface TimelineFilter {
  entityType: 'all' | 'crop' | 'food'
  eventType: 'all' | 'origin' | 'spread'
  keyword: string
}

// 预设时代列表
export const ERAS: Era[] = [
  {
    id: 'prehistoric',
    name: '史前时代',
    icon: '🌾',
    startYear: -10000,
    endYear: -5000,
    description: '农业革命的开端，人类开始驯化作物'
  },
  {
    id: 'ancient',
    name: '古代文明',
    icon: '🏛️',
    startYear: -5000,
    endYear: -1000,
    description: '四大文明古国时期，农业技术传播'
  },
  {
    id: 'classical',
    name: '古典时期',
    icon: '⚔️',
    startYear: -1000,
    endYear: 500,
    description: '希腊罗马时代，丝绸之路开通'
  },
  {
    id: 'medieval',
    name: '中世纪',
    icon: '🏰',
    startYear: 500,
    endYear: 1500,
    description: '阿拉伯商人推动东西方交流'
  },
  {
    id: 'exploration',
    name: '大航海时代',
    icon: '⛵',
    startYear: 1500,
    endYear: 1800,
    description: '哥伦布大交换，新旧大陆作物互通'
  },
  {
    id: 'modern',
    name: '近现代',
    icon: '🏭',
    startYear: 1800,
    endYear: 2100,
    description: '工业革命后的全球化时代'
  }
]

// 时间线事件颜色
export const timelineEventColors: Record<string, string> = {
  'crop_origin': '#4CAF50',    // 绿色 - 作物起源
  'crop_spread': '#2196F3',    // 蓝色 - 作物传播
  'food_origin': '#FF9800',    // 橙色 - 食物起源
  'food_spread': '#9C27B0'     // 紫色 - 食物传播
}

// 获取事件颜色
export function getEventColor(entityType: TimelineEntityType, eventType: TimelineEventType): string {
  return timelineEventColors[`${entityType}_${eventType}`] || '#666'
}

// 获取事件类型名称
export function getEventTypeName(eventType: TimelineEventType): string {
  return eventType === 'origin' ? '起源' : '传播'
}

// 获取实体类型名称
export function getEntityTypeName(entityType: TimelineEntityType): string {
  return entityType === 'crop' ? '作物' : '食物'
}
