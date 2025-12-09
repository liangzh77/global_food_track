/**
 * 食物全球史 - 地点详情页
 * 展示某地起源的作物和食物、子地区
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { languageService, Language } from '../services/LanguageService';
import { Colors, Sizes, NavIcons, getCropIconById, getFoodIcon, getLocationIcon } from '../common/Constants';
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
  @State currentLang: Language = languageService.getLanguage();
  private locationId: string = '';

  aboutToAppear(): void {
    dataService.init();
    this.currentLang = languageService.getLanguage();
    const params = router.getParams() as LocationDetailParams;
    this.locationId = params?.locationId || '';
    this.loadData();
  }

  onPageShow(): void {
    this.currentLang = languageService.getLanguage();
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

  toggleLanguage(): void {
    this.currentLang = languageService.toggleLanguage();
  }

  // 获取翻译文本（依赖 currentLang 触发刷新）
  private t(key: string): string {
    const _lang = this.currentLang;
    return languageService.t(key);
  }

  // 获取语言切换按钮文本
  private getToggleText(): string {
    const _lang = this.currentLang;
    return languageService.getToggleButtonText();
  }

  // 获取实体名称
  private getName(entity: object): string {
    const _lang = this.currentLang;
    return languageService.getName(entity);
  }

  // 获取时间显示
  private getTimeDisplay(time: object): string {
    const _lang = this.currentLang;
    return languageService.getTimeDisplay(time);
  }

  // 获取作物类别名称
  private getCropCategoryName(category: string): string {
    const _lang = this.currentLang;
    return languageService.getCropCategoryName(category);
  }

  // 获取食物类别名称
  private getFoodCategoryName(category: string): string {
    const _lang = this.currentLang;
    return languageService.getFoodCategoryName(category);
  }

  // 获取地点类型名称
  private getLocationTypeName(type: string): string {
    const _lang = this.currentLang;
    return languageService.getLocationTypeName(type);
  }

  goHome(): void {
    router.clear();
    router.pushUrl({ url: 'pages/Index' });
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
      Row() {
        Text(NavIcons.BACK)
          .fontSize(Sizes.FONT_XL)
          .fontColor(Colors.TEXT_PRIMARY)
          .padding(Sizes.SPACING_SM)
          .onClick(() => {
            router.back();
          })

        Text(this.getName(this.location!) || this.t('tabs.regions'))
          .fontSize(Sizes.FONT_LG)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)
          .margin({ left: Sizes.SPACING_SM })
      }
      .layoutWeight(1)

      Column() {
        Text(NavIcons.HOME)
          .fontSize(Sizes.FONT_LG)
          .fontColor(Colors.TEXT_PRIMARY)
          .padding(Sizes.SPACING_SM)
          .onClick(() => {
            this.goHome();
          })

        Text(this.getToggleText())
          .fontSize(Sizes.FONT_XS)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.PRIMARY)
          .padding({ left: 8, right: 8, top: 4, bottom: 4 })
          .borderRadius(Sizes.RADIUS_MEDIUM)
          .backgroundColor(Colors.PRIMARY + '15')
          .margin({ top: 4 })
          .onClick(() => {
            this.toggleLanguage();
          })
      }
      .alignItems(HorizontalAlign.Center)
    }
    .width('100%')
    .height(72)
    .padding({ left: Sizes.SPACING_SM, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .alignItems(VerticalAlign.Top)
  }

  @Builder
  HeaderCard() {
    Column() {
      Row() {
        Text(getLocationIcon(this.location!.type))
          .fontSize(40)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.getName(this.location!))
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
        this.StatItem(`${this.originCrops.length}`, this.t('labels.originCrops'))
        this.StatItem(`${this.originFoods.length}`, this.t('labels.originFoods'))
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
      ForEach([this.t('labels.originCrops'), this.t('labels.originFoods'), this.getSubLocationLabel()], (tab: string, index: number) => {
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
        this.EmptyState(this.t('empty.noResults'))
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
        this.EmptyState(this.t('empty.noResults'))
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
        this.EmptyState(this.t('empty.noResults'))
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
      Text(getCropIconById(crop.id, crop.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(this.getName(crop))
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(this.getCropCategoryName(crop.category) + ' · ' + this.getTimeDisplay(crop.origin.time))
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
        Text(this.getName(food))
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(this.getFoodCategoryName(food.category) + ' · ' + this.getTimeDisplay(food.origin.time))
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
        Text(this.getName(loc))
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
    return this.getLocationTypeName(this.location?.type || '');
  }

  getSubLocationLabel(): string {
    switch (this.location?.type) {
      case 'continent': return this.t('labels.countries');
      case 'country': return this.t('labels.subRegions');
      default: return this.t('labels.subRegions');
    }
  }

  getLocationSummary(locationId: string): string {
    const origins = dataService.getOriginsByLocation(locationId);
    const parts: string[] = [];

    if (origins.crops.length > 0) {
      parts.push(`${origins.crops.length}${this.t('units.originCrops')}`);
    }
    if (origins.foods.length > 0) {
      parts.push(`${origins.foods.length}${this.t('units.originFoods')}`);
    }

    return parts.join(' · ') || this.t('empty.clickToExplore');
  }
}
