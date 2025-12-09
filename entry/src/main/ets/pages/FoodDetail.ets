/**
 * 食物全球史 - 食物详情页
 * 展示食物的起源、原料、传播历史
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { languageService, Language } from '../services/LanguageService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getFoodCategoryColor } from '../common/Constants';
import { Food, Crop, SpreadEvent, getFoodCategoryName } from '../models/DataModels';

class FoodDetailParams {
  foodId: string = '';
}

class CropParams {
  cropId: string;

  constructor(cropId: string) {
    this.cropId = cropId;
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
struct FoodDetail {
  @State food: Food | null = null;
  @State ingredients: Crop[] = [];
  @State currentLang: Language = languageService.getLanguage();
  private foodId: string = '';

  aboutToAppear(): void {
    dataService.init();
    const params = router.getParams() as FoodDetailParams;
    this.foodId = params?.foodId || '';
    this.loadData();
  }

  loadData(): void {
    const food = dataService.getFoodById(this.foodId);
    if (food) {
      this.food = food;
      this.ingredients = dataService.getIngredientCrops(food);
    }
  }

  toggleLanguage(): void {
    this.currentLang = languageService.toggleLanguage();
  }

  goHome(): void {
    router.clear();
    router.pushUrl({ url: 'pages/Index' });
  }

  build() {
    Column() {
      if (this.food) {
        // 顶部导航
        this.NavBar()

        Scroll() {
          Column() {
            // 头部信息卡
            this.HeaderCard()

            // 起源信息
            this.OriginSection()

            // 主要食材
            if (this.ingredients.length > 0) {
              this.IngredientsSection()
            }

            // 传播历史
            if (this.food.spreads.length > 0) {
              this.SpreadSection()
            }

            // 当前流行地区
            if (this.food.currentRegions.length > 0) {
              this.CurrentRegionsSection()
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
      Row() {
        Text(NavIcons.BACK)
          .fontSize(Sizes.FONT_XL)
          .fontColor(Colors.TEXT_PRIMARY)
          .padding(Sizes.SPACING_SM)
          .onClick(() => {
            router.back();
          })

        Text(languageService.t('buttons.viewFoodDetails'))
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

        Text(languageService.getToggleButtonText())
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
        Text(getFoodIcon(this.food!.category))
          .fontSize(48)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(languageService.getName(this.food!))
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          if (languageService.getAlias(this.food!).length > 0) {
            Text(languageService.getAlias(this.food!).join(this.currentLang === 'en' ? ', ' : '、'))
              .fontSize(Sizes.FONT_SM)
              .fontColor(Colors.TEXT_ON_PRIMARY)
              .opacity(0.8)
              .margin({ top: Sizes.SPACING_XS })
          }

          Text(languageService.getFoodCategoryName(this.food!.category))
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

      Text(languageService.getDescription(this.food!))
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.95)
        .lineHeight(22)
    }
    .width('100%')
    .padding(Sizes.SPACING_LG)
    .backgroundColor(getFoodCategoryColor(this.food!.category))
  }

  @Builder
  OriginSection() {
    Column() {
      this.SectionTitle('🏛️ ' + languageService.t('labels.origin'))

      Row() {
        Column() {
          Text(languageService.t('labels.originLocation'))
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)

          Text(dataService.getLocationName(this.food!.origin.location))
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)
            .margin({ top: Sizes.SPACING_XS })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)

        Column() {
          Text(languageService.t('labels.originTime'))
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)

          Text(languageService.getTimeDisplay(this.food!.origin.time))
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
  IngredientsSection() {
    Column() {
      this.SectionTitle('🥗 ' + languageService.t('labels.ingredients'))

      ForEach(this.ingredients, (crop: Crop) => {
        this.CropItem(crop)
      })
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .margin({ top: Sizes.SPACING_MD, left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
  }

  @Builder
  CropItem(crop: Crop) {
    Row() {
      Text(getCropIcon(crop.category))
        .fontSize(24)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(languageService.getName(crop))
          .fontSize(Sizes.FONT_MD)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(languageService.t('labels.origin') + ': ' + dataService.getLocationName(crop.origin.location))
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
        url: 'pages/CropDetail',
        params: new CropParams(crop.id)
      });
    })
  }

  @Builder
  SpreadSection() {
    Column() {
      this.SectionTitle('🌍 ' + languageService.t('labels.spreadHistory'))

      ForEach(this.food!.spreads, (spread: SpreadEvent, index: number) => {
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
      Column() {
        Circle({ width: 12, height: 12 })
          .fill(Colors.PRIMARY)

        if (index < this.food!.spreads.length - 1) {
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
        Text(languageService.getTimeDisplay(spread.time))
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

        if (languageService.getVia(spread)) {
          Text(languageService.getVia(spread) || '')
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
      this.SectionTitle('📍 ' + languageService.t('labels.popularRegions'))

      Flex({ wrap: FlexWrap.Wrap }) {
        ForEach(this.food!.currentRegions, (regionId: string) => {
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
  SectionTitle(title: string) {
    Text(title)
      .fontSize(Sizes.FONT_MD)
      .fontWeight(FontWeight.Medium)
      .fontColor(Colors.TEXT_PRIMARY)
      .margin({ bottom: Sizes.SPACING_MD })
  }
}
