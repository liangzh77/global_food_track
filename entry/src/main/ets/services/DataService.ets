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

  // 搜索
  search(keyword: string): SearchResultItem[] {
    const results: SearchResultItem[] = [];
    const lowerKeyword = keyword.toLowerCase();

    // 搜索作物
    this.crops.forEach((crop: Crop, id: string) => {
      if (this.matchKeyword(crop.name, crop.alias || [], lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: crop.name,
          type: 'crop',
          subtitle: getCropCategoryName(crop.category)
        };
        results.push(item);
      }
    });

    // 搜索食物
    this.foods.forEach((food: Food, id: string) => {
      if (this.matchKeyword(food.name, food.alias || [], lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: food.name,
          type: 'food',
          subtitle: getFoodCategoryName(food.category)
        };
        results.push(item);
      }
    });

    // 搜索地点
    this.locations.forEach((loc: Location, id: string) => {
      if (loc.name.toLowerCase().includes(lowerKeyword)) {
        const item: SearchResultItem = {
          id: id,
          name: loc.name,
          type: 'location',
          subtitle: this.getLocationTypeText(loc.type)
        };
        results.push(item);
      }
    });

    return results;
  }

  private matchKeyword(name: string, aliases: string[], keyword: string): boolean {
    if (name.toLowerCase().includes(keyword)) return true;
    for (let i = 0; i < aliases.length; i++) {
      if (aliases[i].toLowerCase().includes(keyword)) {
        return true;
      }
    }
    return false;
  }

  private getLocationTypeText(type: string): string {
    switch (type) {
      case 'continent': return '大洲';
      case 'country': return '国家';
      case 'region': return '地区';
      default: return '地点';
    }
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
