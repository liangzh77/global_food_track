/**
 * 食物全球史 - 搜索结果页
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { Colors, Sizes, NavIcons } from '../common/Constants';
import { SearchResultItem } from '../models/DataModels';

class RouterParams {
  keyword: string = '';
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
struct SearchResult {
  @State keyword: string = '';
  @State results: SearchResultItem[] = [];
  @State isLoading: boolean = true;

  aboutToAppear(): void {
    dataService.init();
    const params = router.getParams() as RouterParams;
    this.keyword = params?.keyword || '';
    this.doSearch();
  }

  doSearch(): void {
    this.isLoading = true;
    this.results = dataService.search(this.keyword);
    this.isLoading = false;
  }

  build() {
    Column() {
      this.SearchHeader()

      if (this.isLoading) {
        this.LoadingState()
      } else if (this.results.length === 0) {
        this.EmptyState()
      } else {
        this.ResultsList()
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Colors.BACKGROUND)
  }

  @Builder
  SearchHeader() {
    Row() {
      Text(NavIcons.BACK)
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_PRIMARY)
        .padding(Sizes.SPACING_SM)
        .onClick(() => {
          router.back();
        })

      Row() {
        Text(NavIcons.SEARCH)
          .fontSize(Sizes.FONT_MD)
          .margin({ right: Sizes.SPACING_SM })

        TextInput({ text: this.keyword })
          .layoutWeight(1)
          .height(36)
          .backgroundColor('transparent')
          .onChange((value: string) => {
            this.keyword = value;
          })
          .onSubmit(() => {
            this.doSearch();
          })
      }
      .layoutWeight(1)
      .height(40)
      .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
      .backgroundColor(Colors.SURFACE)
      .borderRadius(Sizes.RADIUS_LARGE)
      .margin({ left: Sizes.SPACING_SM })
    }
    .width('100%')
    .height(56)
    .padding({ left: Sizes.SPACING_SM, right: Sizes.SPACING_MD })
    .backgroundColor(Colors.CARD_BACKGROUND)
  }

  @Builder
  ResultsList() {
    Column() {
      Text('找到 ' + this.results.length.toString() + ' 个结果')
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_SECONDARY)
        .margin({ top: Sizes.SPACING_MD, bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      List() {
        ForEach(this.results, (item: SearchResultItem) => {
          ListItem() {
            this.ResultItem(item)
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .layoutWeight(1)
  }

  @Builder
  ResultItem(item: SearchResultItem) {
    Row() {
      Text(this.getItemIcon(item))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(item.name)
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(item.subtitle)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text(this.getTypeLabel(item.type))
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.PRIMARY)
        .backgroundColor('#E8F5E9')
        .padding({ left: Sizes.SPACING_SM, right: Sizes.SPACING_SM, top: 2, bottom: 2 })
        .borderRadius(Sizes.RADIUS_SMALL)

      Text('›')
        .fontSize(Sizes.FONT_XL)
        .fontColor(Colors.TEXT_HINT)
        .margin({ left: Sizes.SPACING_SM })
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({ bottom: Sizes.SPACING_SM })
    .onClick(() => {
      this.navigateToDetail(item);
    })
  }

  @Builder
  LoadingState() {
    Column() {
      LoadingProgress()
        .width(48)
        .height(48)
        .color(Colors.PRIMARY)

      Text('搜索中...')
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_SECONDARY)
        .margin({ top: Sizes.SPACING_MD })
    }
    .width('100%')
    .layoutWeight(1)
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  EmptyState() {
    Column() {
      Text('🔍')
        .fontSize(64)
        .margin({ bottom: Sizes.SPACING_MD })

      Text('没有找到与"' + this.keyword + '"相关的结果')
        .fontSize(Sizes.FONT_MD)
        .fontColor(Colors.TEXT_SECONDARY)
        .textAlign(TextAlign.Center)

      Text('试试换个关键词？')
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_HINT)
        .margin({ top: Sizes.SPACING_SM })
    }
    .width('100%')
    .layoutWeight(1)
    .justifyContent(FlexAlign.Center)
    .padding(Sizes.SPACING_XL)
  }

  getItemIcon(item: SearchResultItem): string {
    if (item.type === 'crop') {
      return '🌱';
    } else if (item.type === 'food') {
      return '🍽️';
    } else {
      return '📍';
    }
  }

  getTypeLabel(type: string): string {
    switch (type) {
      case 'crop': return '作物';
      case 'food': return '食物';
      case 'location': return '地点';
      default: return '';
    }
  }

  navigateToDetail(item: SearchResultItem): void {
    switch (item.type) {
      case 'crop':
        router.pushUrl({
          url: 'pages/CropDetail',
          params: new CropParams(item.id)
        });
        break;
      case 'food':
        router.pushUrl({
          url: 'pages/FoodDetail',
          params: new FoodParams(item.id)
        });
        break;
      case 'location':
        router.pushUrl({
          url: 'pages/LocationDetail',
          params: new LocationParams(item.id)
        });
        break;
      default:
        break;
    }
  }
}
