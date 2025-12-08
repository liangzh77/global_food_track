// 时间表示
export interface TimePeriod {
  year?: number
  display: string
}

// 地理位置类型
export type LocationType = 'continent' | 'country' | 'region'

// 地理位置
export interface Location {
  id: string
  name: string
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
  alias?: string[]
  category: CropCategory
  origin: OriginInfo
  spreads: SpreadEvent[]
  currentRegions: string[]
  description: string
}

// 食物
export interface Food {
  id: string
  name: string
  alias?: string[]
  category: FoodCategory
  ingredients: string[]
  origin: OriginInfo
  spreads: SpreadEvent[]
  currentRegions: string[]
  description: string
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
export const countryFlags: Record<string, string> = locationsIconsData.countryFlags

// 获取地点图标的辅助函数
export function getLocationIcon(locationId: string, locationType: string): string {
  if (locationType === 'country') {
    return countryFlags[locationId] || '🏳️'
  }
  if (locationType === 'continent') {
    return continentIcons[locationId] || '🌍'
  }
  return '📍'
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
