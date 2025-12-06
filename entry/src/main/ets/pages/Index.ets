/**
 * 食物全球史 - 首页
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getLocationIcon } from '../common/Constants';
import { Location, CropCategory, FoodCategory, getCropCategoryName, getFoodCategoryName } from '../models/DataModels';

class CategoryItem {
  key: string;
  name: string;

  constructor(key: string, name: string) {
    this.key = key;
    this.name = name;
  }
}

class SearchParams {
  keyword: string;

  constructor(keyword: string) {
    this.keyword = keyword;
  }
}

class CategoryListParams {
  category: string;
  type: string;

  constructor(category: string, type: string) {
    this.category = category;
    this.type = type;
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
struct Index {
  @State searchText: string = '';
  @State activeTab: number = 0;

  private cropCategories: CategoryItem[] = [
    new CategoryItem('grain', '谷物'),
    new CategoryItem('vegetable', '蔬菜'),
    new CategoryItem('fruit', '水果'),
    new CategoryItem('legume', '豆类'),
    new CategoryItem('spice', '香料'),
    new CategoryItem('beverage', '饮料作物'),
    new CategoryItem('oil', '油料作物'),
    new CategoryItem('sugar', '糖料作物'),
    new CategoryItem('nut', '坚果')
  ];

  private foodCategories: CategoryItem[] = [
    new CategoryItem('staple', '主食'),
    new CategoryItem('dish', '菜肴'),
    new CategoryItem('beverage', '饮品'),
    new CategoryItem('dessert', '甜点'),
    new CategoryItem('snack', '小吃'),
    new CategoryItem('condiment', '调味品'),
    new CategoryItem('preserved', '腌制食品')
  ];

  aboutToAppear(): void {
    dataService.init();
  }

  build() {
    Column() {
      this.Header()
      this.SearchBar()
      this.TabBar()

      Scroll() {
        Column() {
          if (this.activeTab === 0) {
            this.CropCategories()
          } else if (this.activeTab === 1) {
            this.FoodCategories()
          } else {
            this.LocationExplorer()
          }
        }
        .width('100%')
        .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_LG })
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
      Text('食物全球史')
        .fontSize(Sizes.FONT_TITLE)
        .fontWeight(FontWeight.Bold)
        .fontColor(Colors.TEXT_ON_PRIMARY)

      Text('探索作物与食物的起源与传播')
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.9)
        .margin({ top: Sizes.SPACING_XS })
    }
    .width('100%')
    .padding({
      top: Sizes.SPACING_XL,
      bottom: Sizes.SPACING_LG,
      left: Sizes.SPACING_MD,
      right: Sizes.SPACING_MD
    })
    .backgroundColor(Colors.PRIMARY)
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  SearchBar() {
    Row() {
      Text(NavIcons.SEARCH)
        .fontSize(Sizes.FONT_LG)
        .margin({ right: Sizes.SPACING_SM })

      TextInput({ placeholder: '搜索作物、食物或地点...', text: this.searchText })
        .layoutWeight(1)
        .height(40)
        .backgroundColor('transparent')
        .onChange((value: string) => {
          this.searchText = value;
        })
        .onSubmit(() => {
          if (this.searchText.trim()) {
            router.pushUrl({
              url: 'pages/SearchResult',
              params: new SearchParams(this.searchText.trim())
            });
          }
        })
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
    .height(48)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_LARGE)
    .margin({
      left: Sizes.SPACING_MD,
      right: Sizes.SPACING_MD,
      top: -Sizes.SPACING_LG,
      bottom: Sizes.SPACING_MD
    })
    .shadow({
      radius: 8,
      color: '#1A000000',
      offsetY: 2
    })
  }

  @Builder
  TabBar() {
    Row() {
      this.TabItem('作物', 0)
      this.TabItem('食物', 1)
      this.TabItem('地区', 2)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
    .padding({ top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
  }

  @Builder
  TabItem(title: string, index: number) {
    Text(title)
      .fontSize(Sizes.FONT_MD)
      .fontWeight(this.activeTab === index ? FontWeight.Bold : FontWeight.Normal)
      .fontColor(this.activeTab === index ? Colors.PRIMARY : Colors.TEXT_SECONDARY)
      .padding({
        left: Sizes.SPACING_MD,
        right: Sizes.SPACING_MD,
        top: Sizes.SPACING_SM,
        bottom: Sizes.SPACING_SM
      })
      .borderRadius(Sizes.RADIUS_LARGE)
      .backgroundColor(this.activeTab === index ? '#E8F5E9' : 'transparent')
      .onClick(() => {
        this.activeTab = index;
      })
  }

  @Builder
  CropCategories() {
    Column() {
      Text('按类别探索作物')
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(this.cropCategories, (item: CategoryItem) => {
          this.CategoryCard(item.key, item.name, getCropIcon(item.key), 'crop')
        })
      }
      .width('100%')
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  FoodCategories() {
    Column() {
      Text('按类别探索食物')
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(this.foodCategories, (item: CategoryItem) => {
          this.CategoryCard(item.key, item.name, getFoodIcon(item.key), 'food')
        })
      }
      .width('100%')
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  CategoryCard(category: string, name: string, icon: string, type: string) {
    Column() {
      Text(icon)
        .fontSize(32)
        .margin({ bottom: Sizes.SPACING_SM })

      Text(name)
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_PRIMARY)
        .fontWeight(FontWeight.Medium)
    }
    .width('30%')
    .aspectRatio(1)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .justifyContent(FlexAlign.Center)
    .margin({ bottom: Sizes.SPACING_MD })
    .shadow({
      radius: 4,
      color: '#0D000000',
      offsetY: 2
    })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/CategoryList',
        params: new CategoryListParams(category, type)
      });
    })
  }

  @Builder
  LocationExplorer() {
    Column() {
      Text('按地区探索')
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      ForEach(dataService.getContinents(), (continent: Location) => {
        this.ContinentCard(continent)
      })
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  ContinentCard(continent: Location) {
    Row() {
      Text(getLocationIcon('continent'))
        .fontSize(28)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(continent.name)
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(this.getContinentSummary(continent.id))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: Sizes.SPACING_XS })
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
        params: new LocationParams(continent.id)
      });
    })
  }

  getContinentSummary(continentId: string): string {
    const origins = dataService.getOriginsByLocation(continentId);
    const countries = dataService.getCountriesByContinent(continentId);
    const parts: string[] = [];

    if (countries.length > 0) {
      parts.push(countries.length.toString() + '个国家');
    }
    if (origins.crops.length > 0) {
      parts.push(origins.crops.length.toString() + '种起源作物');
    }
    if (origins.foods.length > 0) {
      parts.push(origins.foods.length.toString() + '种起源食物');
    }

    return parts.length > 0 ? parts.join(' · ') : '点击探索';
  }
}
