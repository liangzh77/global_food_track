/**
 * 食物全球史 - 分类列表页
 * 显示某一类别的所有作物或食物
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getCropCategoryColor, getFoodCategoryColor } from '../common/Constants';
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

          Text(`共 ${this.type === 'crop' ? this.crops.length : this.foods.length} 项`)
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
      Text(getCropIcon(crop.category))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Row() {
          Text(crop.name)
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)

          if (crop.alias && crop.alias.length > 0) {
            Text(`（${crop.alias[0]}）`)
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_SECONDARY)
              .margin({ left: Sizes.SPACING_XS })
          }
        }

        Text(`起源：${dataService.getLocationName(crop.origin.location)} · ${crop.origin.time.display}`)
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
          Text(food.name)
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)

          if (food.alias && food.alias.length > 0) {
            Text(`（${food.alias[0]}）`)
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_SECONDARY)
              .margin({ left: Sizes.SPACING_XS })
          }
        }

        Text(`起源：${dataService.getLocationName(food.origin.location)} · ${food.origin.time.display}`)
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
      return getCropCategoryName(this.category as CropCategory);
    } else {
      return getFoodCategoryName(this.category as FoodCategory);
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
