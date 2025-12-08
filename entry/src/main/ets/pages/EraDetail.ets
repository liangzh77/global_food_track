/**
 * 食物全球史 - 时代详情页面
 */

import router from '@ohos.router';
import { Colors, Sizes } from '../common/Constants';
import { timelineService } from '../services/TimelineService';
import {
  Era,
  TimelineEvent,
  TimelineFilter,
  getEventColor,
  getEventTypeName,
  getTimelineEntityTypeName
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

  getEventTypeLabel(event: TimelineEvent): string {
    return getTimelineEntityTypeName(event.entityType) + getEventTypeName(event.eventType);
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
        Text('‹ 返回')
          .fontSize(Sizes.FONT_MD)
          .fontColor(Colors.TEXT_ON_PRIMARY)
          .opacity(0.9)
          .onClick(() => {
            router.back();
          })
      }
      .width('100%')

      Row() {
        Text(this.era?.icon || '')
          .fontSize(40)
          .margin({ right: Sizes.SPACING_MD })

        Column() {
          Text(this.era?.name || '')
            .fontSize(Sizes.FONT_XXL)
            .fontWeight(FontWeight.Bold)
            .fontColor(Colors.TEXT_ON_PRIMARY)

          Text(this.eraYearRange)
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
        Text('全部')
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

        Text('作物')
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

        Text('食物')
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
        Text('全部')
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

        Text('起源')
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

        Text('传播')
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
      TextInput({ placeholder: '搜索作物、食物或地点...', text: this.filter.keyword })
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
      Text(`共 ${this.filteredEvents.length} 个事件`)
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
        Text('暂无符合条件的事件')
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
          Text(event.name)
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
          Text(`📍 ${event.location || ''}`)
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_SECONDARY)
            .margin({ top: 4 })
        } else {
          Row() {
            Text(`${event.fromLocation || ''} → ${event.toLocation || ''}`)
              .fontSize(Sizes.FONT_XS)
              .fontColor(Colors.TEXT_SECONDARY)

            if (event.via) {
              Text(`（${event.via}）`)
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
      // 关闭按钮
      Row() {
        Blank()
        Text('×')
          .fontSize(24)
          .fontColor('#FFFFFF')
          .opacity(0.8)
          .onClick(() => {
            this.showModal = false;
            this.selectedEvent = null;
          })
      }
      .width('100%')
      .padding({ right: Sizes.SPACING_MD, top: Sizes.SPACING_SM })

      // 头部
      Column() {
        Text(this.getEventTypeLabel(this.selectedEvent!))
          .fontSize(Sizes.FONT_XS)
          .fontColor('#FFFFFF')
          .backgroundColor('rgba(255,255,255,0.2)')
          .padding({ left: 10, right: 10, top: 4, bottom: 4 })
          .borderRadius(12)
          .margin({ bottom: Sizes.SPACING_SM })

        Text(this.selectedEvent?.name || '')
          .fontSize(Sizes.FONT_XXL)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')

        Text(this.selectedEvent?.displayTime || '')
          .fontSize(Sizes.FONT_SM)
          .fontColor('#FFFFFF')
          .opacity(0.9)
          .margin({ top: Sizes.SPACING_XS })
      }
      .width('100%')
      .padding(Sizes.SPACING_LG)
      .backgroundColor(getEventColor(this.selectedEvent!.entityType, this.selectedEvent!.eventType))
      .borderRadius({ topLeft: Sizes.RADIUS_MEDIUM, topRight: Sizes.RADIUS_MEDIUM })

      // 内容
      Column() {
        if (this.selectedEvent?.eventType === 'origin') {
          this.DetailRow('起源地', `📍 ${this.selectedEvent?.location || ''}`, this.selectedEvent?.locationId)
        } else {
          this.DetailRow('传播路径',
            `${this.selectedEvent?.fromLocation || ''} → ${this.selectedEvent?.toLocation || ''}`,
            undefined)

          if (this.selectedEvent?.via) {
            this.DetailRow('传播途径', this.selectedEvent.via, undefined)
          }
        }

        // 简介
        Column() {
          Text('简介')
            .fontSize(Sizes.FONT_XS)
            .fontColor(Colors.TEXT_HINT)

          Text(this.selectedEvent?.description || '')
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
      Button(`查看${this.selectedEvent?.entityType === 'crop' ? '作物' : '食物'}详情 →`)
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
