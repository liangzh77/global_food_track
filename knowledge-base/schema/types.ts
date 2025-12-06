/**
 * 食物全球史 - 知识库类型定义
 */

// ============ 基础类型 ============

/** 时间表示：可以是具体年份或模糊描述 */
export type TimePeriod = {
  /** 具体年份，负数表示公元前 */
  year?: number;
  /** 模糊描述，如 "公元前3000年左右"、"16世纪" */
  display: string;
};

/** 实体类别 */
export type EntityType = "crop" | "food";

// ============ 地理位置 ============

export type LocationType = "continent" | "country" | "region";

export interface Location {
  id: string;
  name: string;
  type: LocationType;
  /** 父级位置ID，大洲没有父级 */
  parent?: string;
}

// ============ 作物 ============

export type CropCategory =
  | "grain"       // 谷物：小麦、水稻、玉米
  | "vegetable"   // 蔬菜：番茄、土豆、胡萝卜
  | "fruit"       // 水果：苹果、香蕉、葡萄
  | "legume"      // 豆类：大豆、花生、豌豆
  | "spice"       // 香料：辣椒、胡椒、肉桂
  | "beverage"    // 饮料作物：茶、咖啡、可可
  | "oil"         // 油料作物：橄榄、芝麻、油菜
  | "sugar"       // 糖料作物：甘蔗、甜菜
  | "nut";        // 坚果：核桃、杏仁、腰果

/** 传播事件 */
export interface SpreadEvent {
  /** 起始地点ID */
  from: string;
  /** 目标地点ID */
  to: string;
  /** 时间 */
  time: TimePeriod;
  /** 传播途径或历史背景（可选） */
  via?: string;
}

/** 作物实体 */
export interface Crop {
  id: string;
  name: string;
  /** 别名 */
  alias?: string[];
  category: CropCategory;
  /** 起源信息 */
  origin: {
    location: string;
    time: TimePeriod;
  };
  /** 传播历史 */
  spreads: SpreadEvent[];
  /** 当前主要产地/流行地区 */
  currentRegions: string[];
  /** 简介 */
  description: string;
}

// ============ 食物 ============

export type FoodCategory =
  | "staple"      // 主食：面包、米饭、面条
  | "dish"        // 菜肴：披萨、寿司、咖喱
  | "beverage"    // 饮品：啤酒、葡萄酒、茶饮
  | "dessert"     // 甜点：蛋糕、巧克力、冰淇淋
  | "snack"       // 小吃：薯条、爆米花
  | "condiment"   // 调味品：酱油、番茄酱、醋
  | "preserved";  // 腌制/加工食品：泡菜、腊肉、奶酪

/** 食物实体 */
export interface Food {
  id: string;
  name: string;
  alias?: string[];
  category: FoodCategory;
  /** 主要食材（作物ID列表） */
  ingredients: string[];
  /** 起源信息 */
  origin: {
    location: string;
    time: TimePeriod;
  };
  /** 传播历史 */
  spreads: SpreadEvent[];
  /** 当前流行地区 */
  currentRegions: string[];
  /** 简介 */
  description: string;
}

// ============ 索引类型（用于快速查询） ============

/** 按地点索引的起源数据 */
export interface OriginByLocationIndex {
  [locationId: string]: {
    crops: string[];
    foods: string[];
  };
}

/** 按类别索引 */
export interface ByCategoryIndex {
  crops: { [category in CropCategory]?: string[] };
  foods: { [category in FoodCategory]?: string[] };
}

/** 食材关系索引：作物 -> 使用它的食物 */
export interface IngredientIndex {
  [cropId: string]: string[];
}
