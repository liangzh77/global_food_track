/**
 * 食物全球史 - 数据模型定义
 */

// 时间表示
export interface TimePeriod {
  year?: number;
  display: string;
}

// 地理位置类型
export type LocationType = 'continent' | 'country' | 'region';

// 地理位置
export interface Location {
  id: string;
  name: string;
  type: LocationType;
  parent?: string;
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
  | 'other';     // 其他作物

// 食物类别
export type FoodCategory =
  | 'staple'     // 主食
  | 'dish'       // 菜肴
  | 'beverage'   // 饮品
  | 'dessert'    // 甜点
  | 'snack'      // 小吃
  | 'condiment'  // 调味品
  | 'preserved'; // 腌制食品

// 传播事件
export interface SpreadEvent {
  from: string;
  to: string;
  time: TimePeriod;
  via?: string;
}

// 起源信息
export interface OriginInfo {
  location: string;
  time: TimePeriod;
}

// 作物
export interface Crop {
  id: string;
  name: string;
  alias?: string[];
  category: CropCategory;
  origin: OriginInfo;
  spreads: SpreadEvent[];
  currentRegions: string[];
  description: string;
}

// 食物
export interface Food {
  id: string;
  name: string;
  alias?: string[];
  category: FoodCategory;
  ingredients: string[];
  origin: OriginInfo;
  spreads: SpreadEvent[];
  currentRegions: string[];
  description: string;
}

// 实体类型（用于统一处理）
export type EntityType = 'crop' | 'food' | 'location';

// 搜索结果项
export interface SearchResultItem {
  id: string;
  name: string;
  type: EntityType;
  subtitle: string;
}

// 起源地数据
export class OriginLocationData {
  crops: Crop[];
  foods: Food[];

  constructor(crops: Crop[], foods: Food[]) {
    this.crops = crops;
    this.foods = foods;
  }
}

// 类别名称获取函数
export function getCropCategoryName(category: CropCategory): string {
  switch (category) {
    case 'grain': return '谷物';
    case 'vegetable': return '蔬菜';
    case 'fruit': return '水果';
    case 'legume': return '豆类';
    case 'spice': return '香料';
    case 'beverage': return '饮料作物';
    case 'oil': return '油料作物';
    case 'sugar': return '糖料作物';
    case 'nut': return '坚果';
    case 'other': return '其他作物';
    default: return '';
  }
}

export function getFoodCategoryName(category: FoodCategory): string {
  switch (category) {
    case 'staple': return '主食';
    case 'dish': return '菜肴';
    case 'beverage': return '饮品';
    case 'dessert': return '甜点';
    case 'snack': return '小吃';
    case 'condiment': return '调味品';
    case 'preserved': return '腌制食品';
    default: return '';
  }
}
