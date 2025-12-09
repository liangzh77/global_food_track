/**
 * 食物全球史 - 时代详情页面
 */

import router from '@ohos.router';
import { Colors, Sizes, NavIcons } from '../common/Constants';
import { timelineService } from '../services/TimelineService';
import { dataService } from '../services/DataService';
import { languageService, Language } from '../services/LanguageService';
import {
  Era,
  TimelineEvent,
  TimelineFilter,
  getEventColor,
  getEventTypeName,
  getTimelineEntityTypeName,
  Crop,
  Food
} from '../models/DataModels';

interface RouteParams {
  eraId: string;
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
struct EraDetail {
  @State era: Era | undefined = undefined;
  @State eraYearRange: string = '';
  @State allEvents: TimelineEvent[] = [];
  @State filteredEvents: TimelineEvent[] = [];
  @State filter: TimelineFilter = new TimelineFilter();
  @State selectedEvent: TimelineEvent | null = null;
  @State showModal: boolean = false;
  @State currentLang: Language = languageService.getLanguage();

  aboutToAppear(): void {
    timelineService.init();

    const params = router.getParams() as RouteParams;
    if (params && params.eraId) {
      this.era = timelineService.getEraById(params.eraId);
      if (this.era) {
        this.eraYearRange = timelineService.getEraYearRange(this.era);
        this.allEvents = timelineService.getEventsByEra(params.eraId);
        this.applyFilter();
      }
    }
  }

  applyFilter(): void {
    this.filteredEvents = timelineService.filterEvents(this.allEvents, this.filter);
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

  // 获取时代名称
  private getEraName(eraId: string): string {
    const _lang = this.currentLang;
    return languageService.getEraName(eraId);
  }

  // 获取时代描述
  private getEraDescription(eraId: string): string {
    const _lang = this.currentLang;
    return languageService.getEraDescription(eraId);
  }

  // 获取时代年份范围（动态多语言）
  private getEraYearRangeText(): string {
    const _lang = this.currentLang;
    if (this.era) {
      return timelineService.getEraYearRange(this.era);
    }
    return '';
  }

  // 获取时间线实体类型名称
  private getTimelineEntityTypeName(entityType: string): string {
    const _lang = this.currentLang;
    return languageService.getTimelineEntityTypeName(entityType);
  }

  // 获取事件类型名称
  private getEventTypeName(eventType: string): string {
    const _lang = this.currentLang;
    return languageService.getEventTypeName(eventType);
  }

  // 获取事件的实体名称（动态多语言）
  private getEventName(event: TimelineEvent): string {
    const _lang = this.currentLang;
    if (event.entityType === 'crop') {
      const crop = dataService.getCropById(event.entityId);
      return languageService.getName(crop as object);
    } else {
      const food = dataService.getFoodById(event.entityId);
      return languageService.getName(food as object);
    }
  }

  // 获取事件的实体描述（动态多语言）
  private getEventDescription(event: TimelineEvent): string {
    const _lang = this.currentLang;
    if (event.entityType === 'crop') {
      const crop = dataService.getCropById(event.entityId);
      return languageService.getDescription(crop as object);
    } else {
      const food = dataService.getFoodById(event.entityId);
      return languageService.getDescription(food as object);
    }
  }

  // 获取事件的时间显示（动态多语言）
  private getEventDisplayTime(event: TimelineEvent): string {
    const _lang = this.currentLang;
    if (event.entityType === 'crop') {
      const crop = dataService.getCropById(event.entityId);
      if (crop) {
        if (event.eventType === 'origin') {
          return languageService.getTimeDisplay(crop.origin.time as object);
        } else {
          // 传播事件，需要找到对应的传播记录
          const spread = crop.spreads.find(s => s.time.year === event.year);
          if (spread) {
            return languageService.getTimeDisplay(spread.time as object);
          }
        }
      }
    } else {
      const food = dataService.getFoodById(event.entityId);
      if (food) {
        if (event.eventType === 'origin') {
          return languageService.getTimeDisplay(food.origin.time as object);
        } else {
          const spread = food.spreads.find(s => s.time.year === event.year);
          if (spread) {
            return languageService.getTimeDisplay(spread.time as object);
          }
        }
      }
    }
    return event.displayTime; // 备用
  }

  // 获取地点名称（动态多语言）
  private getLocationName(locationId: string): string {
    const _lang = this.currentLang;
    const location = dataService.getLocationById(locationId);
    return languageService.getName(location as object);
  }

  // 获取传播途径（动态多语言）
  private getEventVia(event: TimelineEvent): string {
    const _lang = this.currentLang;
    if (event.eventType !== 'spread') return '';
    if (event.entityType === 'crop') {
      const crop = dataService.getCropById(event.entityId);
      if (crop) {
        const spread = crop.spreads.find(s => s.time.year === event.year && s.to === event.toLocationId);
        if (spread) {
          return languageService.getVia(spread as object) || '';
        }
      }
    } else {
      const food = dataService.getFoodById(event.entityId);
      if (food) {
        const spread = food.spreads.find(s => s.time.year === event.year && s.to === event.toLocationId);
        if (spread) {
          return languageService.getVia(spread as object) || '';
        }
      }
    }
    return event.via || '';
  }

  goHome(): void {
    router.clear();
    router.pushUrl({ url: 'pages/Index' });
  }

  getEventTypeLabel(event: TimelineEvent): string {
    return this.getTimelineEntityTypeName(event.entityType) + this.getEventTypeName(event.eventType);
  }

  build() {
    Stack() {
      Column() {
        // 头部
        this.Header()

        // 筛选栏
        this.FilterBar()

        // 搜索框
        this.SearchBar()

        // 统计信息
        this.StatsBar()

        // 时间轴列表
        this.TimelineList()
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Colors.BACKGROUND)

      // 事件详情弹窗
      if (this.showModal && this.selectedEvent) {
        this.EventModal()
      }
    }
    .width('100%')
    .height('100%')
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
        Text(this.era?.icon || '')
          .fontSize(40)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.getEraName(this.era?.id || ''))
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          Text(this.getEraYearRangeText())
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_ON_PRIMARY)
            .opacity(0.9)
            .margin({ top: Sizes.SPACING_XS })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .margin({ top: Sizes.SPACING_MD })
    }
    .width('100%')
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.PRIMARY)
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  FilterBar() {
    Column() {
      // 实体类型筛选
      Row() {
        Text(this.t('filters.all'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.entityType === 'all' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.entityType === 'all' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.entityType === 'all' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.entityType = 'all';
            this.applyFilter();
          })

        Text(this.t('tabs.crops'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.entityType === 'crop' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.entityType === 'crop' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.entityType === 'crop' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.entityType = 'crop';
            this.applyFilter();
          })

        Text(this.t('tabs.foods'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.entityType === 'food' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.entityType === 'food' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.entityType === 'food' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.entityType = 'food';
            this.applyFilter();
          })
      }
      .margin({ bottom: Sizes.SPACING_SM })

      // 事件类型筛选
      Row() {
        Text(this.t('filters.all'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.eventType === 'all' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.eventType === 'all' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.eventType === 'all' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.eventType = 'all';
            this.applyFilter();
          })

        Text(this.t('eventTypes.origin'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.eventType === 'origin' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.eventType === 'origin' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.eventType === 'origin' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.eventType = 'origin';
            this.applyFilter();
          })

        Text(this.t('eventTypes.spread'))
          .fontSize(Sizes.FONT_XS)
          .fontColor(this.filter.eventType === 'spread' ? Colors.TEXT_ON_PRIMARY : Colors.TEXT_SECONDARY)
          .backgroundColor(this.filter.eventType === 'spread' ? Colors.PRIMARY : 'transparent')
          .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 6, bottom: 6 })
          .borderRadius(16)
          .border({ width: 1, color: this.filter.eventType === 'spread' ? Colors.PRIMARY : '#E0E0E0' })
          .margin({ right: Sizes.SPACING_SM })
          .onClick(() => {
            this.filter.eventType = 'spread';
            this.applyFilter();
          })
      }
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
    .backgroundColor(Colors.CARD_BACKGROUND)
  }

  @Builder
  SearchBar() {
    Row() {
      TextInput({ placeholder: this.t('placeholders.searchTimeline'), text: this.filter.keyword })
        .layoutWeight(1)
        .height(40)
        .backgroundColor('#F5F5F5')
        .borderRadius(Sizes.RADIUS_SMALL)
        .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
        .onChange((value: string) => {
          this.filter.keyword = value;
          this.applyFilter();
        })
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_SM })
    .backgroundColor(Colors.CARD_BACKGROUND)
  }

  @Builder
  StatsBar() {
    Row() {
      Text(this.currentLang === 'en'
        ? `${this.filteredEvents.length} events`
        : `共 ${this.filteredEvents.length} 个事件`)
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.TEXT_SECONDARY)
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .border({ width: { bottom: 1 }, color: '#E0E0E0' })
  }

  @Builder
  TimelineList() {
    if (this.filteredEvents.length === 0) {
      Column() {
        Text(this.t('empty.noEvents'))
          .fontSize(Sizes.FONT_MD)
          .fontColor(Colors.TEXT_HINT)
      }
      .width('100%')
      .padding(Sizes.SPACING_XL)
      .justifyContent(FlexAlign.Center)
    } else {
      Scroll() {
        Column() {
          // 按年份分组显示
          ForEach(this.getGroupedYears(), (year: number) => {
            // 年份标记
            Row() {
              Text(timelineService.formatYear(year))
                .fontSize(Sizes.FONT_XS)
                .fontColor(Colors.TEXT_ON_PRIMARY)
                .backgroundColor(Colors.PRIMARY)
                .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: 4, bottom: 4 })
                .borderRadius(12)
            }
            .width('100%')
            .padding({ left: Sizes.SPACING_MD, top: Sizes.SPACING_MD, bottom: Sizes.SPACING_SM })

            // 该年份的事件
            ForEach(this.getEventsByYear(year), (event: TimelineEvent) => {
              this.EventItem(event)
            })
          })
        }
        .width('100%')
        .padding({ bottom: Sizes.SPACING_XL })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
    }
  }

  getGroupedYears(): number[] {
    const years = new Set<number>();
    this.filteredEvents.forEach((e: TimelineEvent) => years.add(e.year));
    return Array.from(years).sort((a, b) => a - b);
  }

  getEventsByYear(year: number): TimelineEvent[] {
    return this.filteredEvents.filter((e: TimelineEvent) => e.year === year);
  }

  @Builder
  EventItem(event: TimelineEvent) {
    Row() {
      // 时间线圆点
      Circle()
        .width(12)
        .height(12)
        .fill(getEventColor(event.entityType, event.eventType))
        .margin({ right: Sizes.SPACING_MD, left: 20 })

      // 事件内容
      Column() {
        Row() {
          Text(this.getEventName(event))
            .fontSize(Sizes.FONT_MD)
            .fontWeight(FontWeight.Medium)
            .fontColor(Colors.TEXT_PRIMARY)
            .layoutWeight(1)

          Text(this.getEventTypeLabel(event))
            .fontSize(10)
            .fontColor(getEventColor(event.entityType, event.eventType))
            .backgroundColor(this.getEventBgColor(event))
            .padding({ left: 8, right: 8, top: 2, bottom: 2 })
            .borderRadius(10)
        }
        .width('100%')

        // 地点信息
        if (event.eventType === 'origin') {
          Text(`📍 ${this.getLocationName(event.locationId)}`)
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)
            .margin({ top: 4 })
        } else {
          Row() {
            Text(`${this.getLocationName(event.fromLocationId)} → ${this.getLocationName(event.toLocationId)}`)
              .fontSize(Sizes.FONT_XS)
              .fontColor(Colors.TEXT_SECONDARY)

            if (this.getEventVia(event)) {
              Text(`（${this.getEventVia(event)}）`)
                .fontSize(Sizes.FONT_XS)
                .fontColor(Colors.TEXT_HINT)
                .margin({ left: 4 })
            }
          }
          .margin({ top: 4 })
        }
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_SMALL)
    .margin({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_SM })
    .shadow({
      radius: 4,
      color: '#0D000000',
      offsetY: 2
    })
    .onClick(() => {
      this.selectedEvent = event;
      this.showModal = true;
    })
  }

  getEventBgColor(event: TimelineEvent): string {
    if (event.entityType === 'crop') {
      return event.eventType === 'origin' ? '#E8F5E9' : '#E3F2FD';
    } else {
      return event.eventType === 'origin' ? '#FFF3E0' : '#F3E5F5';
    }
  }

  @Builder
  EventModal() {
    Column() {
      // 遮罩层
      Column()
        .width('100%')
        .height('100%')
        .backgroundColor('#80000000')
        .onClick(() => {
          this.showModal = false;
          this.selectedEvent = null;
        })
    }
    .width('100%')
    .height('100%')
    .position({ x: 0, y: 0 })
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)

    // 弹窗内容
    Column() {
      // 顶部工具栏：语言切换居中，关闭按钮靠右
      Row() {
        // 占位保持布局平衡
        Text('')
          .width(32)
          .height(32)

        // 语言切换按钮
        Text(this.getToggleText())
          .fontSize(Sizes.FONT_SM)
          .fontWeight(FontWeight.Medium)
          .fontColor(Colors.PRIMARY)
          .padding({ left: 14, right: 14, top: 6, bottom: 6 })
          .borderRadius(16)
          .backgroundColor(Colors.CARD_BACKGROUND)
          .border({ width: 1, color: Colors.PRIMARY })
          .onClick(() => {
            this.toggleLanguage();
          })

        // 关闭按钮
        Text('×')
          .fontSize(20)
          .fontColor('#666666')
          .width(32)
          .height(32)
          .textAlign(TextAlign.Center)
          .backgroundColor('#E0E0E0')
          .borderRadius(16)
          .onClick(() => {
            this.showModal = false;
            this.selectedEvent = null;
          })
      }
      .width('100%')
      .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, top: Sizes.SPACING_SM, bottom: Sizes.SPACING_SM })
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)
      .backgroundColor('#F5F5F5')
      .borderRadius({ topLeft: Sizes.RADIUS_MEDIUM, topRight: Sizes.RADIUS_MEDIUM })

      // 头部
      Column() {
        Text(this.getEventTypeLabel(this.selectedEvent!))
          .fontSize(Sizes.FONT_XS)
          .fontColor('#FFFFFF')
          .backgroundColor('rgba(255,255,255,0.2)')
          .padding({ left: 10, right: 10, top: 4, bottom: 4 })
          .borderRadius(12)
          .margin({ bottom: Sizes.SPACING_SM })

        Text(this.getEventName(this.selectedEvent!))
          .fontSize(Sizes.FONT_XXL)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')

        Text(this.getEventDisplayTime(this.selectedEvent!))
          .fontSize(Sizes.FONT_SM)
          .fontColor('#FFFFFF')
          .opacity(0.9)
          .margin({ top: Sizes.SPACING_XS })
      }
      .width('100%')
      .padding(Sizes.SPACING_LG)
      .backgroundColor(getEventColor(this.selectedEvent!.entityType, this.selectedEvent!.eventType))

      // 内容
      Column() {
        if (this.selectedEvent?.eventType === 'origin') {
          this.DetailRow(this.t('labels.originLocation'), `📍 ${this.getLocationName(this.selectedEvent?.locationId || '')}`, this.selectedEvent?.locationId)
        } else {
          this.DetailRow(this.t('labels.spreadPath'),
            `${this.getLocationName(this.selectedEvent?.fromLocationId || '')} → ${this.getLocationName(this.selectedEvent?.toLocationId || '')}`,
            undefined)

          if (this.getEventVia(this.selectedEvent!)) {
            this.DetailRow(this.t('labels.spreadVia'), this.getEventVia(this.selectedEvent!), undefined)
          }
        }

        // 简介
        Column() {
          Text(this.t('labels.description'))
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_HINT)

          Text(this.getEventDescription(this.selectedEvent!))
            .fontSize(Sizes.FONT_SM)
            .fontColor(Colors.TEXT_SECONDARY)
            .margin({ top: Sizes.SPACING_XS })
            .lineHeight(22)
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
        .margin({ top: Sizes.SPACING_MD })
      }
      .width('100%')
      .padding(Sizes.SPACING_LG)

      // 底部按钮
      Button(this.selectedEvent?.entityType === 'crop'
        ? this.t('buttons.viewCropDetails')
        : this.t('buttons.viewFoodDetails'))
        .width('90%')
        .height(44)
        .fontSize(Sizes.FONT_MD)
        .fontWeight(FontWeight.Medium)
        .backgroundColor(Colors.PRIMARY)
        .borderRadius(Sizes.RADIUS_SMALL)
        .margin({ bottom: Sizes.SPACING_LG })
        .onClick(() => {
          this.showModal = false;
          if (this.selectedEvent?.entityType === 'crop') {
            router.pushUrl({
              url: 'pages/CropDetail',
              params: new CropParams(this.selectedEvent.entityId)
            });
          } else {
            router.pushUrl({
              url: 'pages/FoodDetail',
              params: new FoodParams(this.selectedEvent!.entityId)
            });
          }
        })
    }
    .width('90%')
    .constraintSize({ maxWidth: 400 })
    .backgroundColor(Colors.CARD_BACKGROUND)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .position({ x: '5%', y: '15%' })
  }

  @Builder
  DetailRow(label: string, value: string, locationId: string | undefined) {
    Column() {
      Text(label)
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.TEXT_HINT)

      Text(value)
        .fontSize(Sizes.FONT_MD)
        .fontColor(locationId ? Colors.PRIMARY : Colors.TEXT_PRIMARY)
        .margin({ top: Sizes.SPACING_XS })
        .onClick(() => {
          if (locationId) {
            this.showModal = false;
            router.pushUrl({
              url: 'pages/LocationDetail',
              params: new LocationParams(locationId)
            });
          }
        })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .margin({ bottom: Sizes.SPACING_MD })
  }
}
