/**
 * 食物全球史 - 分类列表页
 * 显示某一类别的所有作物或食物
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { languageService, Language } from '../services/LanguageService';
import { Colors, Sizes, NavIcons, getCropIcon, getCropIconById, getFoodIcon, getCropCategoryColor, getFoodCategoryColor } from '../common/Constants';
import { Crop, Food, CropCategory, FoodCategory, getCropCategoryName, getFoodCategoryName } from '../models/DataModels';

class CategoryListParams {
  category: string = '';
  type: string = '';
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

@Entry
@Component
struct CategoryList {
  @State category: string = '';
  @State type: string = ''; // 'crop' or 'food'
  @State crops: Crop[] = [];
  @State foods: Food[] = [];
  @State currentLang: Language = languageService.getLanguage();

  aboutToAppear(): void {
    dataService.init();
    const params = router.getParams() as CategoryListParams;
    this.category = params?.category || '';
    this.type = params?.type || '';
    this.loadData();
  }

  loadData(): void {
    if (this.type === 'crop') {
      this.crops = dataService.getCropsByCategory(this.category as CropCategory);
    } else {
      this.foods = dataService.getFoodsByCategory(this.category as FoodCategory);
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

  // 获取实体别名
  private getAlias(entity: object): string[] {
    const _lang = this.currentLang;
    return languageService.getAlias(entity);
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

  // 获取地点名称（动态多语言）
  private getLocationName(locationId: string): string {
    const _lang = this.currentLang;
    const location = dataService.getLocationById(locationId);
    return languageService.getName(location as object);
  }

  goHome(): void {
    router.clear();
    router.pushUrl({ url: 'pages/Index' });
  }

  build() {
    Column() {
      // 顶部
      this.Header()

      // 列表
      Scroll() {
        Column() {
          if (this.type === 'crop') {
            ForEach(this.crops, (crop: Crop) => {
              this.CropItem(crop)
            })
          } else {
            ForEach(this.foods, (food: Food) => {
              this.FoodItem(food)
            })
          }
        }
        .width('100%')
        .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_XL })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Colors.BACKGROUND)
  }

  @Builder
  Header() {
    Column() {
      Row() {
        Text(NavIcons.BACK)
          .fontSize(Sizes.FONT_XL)
          .fontColor(Colors.TEXT_ON_PRIMARY)
          .padding(Sizes.SPACING_SM)
          .onClick(() => {
            router.back();
          })

        Blank()

        Column() {
          Text(NavIcons.HOME)
            .fontSize(Sizes.FONT_LG)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .padding(Sizes.SPACING_SM)
            .onClick(() => {
              this.goHome();
            })

          Text(this.getToggleText())
            .fontSize(Sizes.FONT_XS)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .padding({ left: 8, right: 8, top: 4, bottom: 4 })
            .borderRadius(Sizes.RADIUS_MEDIUM)
            .backgroundColor('rgba(255, 255, 255, 0.15)')
            .margin({ top: 4 })
            .onClick(() => {
              this.toggleLanguage();
            })
        }
        .alignItems(HorizontalAlign.Center)
      }
      .width('100%')

      Row() {
        Text(this.getCategoryIcon())
          .fontSize(40)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.getCategoryName())
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          Text(`${this.type === 'crop' ? this.crops.length : this.foods.length} ${this.currentLang === 'en' ? 'items' : '项'}`)
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .opacity(0.8)
            .margin({ top: Sizes.SPACING_XS })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .padding({ top: Sizes.SPACING_SM })
    }
    .width('100%')
    .padding({
      top: Sizes.SPACING_SM,
      bottom: Sizes.SPACING_LG,
      left: Sizes.SPACING_SM,
      right: Sizes.SPACING_MD
    })
    .backgroundColor(this.getCategoryColor())
  }

  @Builder
  CropItem(crop: Crop) {
    Row() {
      Text(getCropIconById(crop.id, crop.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Row() {
          Text(this.getName(crop))
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)

          if (this.getAlias(crop).length > 0) {
            Text(`（${this.getAlias(crop)[0]}）`)
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_SECONDARY)
              .margin({ left: Sizes.SPACING_XS })
          }
        }

        Text(`${this.t('labels.origin')}: ${this.getLocationName(crop.origin.location)} · ${this.getTimeDisplay(crop.origin.time)}`)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: Sizes.SPACING_XS })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
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
    .margin({ top: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/CropDetail',
        params: new CropParams(crop.id)
      });
    })
  }

  @Builder
  FoodItem(food: Food) {
    Row() {
      Text(getFoodIcon(food.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Row() {
          Text(this.getName(food))
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)

          if (this.getAlias(food).length > 0) {
            Text(`（${this.getAlias(food)[0]}）`)
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_SECONDARY)
              .margin({ left: Sizes.SPACING_XS })
          }
        }

        Text(`${this.t('labels.origin')}: ${this.getLocationName(food.origin.location)} · ${this.getTimeDisplay(food.origin.time)}`)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: Sizes.SPACING_XS })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
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
    .margin({ top: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/FoodDetail',
        params: new FoodParams(food.id)
      });
    })
  }

  getCategoryName(): string {
    if (this.type === 'crop') {
      return this.getCropCategoryName(this.category);
    } else {
      return this.getFoodCategoryName(this.category);
    }
  }

  getCategoryIcon(): string {
    if (this.type === 'crop') {
      return getCropIcon(this.category);
    } else {
      return getFoodIcon(this.category);
    }
  }

  getCategoryColor(): string {
    if (this.type === 'crop') {
      return getCropCategoryColor(this.category);
    } else {
      return getFoodCategoryColor(this.category);
    }
  }
}
