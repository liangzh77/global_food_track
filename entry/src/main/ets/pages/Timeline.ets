/**
 * 食物全球史 - 时间线页面
 */

import router from '@ohos.router';
import { Colors, Sizes } from '../common/Constants';
import { timelineService } from '../services/TimelineService';
import { Era, TimelineEvent } from '../models/DataModels';

class EraParams {
  eraId: string;

  constructor(eraId: string) {
    this.eraId = eraId;
  }
}

@Entry
@Component
struct Timeline {
  @State eras: Era[] = [];
  @State totalEvents: number = 0;
  @State totalCrops: number = 0;
  @State totalFoods: number = 0;

  aboutToAppear(): void {
    timelineService.init();
    this.eras = timelineService.getEras();

    const allEvents = timelineService.getAllEvents();
    this.totalEvents = allEvents.length;

    // 计算不重复的作物和食物数量
    const cropIds = new Set<string>();
    const foodIds = new Set<string>();
    allEvents.forEach((e: TimelineEvent) => {
      if (e.entityType === 'crop') {
        cropIds.add(e.entityId);
      } else {
        foodIds.add(e.entityId);
      }
    });
    this.totalCrops = cropIds.size;
    this.totalFoods = foodIds.size;
  }

  build() {
    Column() {
      // 头部
      this.Header()

      Scroll() {
        Column() {
          // 统计概览
          this.StatsOverview()

          // 图例
          this.Legend()

          // 时代卡片列表
          this.EraList()
        }
        .width('100%')
        .padding({ bottom: 80 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)

      // 底部返回
      this.BottomNav()
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Colors.BACKGROUND)
  }

  @Builder
  Header() {
    Column() {
      Text('时间线')
        .fontSize(Sizes.FONT_TITLE)
        .fontWeight(FontWeight.Bold)
        .fontColor(Colors.TEXT_ON_PRIMARY)

      Text('探索作物与食物的历史传播')
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.9)
        .margin({ top: Sizes.SPACING_XS })
    }
    .width('100%')
    .padding({
      top: Sizes.SPACING_LG,
      bottom: Sizes.SPACING_LG,
      left: Sizes.SPACING_MD,
      right: Sizes.SPACING_MD
    })
    .backgroundColor(Colors.PRIMARY)
    .alignItems(HorizontalAlign.Center)
  }

  @Builder
  StatsOverview() {
    Row() {
      this.StatItem(this.totalEvents.toString(), '历史事件')
      this.StatItem(this.totalCrops.toString(), '作物')
      this.StatItem(this.totalFoods.toString(), '食物')
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceAround)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .padding(Sizes.SPACING_MD)
    .borderRadius(Sizes.RADIUS_MEDIUM)
    .margin({
      left: Sizes.SPACING_MD,
      right: Sizes.SPACING_MD,
      top: -Sizes.SPACING_SM,
      bottom: Sizes.SPACING_MD
    })
    .shadow({
      radius: 8,
      color: '#1A000000',
      offsetY: 2
    })
  }

  @Builder
  StatItem(value: string, label: string) {
    Column() {
      Text(value)
        .fontSize(Sizes.FONT_XXL)
        .fontWeight(FontWeight.Bold)
        .fontColor(Colors.PRIMARY)

      Text(label)
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.TEXT_SECONDARY)
        .margin({ top: Sizes.SPACING_XS })
    }
  }

  @Builder
  Legend() {
    Row() {
      this.LegendItem('#4CAF50', '作物起源')
      this.LegendItem('#2196F3', '作物传播')
      this.LegendItem('#FF9800', '食物起源')
      this.LegendItem('#9C27B0', '食物传播')
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD, bottom: Sizes.SPACING_MD })
  }

  @Builder
  LegendItem(color: string, label: string) {
    Row() {
      Circle()
        .width(10)
        .height(10)
        .fill(color)
        .margin({ right: Sizes.SPACING_XS })

      Text(label)
        .fontSize(Sizes.FONT_XS)
        .fontColor(Colors.TEXT_SECONDARY)
    }
    .margin({ right: Sizes.SPACING_MD })
  }

  @Builder
  EraList() {
    Column() {
      ForEach(this.eras, (era: Era, index: number) => {
        Column() {
          // 连接线
          if (index > 0) {
            Divider()
              .width(2)
              .height(16)
              .color(Colors.PRIMARY_LIGHT)
              .margin({ left: 32 })
          }

          // 时代卡片
          this.EraCard(era)
        }
      })
    }
    .width('100%')
    .padding({ left: Sizes.SPACING_MD, right: Sizes.SPACING_MD })
  }

  @Builder
  EraCard(era: Era) {
    Row() {
      // 图标
      Text(era.icon)
        .fontSize(36)
        .width(50)
        .textAlign(TextAlign.Center)
        .margin({ right: Sizes.SPACING_MD })

      // 信息
      Column() {
        Text(era.name)
          .fontSize(Sizes.FONT_LG)
          .fontWeight(FontWeight.Bold)
          .fontColor(Colors.TEXT_PRIMARY)

        Text(timelineService.getEraYearRange(era))
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_SECONDARY)
          .margin({ top: 2 })

        Text(era.description)
          .fontSize(Sizes.FONT_XS)
          .fontColor(Colors.TEXT_HINT)
          .margin({ top: 4 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      // 事件数量
      Column() {
        Text(timelineService.getEventCountByEra(era.id).toString())
          .fontSize(Sizes.FONT_LG)
          .fontWeight(FontWeight.Bold)
          .fontColor(Colors.PRIMARY)

        Text('事件')
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

  @Builder
  BottomNav() {
    Row() {
      Text('← 返回首页')
        .fontSize(Sizes.FONT_MD)
        .fontColor(Colors.PRIMARY)
        .fontWeight(FontWeight.Medium)
        .onClick(() => {
          router.back();
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .padding(Sizes.SPACING_MD)
    .backgroundColor(Colors.CARD_BACKGROUND)
    .shadow({
      radius: 8,
      color: '#1A000000',
      offsetY: -2
    })
  }
}
