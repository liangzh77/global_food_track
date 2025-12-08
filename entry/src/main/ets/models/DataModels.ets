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

// ============ 时间线相关类型 ============

// 时代定义
export interface Era {
  id: string;
  name: string;
  icon: string;
  startYear: number;
  endYear: number;
  description: string;
}

// 时间线事件类型
export type TimelineEventType = 'origin' | 'spread';

// 时间线实体类型
export type TimelineEntityType = 'crop' | 'food';

// 时间线事件
export class TimelineEvent {
  id: string = '';
  entityId: string = '';
  entityType: TimelineEntityType = 'crop';
  eventType: TimelineEventType = 'origin';
  year: number = 0;
  displayTime: string = '';
  name: string = '';
  description: string = '';
  location?: string;
  locationId?: string;
  fromLocation?: string;
  fromLocationId?: string;
  toLocation?: string;
  toLocationId?: string;
  via?: string;

  constructor(init?: Partial<TimelineEvent>) {
    if (init) {
      Object.assign(this, init);
    }
  }
}

// 时间线筛选条件
export class TimelineFilter {
  entityType: 'all' | 'crop' | 'food' = 'all';
  eventType: 'all' | 'origin' | 'spread' = 'all';
  keyword: string = '';
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
];

// 获取事件类型名称
export function getEventTypeName(eventType: TimelineEventType): string {
  return eventType === 'origin' ? '起源' : '传播';
}

// 获取实体类型名称
export function getTimelineEntityTypeName(entityType: TimelineEntityType): string {
  return entityType === 'crop' ? '作物' : '食物';
}

// 获取事件颜色
export function getEventColor(entityType: TimelineEntityType, eventType: TimelineEventType): string {
  if (entityType === 'crop') {
    return eventType === 'origin' ? '#4CAF50' : '#2196F3';
  } else {
    return eventType === 'origin' ? '#FF9800' : '#9C27B0';
  }
}
