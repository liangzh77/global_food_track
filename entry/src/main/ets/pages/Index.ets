/**
 * 食物全球史 - 首页
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { timelineService } from '../services/TimelineService';
import { languageService, Language } from '../services/LanguageService';
import { Colors, Sizes, NavIcons, getCropIcon, getFoodIcon, getLocationIcon } from '../common/Constants';
import { Location, CropCategory, FoodCategory, getCropCategoryName, getFoodCategoryName, Era, ERAS } from '../models/DataModels';

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

class EraParams {
  eraId: string;

  constructor(eraId: string) {
    this.eraId = eraId;
  }
}

@Entry
@Component
struct Index {
  @State searchText: string = '';
  @State activeTab: number = 0;
  @State currentLang: Language = languageService.getLanguage();

  private getCropCategories(): CategoryItem[] {
    return [
      new CategoryItem('grain', languageService.t('cropCategories.grain')),
      new CategoryItem('vegetable', languageService.t('cropCategories.vegetable')),
      new CategoryItem('fruit', languageService.t('cropCategories.fruit')),
      new CategoryItem('legume', languageService.t('cropCategories.legume')),
      new CategoryItem('spice', languageService.t('cropCategories.spice')),
      new CategoryItem('beverage', languageService.t('cropCategories.beverage')),
      new CategoryItem('oil', languageService.t('cropCategories.oil')),
      new CategoryItem('sugar', languageService.t('cropCategories.sugar')),
      new CategoryItem('nut', languageService.t('cropCategories.nut'))
    ];
  }

  private getFoodCategories(): CategoryItem[] {
    return [
      new CategoryItem('staple', languageService.t('foodCategories.staple')),
      new CategoryItem('dish', languageService.t('foodCategories.dish')),
      new CategoryItem('beverage', languageService.t('foodCategories.beverage')),
      new CategoryItem('dessert', languageService.t('foodCategories.dessert')),
      new CategoryItem('snack', languageService.t('foodCategories.snack')),
      new CategoryItem('condiment', languageService.t('foodCategories.condiment')),
      new CategoryItem('preserved', languageService.t('foodCategories.preserved'))
    ];
  }

  aboutToAppear(): void {
    dataService.init();
    timelineService.init();
  }

  toggleLanguage(): void {
    this.currentLang = languageService.toggleLanguage();
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
          } else if (this.activeTab === 2) {
            this.LocationExplorer()
          } else {
            this.TimelineExplorer()
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
    Row() {
      Column() {
        Text(languageService.t('app.title'))
          .fontSize(Sizes.FONT_TITLE)
          .fontWeight(FontWeight.Bold)
          .fontColor(Colors.TEXT_ON_PRIMARY)

        Text(languageService.t('app.subtitle'))
          .fontSize(Sizes.FONT_SM)
          .fontColor(Colors.TEXT_ON_PRIMARY)
          .opacity(0.9)
          .margin({ top: Sizes.SPACING_XS })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      // 语言切换按钮
      Text(languageService.getToggleButtonText())
        .fontSize(Sizes.FONT_XS)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .padding({ left: 12, right: 12, top: 6, bottom: 6 })
        .borderRadius(Sizes.RADIUS_LARGE)
        .backgroundColor('rgba(255, 255, 255, 0.15)')
        .border({ width: 1, color: 'rgba(255, 255, 255, 0.5)' })
        .onClick(() => {
          this.toggleLanguage();
        })
    }
    .width('100%')
    .padding({
      top: Sizes.SPACING_XL,
      bottom: Sizes.SPACING_LG,
      left: Sizes.SPACING_MD,
      right: Sizes.SPACING_MD
    })
    .backgroundColor(Colors.PRIMARY)
    .alignItems(VerticalAlign.Top)
  }

  @Builder
  SearchBar() {
    Row() {
      Text(NavIcons.SEARCH)
        .fontSize(Sizes.FONT_LG)
        .margin({ right: Sizes.SPACING_SM })

      TextInput({ placeholder: languageService.t('placeholders.search'), text: this.searchText })
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
      this.TabItem(languageService.t('tabs.crops'), 0)
      this.TabItem(languageService.t('tabs.foods'), 1)
      this.TabItem(languageService.t('tabs.regions'), 2)
      this.TabItem(languageService.t('tabs.timeline'), 3)
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
      Text(languageService.t('sections.exploreByCropCategory'))
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(this.getCropCategories(), (item: CategoryItem) => {
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
      Text(languageService.t('sections.exploreByFoodCategory'))
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      Flex({ wrap: FlexWrap.Wrap, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(this.getFoodCategories(), (item: CategoryItem) => {
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
      Text(languageService.t('sections.exploreByRegion'))
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
      parts.push(countries.length.toString() + languageService.t('units.countries'));
    }
    if (origins.crops.length > 0) {
      parts.push(origins.crops.length.toString() + languageService.t('units.originCrops'));
    }
    if (origins.foods.length > 0) {
      parts.push(origins.foods.length.toString() + languageService.t('units.originFoods'));
    }

    return parts.length > 0 ? parts.join(' · ') : languageService.t('empty.clickToExplore');
  }

  @Builder
  TimelineExplorer() {
    Column() {
      Text(languageService.t('sections.exploreByEra'))
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

      // 时间线入口卡片
      Column() {
        Text(languageService.t('sections.timelineIntro'))
          .fontSize(Sizes.FONT_SM)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ bottom: Sizes.SPACING_MD })

        Button(languageService.t('buttons.viewFullTimeline'))
          .fontSize(Sizes.FONT_SM)
          .fontWeight(FontWeight.Medium)
          .backgroundColor(Colors.PRIMARY)
          .padding({ left: Sizes.SPACING_LG, right: Sizes.SPACING_LG })
          .onClick(() => {
            router.pushUrl({ url: 'pages/Timeline' });
          })
      }
      .width('100%')
      .padding(Sizes.SPACING_MD)
      .backgroundColor(Colors.CARD_BACKGROUND)
      .borderRadius(Sizes.RADIUS_MEDIUM)
      .alignItems(HorizontalAlign.Center)
      .margin({ bottom: Sizes.SPACING_MD })

      // 时代列表
      ForEach(ERAS, (era: Era) => {
        this.EraCard(era)
      })
    }
    .width('100%')
    .margin({ top: Sizes.SPACING_MD })
  }

  @Builder
  EraCard(era: Era) {
    Row() {
      Text(era.icon)
        .fontSize(36)
        .width(50)
        .textAlign(TextAlign.Center)
        .margin({ right: Sizes.SPACING_MD })

      Column() {
        Text(languageService.getEraName(era.id))
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(timelineService.getEraYearRange(era))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })

        Text(languageService.getEraDescription(era.id))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_HINT)
          .margin({ top: 4 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Column() {
        Text(timelineService.getEventCountByEra(era.id).toString())
          .fontSize(Sizes.FONT_LG)
          .fontWeight(FontWeight.Bold)
          .fontColor(Colors.PRIMARY)

        Text(languageService.t('labels.events'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.PRIMARY)
      }
      .padding(Sizes.SPACING_SM)
      .backgroundColor('#E8F5E9')
      .borderRadius(Sizes.RADIUS_SMALL)
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({ bottom: Sizes.SPACING_SM })
    .shadow({
      radius: 4,
      color: '#0D000000',
      offsetY: 2
    })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/EraDetail',
        params: new EraParams(era.id)
      });
    })
  }
}
