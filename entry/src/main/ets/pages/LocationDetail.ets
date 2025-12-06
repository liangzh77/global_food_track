/**
 * 食物全球史 - 地点详情页
 * 展示某地起源的作物和食物、子地区
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getLocationIcon } from '../common/Constants';
import { Location, Crop, Food, getCropCategoryName, getFoodCategoryName } from '../models/DataModels';

class LocationDetailParams {
  locationId: string = '';
}

class CropParams {
  cropId: string;

  constructor(cropId: string) {
    this.cropId = cropId;
  }
}

class FoodParams {
  foodId: string;

  constructor(foodId: string) {
    this.foodId = foodId;
  }
}

class LocationParams {
  locationId: string;

  constructor(locationId: string) {
    this.locationId = locationId;
  }
}

@Entry
@Component
struct LocationDetail {
  @State location: Location | null = null;
  @State originCrops: Crop[] = [];
  @State originFoods: Food[] = [];
  @State subLocations: Location[] = [];
  @State activeTab: number = 0;
  private locationId: string = '';

  aboutToAppear(): void {
    dataService.init();
    const params = router.getParams() as LocationDetailParams;
    this.locationId = params?.locationId || '';
    this.loadData();
  }

  loadData(): void {
    const location = dataService.getLocationById(this.locationId);
    if (location) {
      this.location = location;

      // 获取起源数据
      const origins = dataService.getOriginsByLocation(this.locationId);
      this.originCrops = origins.crops;
      this.originFoods = origins.foods;

      // 获取子地区
      if (location.type === 'continent') {
        this.subLocations = dataService.getCountriesByContinent(this.locationId);
      } else {
        this.subLocations = dataService.getSubRegions(this.locationId);
      }
    }
  }

  build() {
    Column() {
      if (this.location) {
        // 顶部导航
        this.NavBar()

        // 头部信息
        this.HeaderCard()

        // 标签切换
        this.TabBar()

        // 内容区
        Scroll() {
          Column() {
            if (this.activeTab === 0) {
              this.OriginCropsSection()
            } else if (this.activeTab === 1) {
              this.OriginFoodsSection()
            } else {
              this.SubLocationsSection()
            }
          }
          .width('100%')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_XL })
        }
        .layoutWeight(1)
        .scrollBar(BarState.Off)
      } else {
        Text('加载中...')
          .fontSize(Sizes.FONT_MD)
          .fontColor(Colors.TEXT_SECONDARY)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Colors.BACKGROUND)
  }

  @Builder
  NavBar() {
    Row() {
      Text(NavIcons.BACK)
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_PRIMARY)
        .padding(Sizes.SPACING_SM)
        .onClick(() => {
          router.back();
        })

      Text('地区详情')
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ left: Sizes.SPACING_SM })

      Blank()
    }
    .width('100%')
    .height(56)
    .padding({ left: Sizes.SPACING_SM, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
  }

  @Builder
  HeaderCard() {
    Column() {
      Row() {
        Text(getLocationIcon(this.location!.type))
          .fontSize(40)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.location!.name)
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          Text(this.getLocationTypeText())
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .opacity(0.8)
            .margin({ top: Sizes.SPACING_XS })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')

      // 统计信息
      Row() {
        this.StatItem(`${this.originCrops.length}`, '起源作物')
        this.StatItem(`${this.originFoods.length}`, '起源食物')
        this.StatItem(`${this.subLocations.length}`, this.getSubLocationLabel())
      }
      .width('100%')
      .margin({ top: Sizes.SPACING_LG })
      .justifyContent(FlexAlign.SpaceAround)
    }
    .width('100%')
    .padding(Sizes.SPACING_LG)
    .backgroundColor(Colors.PRIMARY)
  }

  @Builder
  StatItem(value: string, label: string) {
    Column() {
      Text(value)
        .fontSize(Sizes.FONT_XXL)
        .fontWeight(FontWeight.Bold)
        .fontColor(Colors.TEXT_ON_PRIMARY)

      Text(label)
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.8)
        .margin({ top: Sizes.SPACING_XS })
    }
  }

  @Builder
  TabBar() {
    Row() {
      ForEach(['起源作物', '起源食物', this.getSubLocationLabel()], (tab: string, index: number) => {
        Column() {
          Text(tab)
            .fontSize(Sizes.FONT_SM)
            .fontWeight(this.activeTab === index ? FontWeight.Bold : FontWeight.Normal)
            .fontColor(this.activeTab === index ? Colors.PRIMARY : Colors.TEXT_SECONDARY)
            .padding({
              left: Sizes.SPACING_SM,
              right: Sizes.SPACING_SM,
              top: Sizes.SPACING_SM,
              bottom: Sizes.SPACING_SM
            })

          if (this.activeTab === index) {
            Divider()
              .width('80%')
              .height(2)
              .backgroundColor(Colors.PRIMARY)
          }
        }
        .layoutWeight(1)
        .onClick(() => {
          this.activeTab = index;
        })
      })
    }
    .width('100%')
    .backgroundColor(Colors.CARD_BACKGROUND)
    .padding({ top: Sizes.SPACING_SM })
  }

  @Builder
  OriginCropsSection() {
    Column() {
      if (this.originCrops.length === 0) {
        this.EmptyState('暂无起源于此地的作物记录')
      } else {
        ForEach(this.originCrops, (crop: Crop) => {
          this.CropListItem(crop)
        })
      }
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  OriginFoodsSection() {
    Column() {
      if (this.originFoods.length === 0) {
        this.EmptyState('暂无起源于此地的食物记录')
      } else {
        ForEach(this.originFoods, (food: Food) => {
          this.FoodListItem(food)
        })
      }
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  SubLocationsSection() {
    Column() {
      if (this.subLocations.length === 0) {
        this.EmptyState('暂无子地区')
      } else {
        ForEach(this.subLocations, (loc: Location) => {
          this.LocationListItem(loc)
        })
      }
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  CropListItem(crop: Crop) {
    Row() {
      Text(getCropIcon(crop.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(crop.name)
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(getCropCategoryName(crop.category) + ' · ' + crop.origin.time.display)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text('›')
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_HINT)
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({ bottom: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/CropDetail',
        params: new CropParams(crop.id)
      });
    })
  }

  @Builder
  FoodListItem(food: Food) {
    Row() {
      Text(getFoodIcon(food.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(food.name)
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(getFoodCategoryName(food.category) + ' · ' + food.origin.time.display)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text('›')
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_HINT)
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({ bottom: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/FoodDetail',
        params: new FoodParams(food.id)
      });
    })
  }

  @Builder
  LocationListItem(loc: Location) {
    Row() {
      Text(getLocationIcon(loc.type))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(loc.name)
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(this.getLocationSummary(loc.id))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text('›')
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_HINT)
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({ bottom: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/LocationDetail',
        params: new LocationParams(loc.id)
      });
    })
  }

  @Builder
  EmptyState(message: string) {
    Column() {
      Text('📭')
        .fontSize(48)
        .margin({ bottom: Sizes.SPACING_MD })

      Text(message)
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_SECONDARY)
    }
    .width('100%')
    .padding(Sizes.SPACING_XL)
    .justifyContent(FlexAlign.Center)
  }

  getLocationTypeText(): string {
    switch (this.location?.type) {
      case 'continent': return '大洲';
      case 'country': return '国家';
      case 'region': return '地区';
      default: return '地点';
    }
  }

  getSubLocationLabel(): string {
    switch (this.location?.type) {
      case 'continent': return '国家';
      case 'country': return '地区';
      default: return '子地区';
    }
  }

  getLocationSummary(locationId: string): string {
    const origins = dataService.getOriginsByLocation(locationId);
    const parts: string[] = [];

    if (origins.crops.length > 0) {
      parts.push(`${origins.crops.length}种作物`);
    }
    if (origins.foods.length > 0) {
      parts.push(`${origins.foods.length}种食物`);
    }

    return parts.join(' · ') || '点击查看详情';
  }
}
