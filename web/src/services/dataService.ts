import type { Crop, Food, Location, CropCategory, FoodCategory, SearchResultItem, EntityType } from '@/types'
import { cropCategoryNames, foodCategoryNames } from '@/types'

// 导入所有数据
import grainsData from '@data/entities/crops/grains.json'
import vegetablesData from '@data/entities/crops/vegetables.json'
import fruitsData from '@data/entities/crops/fruits.json'
import legumesAndNutsData from '@data/entities/crops/legumes-and-nuts.json'
import beveragesAndSpicesData from '@data/entities/crops/beverages-and-spices.json'

import staplesData from '@data/entities/foods/staples.json'
import dishesData from '@data/entities/foods/dishes.json'
import beveragesFoodData from '@data/entities/foods/beverages.json'
import condimentsData from '@data/entities/foods/condiments-and-others.json'

import continentsData from '@data/entities/locations/continents.json'
import countriesData from '@data/entities/locations/countries.json'
import regionsData from '@data/entities/locations/regions.json'

import originByLocationData from '@data/relations/origin-by-location.json'

class DataService {
  private crops: Crop[] = []
  private foods: Food[] = []
  private locations: Location[] = []
  private originByLocation: Record<string, { crops: string[], foods: string[] }> = {}

  constructor() {
    this.loadData()
  }

  private loadData() {
    // 加载作物数据
    this.crops = [
      ...(grainsData.crops as Crop[]),
      ...(vegetablesData.crops as Crop[]),
      ...(fruitsData.crops as Crop[]),
      ...(legumesAndNutsData.crops as Crop[]),
      ...(beveragesAndSpicesData.crops as Crop[])
    ]

    // 加载食物数据
    this.foods = [
      ...(staplesData.foods as Food[]),
      ...(dishesData.foods as Food[]),
      ...(beveragesFoodData.foods as Food[]),
      ...(condimentsData.foods as Food[])
    ]

    // 加载地点数据
    this.locations = [
      ...(continentsData.locations as Location[]),
      ...(countriesData.locations as Location[]),
      ...(regionsData.locations as Location[])
    ]

    // 加载关系数据 (过滤掉 _description 字段)
    const { _description, ...origins } = originByLocationData as Record<string, any>
    this.originByLocation = origins as Record<string, { crops: string[], foods: string[] }>
  }

  // 获取所有作物
  getAllCrops(): Crop[] {
    return this.crops
  }

  // 获取所有食物
  getAllFoods(): Food[] {
    return this.foods
  }

  // 获取所有地点
  getAllLocations(): Location[] {
    return this.locations
  }

  // 按类别获取作物
  getCropsByCategory(category: CropCategory): Crop[] {
    return this.crops.filter(c => c.category === category)
  }

  // 按类别获取食物
  getFoodsByCategory(category: FoodCategory): Food[] {
    return this.foods.filter(f => f.category === category)
  }

  // 获取单个作物
  getCropById(id: string): Crop | undefined {
    return this.crops.find(c => c.id === id)
  }

  // 获取单个食物
  getFoodById(id: string): Food | undefined {
    return this.foods.find(f => f.id === id)
  }

  // 获取单个地点
  getLocationById(id: string): Location | undefined {
    return this.locations.find(l => l.id === id)
  }

  // 获取所有大洲
  getContinents(): Location[] {
    return this.locations.filter(l => l.type === 'continent')
  }

  // 获取某大洲下的国家
  getCountriesByContinent(continentId: string): Location[] {
    return this.locations.filter(l => l.type === 'country' && l.parent === continentId)
  }

  // 获取某国家下的地区
  getRegionsByCountry(countryId: string): Location[] {
    return this.locations.filter(l => l.type === 'region' && l.parent === countryId)
  }

  // 获取某地点的起源作物和食物
  getOriginsByLocation(locationId: string): { crops: Crop[], foods: Food[] } {
    const originData = this.originByLocation[locationId]
    if (!originData) {
      return { crops: [], foods: [] }
    }

    const crops = originData.crops
      .map(id => this.getCropById(id))
      .filter((c): c is Crop => c !== undefined)

    const foods = originData.foods
      .map(id => this.getFoodById(id))
      .filter((f): f is Food => f !== undefined)

    return { crops, foods }
  }

  // 搜索
  search(keyword: string): SearchResultItem[] {
    const lowerKeyword = keyword.toLowerCase()
    const results: SearchResultItem[] = []

    // 搜索作物
    this.crops.forEach(crop => {
      if (
        crop.name.toLowerCase().includes(lowerKeyword) ||
        crop.alias?.some(a => a.toLowerCase().includes(lowerKeyword)) ||
        crop.id.toLowerCase().includes(lowerKeyword)
      ) {
        results.push({
          id: crop.id,
          name: crop.name,
          type: 'crop' as EntityType,
          subtitle: cropCategoryNames[crop.category]
        })
      }
    })

    // 搜索食物
    this.foods.forEach(food => {
      if (
        food.name.toLowerCase().includes(lowerKeyword) ||
        food.alias?.some(a => a.toLowerCase().includes(lowerKeyword)) ||
        food.id.toLowerCase().includes(lowerKeyword)
      ) {
        results.push({
          id: food.id,
          name: food.name,
          type: 'food' as EntityType,
          subtitle: foodCategoryNames[food.category]
        })
      }
    })

    // 搜索地点
    this.locations.forEach(location => {
      if (
        location.name.toLowerCase().includes(lowerKeyword) ||
        location.id.toLowerCase().includes(lowerKeyword)
      ) {
        results.push({
          id: location.id,
          name: location.name,
          type: 'location' as EntityType,
          subtitle: location.type === 'continent' ? '大洲' : location.type === 'country' ? '国家' : '地区'
        })
      }
    })

    return results
  }

  // 备用地点名称映射（用于数据库中没有的地点）
  private locationNameFallback: Record<string, string> = {
    'ireland': '爱尔兰',
    'mediterranean': '地中海地区',
    'mediterranean-region': '地中海地区',
    'andes': '安第斯山区',
    'andes-region': '安第斯山区',
    'central-asia': '中亚',
    'southeast-asia': '东南亚',
    'east-africa': '东非',
    'west-africa': '西非',
    'north-africa': '北非',
    'central-america': '中美洲',
    'caribbean': '加勒比地区',
    'arabia': '阿拉伯半岛',
    'mesopotamia': '美索不达米亚',
    'fertile-crescent': '新月沃土',
    'levant': '黎凡特',
    'anatolia': '安纳托利亚',
    'persia': '波斯',
    'bengal': '孟加拉',
    'malabar': '马拉巴尔海岸',
    'ceylon': '锡兰',
    'java': '爪哇',
    'sumatra': '苏门答腊',
    'polynesia': '波利尼西亚',
    'melanesia': '美拉尼西亚',
    'scandinavia': '斯堪的纳维亚',
    'iberia': '伊比利亚半岛',
    'balkans': '巴尔干半岛',
    'caucasus': '高加索',
    'siberia': '西伯利亚',
    'manchuria': '满洲',
    'tibet': '西藏',
    'mongolia': '蒙古',
    'korea': '朝鲜半岛',
    'indochina': '中南半岛',
    'malay-peninsula': '马来半岛',
    'philippines-region': '菲律宾群岛',
    'new-world': '新大陆',
    'old-world': '旧大陆'
  }

  // 获取地点名称
  getLocationName(locationId: string): string {
    const location = this.getLocationById(locationId)
    if (location) {
      return location.name
    }
    return this.locationNameFallback[locationId] || locationId
  }

  // 根据作物ID获取使用该作物的食物
  getFoodsByCropId(cropId: string): Food[] {
    return this.foods.filter(f => f.ingredients.includes(cropId))
  }
}

export const dataService = new DataService()
