/**
 * 食物全球史 - 数据服务
 * 负责加载和查询知识库数据
 */

import {
  Crop,
  Food,
  Location,
  CropCategory,
  FoodCategory,
  SearchResultItem,
  OriginLocationData,
  getCropCategoryName,
  getFoodCategoryName
} from '../models/DataModels';
import { languageService } from './LanguageService';

// 内嵌数据
import { CROPS_DATA } from '../data/CropsData';
import { FOODS_DATA } from '../data/FoodsData';
import { LOCATIONS_DATA } from '../data/LocationsData';
import { ORIGIN_BY_LOCATION, INGREDIENT_TO_FOODS } from '../data/RelationsData';

class DataService {
  private crops: Map<string, Crop> = new Map();
  private foods: Map<string, Food> = new Map();
  private locations: Map<string, Location> = new Map();
  private initialized: boolean = false;

  // 初始化数据
  init(): void {
    if (this.initialized) return;

    // 加载作物
    CROPS_DATA.forEach((crop: Crop) => {
      this.crops.set(crop.id, crop);
    });

    // 加载食物
    FOODS_DATA.forEach((food: Food) => {
      this.foods.set(food.id, food);
    });

    // 加载地点
    LOCATIONS_DATA.forEach((loc: Location) => {
      this.locations.set(loc.id, loc);
    });

    this.initialized = true;
  }

  // ========== 查询方法 ==========

  // 获取所有作物
  getAllCrops(): Crop[] {
    return Array.from(this.crops.values());
  }

  // 获取所有食物
  getAllFoods(): Food[] {
    return Array.from(this.foods.values());
  }

  // 获取所有地点
  getAllLocations(): Location[] {
    return Array.from(this.locations.values());
  }

  // 根据 ID 获取作物
  getCropById(id: string): Crop | undefined {
    return this.crops.get(id);
  }

  // 根据 ID 获取食物
  getFoodById(id: string): Food | undefined {
    return this.foods.get(id);
  }

  // 根据 ID 获取地点
  getLocationById(id: string): Location | undefined {
    return this.locations.get(id);
  }

  // 获取地点名称
  getLocationName(id: string): string {
    const loc = this.locations.get(id);
    return loc ? loc.name : id;
  }

  // 按类别获取作物
  getCropsByCategory(category: CropCategory): Crop[] {
    return this.getAllCrops().filter((c: Crop) => c.category === category);
  }

  // 按类别获取食物
  getFoodsByCategory(category: FoodCategory): Food[] {
    return this.getAllFoods().filter((f: Food) => f.category === category);
  }

  // 获取某地起源的作物和食物（包括子地区）
  getOriginsByLocation(locationId: string): OriginLocationData {
    const cropIds = new Set<string>();
    const foodIds = new Set<string>();

    // 递归收集该地区及所有子地区的起源数据
    this.collectOriginsRecursive(locationId, cropIds, foodIds);

    const crops: Crop[] = [];
    const foods: Food[] = [];

    cropIds.forEach((id: string) => {
      const crop = this.crops.get(id);
      if (crop) {
        crops.push(crop);
      }
    });

    foodIds.forEach((id: string) => {
      const food = this.foods.get(id);
      if (food) {
        foods.push(food);
      }
    });

    return new OriginLocationData(crops, foods);
  }

  // 递归收集起源数据
  private collectOriginsRecursive(locationId: string, cropIds: Set<string>, foodIds: Set<string>): void {
    // 获取当前地区的直接起源数据
    const data = ORIGIN_BY_LOCATION.get(locationId);
    if (data) {
      data.crops.forEach((id: string) => {
        cropIds.add(id);
      });
      data.foods.forEach((id: string) => {
        foodIds.add(id);
      });
    }

    // 递归处理所有子地区
    const children = this.getChildLocations(locationId);
    children.forEach((child: Location) => {
      this.collectOriginsRecursive(child.id, cropIds, foodIds);
    });
  }

  // 获取某地的直接子地区
  private getChildLocations(parentId: string): Location[] {
    return this.getAllLocations().filter((loc: Location) => loc.parent === parentId);
  }

  // 获取作物能制作的食物
  getFoodsByCrop(cropId: string): Food[] {
    const foodIds = INGREDIENT_TO_FOODS.get(cropId);
    if (!foodIds) {
      return [];
    }
    const result: Food[] = [];
    foodIds.forEach((id: string) => {
      const food = this.foods.get(id);
      if (food) {
        result.push(food);
      }
    });
    return result;
  }

  // 获取食物的原料作物
  getIngredientCrops(food: Food): Crop[] {
    const result: Crop[] = [];
    food.ingredients.forEach((id: string) => {
      const crop = this.crops.get(id);
      if (crop) {
        result.push(crop);
      }
    });
    return result;
  }

  // 搜索（支持中英文双语搜索）
  search(keyword: string): SearchResultItem[] {
    const results: SearchResultItem[] = [];
    const lowerKeyword = keyword.toLowerCase();

    // 搜索作物（中英文都搜索）
    this.crops.forEach((crop: Crop, id: string) => {
      if (this.matchCropKeyword(crop, lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: languageService.getName(crop as object),
          type: 'crop',
          subtitle: languageService.getCropCategoryName(crop.category)
        };
        results.push(item);
      }
    });

    // 搜索食物（中英文都搜索）
    this.foods.forEach((food: Food, id: string) => {
      if (this.matchFoodKeyword(food, lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: languageService.getName(food as object),
          type: 'food',
          subtitle: languageService.getFoodCategoryName(food.category)
        };
        results.push(item);
      }
    });

    // 搜索地点（中英文都搜索）
    this.locations.forEach((loc: Location, id: string) => {
      if (this.matchLocationKeyword(loc, lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: languageService.getName(loc as object),
          type: 'location',
          subtitle: languageService.getLocationTypeName(loc.type)
        };
        results.push(item);
      }
    });

    return results;
  }

  // 匹配作物关键词（中英文）
  private matchCropKeyword(crop: Crop, keyword: string): boolean {
    // 匹配中文名
    if (crop.name.toLowerCase().includes(keyword)) return true;
    // 匹配英文名
    if (crop.nameEn && crop.nameEn.toLowerCase().includes(keyword)) return true;
    // 匹配中文别名
    if (crop.alias) {
      for (let i = 0; i < crop.alias.length; i++) {
        if (crop.alias[i].toLowerCase().includes(keyword)) return true;
      }
    }
    // 匹配英文别名
    if (crop.aliasEn) {
      for (let i = 0; i < crop.aliasEn.length; i++) {
        if (crop.aliasEn[i].toLowerCase().includes(keyword)) return true;
      }
    }
    return false;
  }

  // 匹配食物关键词（中英文）
  private matchFoodKeyword(food: Food, keyword: string): boolean {
    // 匹配中文名
    if (food.name.toLowerCase().includes(keyword)) return true;
    // 匹配英文名
    if (food.nameEn && food.nameEn.toLowerCase().includes(keyword)) return true;
    // 匹配中文别名
    if (food.alias) {
      for (let i = 0; i < food.alias.length; i++) {
        if (food.alias[i].toLowerCase().includes(keyword)) return true;
      }
    }
    // 匹配英文别名
    if (food.aliasEn) {
      for (let i = 0; i < food.aliasEn.length; i++) {
        if (food.aliasEn[i].toLowerCase().includes(keyword)) return true;
      }
    }
    return false;
  }

  // 匹配地点关键词（中英文）
  private matchLocationKeyword(loc: Location, keyword: string): boolean {
    if (loc.name.toLowerCase().includes(keyword)) return true;
    if (loc.nameEn && loc.nameEn.toLowerCase().includes(keyword)) return true;
    return false;
  }

  // 获取某大洲下的所有国家
  getCountriesByContinent(continentId: string): Location[] {
    return this.getAllLocations().filter(
      (loc: Location) => loc.type === 'country' && loc.parent === continentId
    );
  }

  // 获取某国家/地区下的子地区
  getSubRegions(parentId: string): Location[] {
    return this.getAllLocations().filter(
      (loc: Location) => loc.type === 'region' && loc.parent === parentId
    );
  }

  // 获取所有大洲
  getContinents(): Location[] {
    return this.getAllLocations().filter((loc: Location) => loc.type === 'continent');
  }
}

// 导出单例
export const dataService = new DataService();
