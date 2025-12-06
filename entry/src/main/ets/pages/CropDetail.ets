/**
 * 食物全球史 - 作物详情页
 * 展示作物的起源、传播历史、相关食物
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getCropCategoryColor } from '../common/Constants';
import { Crop, Food, SpreadEvent, getCropCategoryName } from '../models/DataModels';

class CropDetailParams {
  cropId: string = '';
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
struct CropDetail {
  @State crop: Crop | null = null;
  @State relatedFoods: Food[] = [];
  private cropId: string = '';

  aboutToAppear(): void {
    dataService.init();
    const params = router.getParams() as CropDetailParams;
    this.cropId = params?.cropId || '';
    this.loadData();
  }

  loadData(): void {
    const crop = dataService.getCropById(this.cropId);
    if (crop) {
      this.crop = crop;
      this.relatedFoods = dataService.getFoodsByCrop(this.cropId);
    }
  }

  build() {
    Column() {
      if (this.crop) {
        // 顶部导航
        this.NavBar()

        Scroll() {
          Column() {
            // 头部信息卡
            this.HeaderCard()

            // 起源信息
            this.OriginSection()

            // 传播历史
            if (this.crop.spreads.length > 0) {
              this.SpreadSection()
            }

            // 当前主产区
            if (this.crop.currentRegions.length > 0) {
              this.CurrentRegionsSection()
            }

            // 相关食物
            if (this.relatedFoods.length > 0) {
              this.RelatedFoodsSection()
            }
          }
          .padding({ bottom: Sizes.SPACING_XL })
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

      Text('作物详情')
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
        Text(getCropIcon(this.crop!.category))
          .fontSize(48)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.crop!.name)
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          if (this.crop!.alias && this.crop!.alias.length > 0) {
            Text(this.crop!.alias.join('、'))
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_ON_PRIMARY)
              .opacity(0.8)
              .margin({ top: Sizes.SPACING_XS })
          }

          Text(getCropCategoryName(this.crop!.category))
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .backgroundColor('#FFFFFF30')
            .padding({ left: Sizes.SPACING_SM, right: Sizes.SPACING_SM, top: 2, bottom: 2 })
            .borderRadius(Sizes.RADIUS_SMALL)
            .margin({ top: Sizes.SPACING_SM })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .margin({ bottom: Sizes.SPACING_MD })

      Text(this.crop!.description)
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.95)
        .lineHeight(22)
    }
    .width('100%')
    .padding(Sizes.SPACING_LG)
    .backgroundColor(getCropCategoryColor(this.crop!.category))
  }

  @Builder
  OriginSection() {
    Column() {
      this.SectionTitle('🌱 起源')

      Row() {
        Column() {
          Text('起源地')
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)

          Text(dataService.getLocationName(this.crop!.origin.location))
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)
            .margin({ top: Sizes.SPACING_XS })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)

        Column() {
          Text('起源时间')
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)

          Text(this.crop!.origin.time.display)
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)
            .margin({ top: Sizes.SPACING_XS })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .margin({ top: Sizes.SPACING_MD, left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
  }

  @Builder
  SpreadSection() {
    Column() {
      this.SectionTitle('🚢 传播历史')

      ForEach(this.crop!.spreads, (spread: SpreadEvent, index: number) => {
        this.SpreadItem(spread, index)
      })
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .margin({ top: Sizes.SPACING_MD, left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
  }

  @Builder
  SpreadItem(spread: SpreadEvent, index: number) {
    Row() {
      // 时间线
      Column() {
        Circle({ width: 12, height: 12 })
          .fill(Colors.PRIMARY)

        if (index < this.crop!.spreads.length - 1) {
          Line()
            .width(2)
            .height(40)
            .backgroundColor(Colors.PRIMARY_LIGHT)
        }
      }
      .width(20)
      .alignItems(HorizontalAlign.Center)
      .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(spread.time.display)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.PRIMARY)
          .fontWeight(FontWeight.Medium)

        Row() {
          Text(dataService.getLocationName(spread.from))
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_PRIMARY)

          Text(' → ')
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_SECONDARY)

          Text(dataService.getLocationName(spread.to))
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_PRIMARY)
            .fontWeight(FontWeight.Medium)
        }
        .margin({ top: Sizes.SPACING_XS })

        if (spread.via) {
          Text(spread.via)
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)
            .margin({ top: Sizes.SPACING_XS })
        }
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
    }
    .width('100%')
    .alignItems(VerticalAlign.Top)
    .padding({ top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
  }

  @Builder
  CurrentRegionsSection() {
    Column() {
      this.SectionTitle('📍 当前主产区')

      Flex({ wrap: FlexWrap.Wrap }) {
        ForEach(this.crop!.currentRegions, (regionId: string) => {
          Text(dataService.getLocationName(regionId))
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.PRIMARY)
            .backgroundColor(Colors.PRIMARY + '15')
            .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
            .borderRadius(Sizes.RADIUS_LARGE)
            .margin({ right: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
            .onClick(() => {
              router.pushUrl({
                url: 'pages/LocationDetail',
                params: new LocationParams(regionId)
              });
            })
        })
      }
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .margin({ top: Sizes.SPACING_MD, left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  RelatedFoodsSection() {
    Column() {
      this.SectionTitle('🍽️ 可制作的食物')

      ForEach(this.relatedFoods, (food: Food) => {
        this.FoodItem(food)
      })
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .margin({ top: Sizes.SPACING_MD, left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
  }

  @Builder
  FoodItem(food: Food) {
    Row() {
      Text(getFoodIcon(food.category))
        .fontSize(24)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(food.name)
          .fontSize(Sizes.FONT_MD)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(`起源于${dataService.getLocationName(food.origin.location)}`)
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
    .padding({ top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/FoodDetail',
        params: new FoodParams(food.id)
      });
    })
  }

  @Builder
  SectionTitle(title: string) {
    Text(title)
      .fontSize(Sizes.FONT_MD)
      .fontWeight(FontWeight.Medium)
      .fontColor(Colors.TEXT_PRIMARY)
      .margin({ bottom: Sizes.SPACING_MD })
  }
}
