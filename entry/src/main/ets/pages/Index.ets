/**
 * 食物全球史 - 首页
 */

import router from '@ohos.router';
import { dataService } from '../services/DataService';
import { languageService, Language } from '../services/LanguageService';
import { timelineService } from '../services/TimelineService';
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
      new CategoryItem('grain', this.t('cropCategories.grain')),
      new CategoryItem('vegetable', this.t('cropCategories.vegetable')),
      new CategoryItem('fruit', this.t('cropCategories.fruit')),
      new CategoryItem('legume', this.t('cropCategories.legume')),
      new CategoryItem('spice', this.t('cropCategories.spice')),
      new CategoryItem('beverage', this.t('cropCategories.beverage')),
      new CategoryItem('oil', this.t('cropCategories.oil')),
      new CategoryItem('sugar', this.t('cropCategories.sugar')),
      new CategoryItem('nut', this.t('cropCategories.nut'))
    ];
  }

  private getFoodCategories(): CategoryItem[] {
    return [
      new CategoryItem('staple', this.t('foodCategories.staple')),
      new CategoryItem('dish', this.t('foodCategories.dish')),
      new CategoryItem('beverage', this.t('foodCategories.beverage')),
      new CategoryItem('dessert', this.t('foodCategories.dessert')),
      new CategoryItem('snack', this.t('foodCategories.snack')),
      new CategoryItem('condiment', this.t('foodCategories.condiment')),
      new CategoryItem('preserved', this.t('foodCategories.preserved'))
    ];
  }

  aboutToAppear(): void {
    dataService.init();
    timelineService.init();
  }

  toggleLanguage(): void {
    this.currentLang = languageService.toggleLanguage();
  }

  // 获取翻译文本（依赖 currentLang 触发刷新）
  private t(key: string): string {
    // 使用 currentLang 确保状态变化时触发更新
    const _lang = this.currentLang;
    return languageService.t(key);
  }

  // 获取语言切换按钮文本
  private getToggleText(): string {
    const _lang = this.currentLang;
    return languageService.getToggleButtonText();
  }

  // 获取时代名称
  private getEraName(eraId: string): string {
    const _lang = this.currentLang;
    return languageService.getEraName(eraId);
  }

  // 获取时代描述
  private getEraDesc(eraId: string): string {
    const _lang = this.currentLang;
    return languageService.getEraDescription(eraId);
  }

  // 获取实体名称
  private getName(entity: object): string {
    const _lang = this.currentLang;
    return languageService.getName(entity);
  }

  // 获取时代年份范围（动态多语言）
  private getEraYearRangeText(era: Era): string {
    const _lang = this.currentLang;
    return timelineService.getEraYearRange(era);
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
        Text(this.t('app.title'))
          .fontSize(Sizes.FONT_TITLE)
          .fontWeight(FontWeight.Bold)
          .fontColor(Colors.TEXT_ON_PRIMARY)

        Text(this.t('app.subtitle'))
          .fontSize(Sizes.FONT_SM)
          .fontColor(Colors.TEXT_ON_PRIMARY)
          .opacity(0.9)
          .margin({ top: Sizes.SPACING_XS })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      // 语言切换按钮
      Text(this.getToggleText())
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

      TextInput({ placeholder: this.t('placeholders.search'), text: this.searchText })
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
      this.TabItem('tabs.crops', 0)
      this.TabItem('tabs.foods', 1)
      this.TabItem('tabs.regions', 2)
      this.TabItem('tabs.timeline', 3)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
    .padding({ top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
  }

  @Builder
  TabItem(titleKey: string, index: number) {
    Text(this.t(titleKey))
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
      Text(this.t('sections.exploreByCropCategory'))
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
      Text(this.t('sections.exploreByFoodCategory'))
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
      Text(this.t('sections.exploreByRegion'))
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
        Text(this.getName(continent))
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
      parts.push(countries.length.toString() + this.t('units.countries'));
    }
    if (origins.crops.length > 0) {
      parts.push(origins.crops.length.toString() + this.t('units.originCrops'));
    }
    if (origins.foods.length > 0) {
      parts.push(origins.foods.length.toString() + this.t('units.originFoods'));
    }

    return parts.length > 0 ? parts.join(' · ') : this.t('empty.clickToExplore');
  }

  @Builder
  TimelineExplorer() {
    Column() {
      Text(this.t('sections.exploreByEra'))
        .fontSize(Sizes.FONT_LG)
        .fontWeight(FontWeight.Medium)
        .fontColor(Colors.TEXT_PRIMARY)
        .margin({ bottom: Sizes.SPACING_MD })
        .alignSelf(ItemAlign.Start)

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
        Text(this.getEraName(era.id))
          .fontSize(Sizes.FONT_MD)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(this.getEraYearRangeText(era))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })

        Text(this.getEraDesc(era.id))
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

        Text(this.t('labels.events'))
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
