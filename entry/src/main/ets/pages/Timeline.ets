/**
 * 食物全球史 - 时间线页面
 */

import router from '@ohos.router';
import { Colors, Sizes, NavIcons } from '../common/Constants';
import { timelineService } from '../services/TimelineService';
import { languageService, Language } from '../services/LanguageService';
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
  @State currentLang: Language = languageService.getLanguage();

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

  toggleLanguage(): void {
    this.currentLang = languageService.toggleLanguage();
  }

  goHome(): void {
    router.clear();
    router.pushUrl({ url: 'pages/Index' });
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

          Text(languageService.getToggleButtonText())
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

      Text(languageService.t('tabs.timeline'))
        .fontSize(Sizes.FONT_TITLE)
        .fontWeight(FontWeight.Bold)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .margin({ top: Sizes.SPACING_SM })

      Text(languageService.t('sections.timelineIntro'))
        .fontSize(Sizes.FONT_SM)
        .fontColor(Colors.TEXT_ON_PRIMARY)
        .opacity(0.9)
        .margin({ top: Sizes.SPACING_XS })
    }
    .width('100%')
    .padding({
      top: Sizes.SPACING_SM,
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
      this.StatItem(this.totalEvents.toString(), languageService.t('labels.events'))
      this.StatItem(this.totalCrops.toString(), languageService.t('tabs.crops'))
      this.StatItem(this.totalFoods.toString(), languageService.t('tabs.foods'))
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
      this.LegendItem('#4CAF50', languageService.t('legend.cropOrigin'))
      this.LegendItem('#2196F3', languageService.t('legend.cropSpread'))
      this.LegendItem('#FF9800', languageService.t('legend.foodOrigin'))
      this.LegendItem('#9C27B0', languageService.t('legend.foodSpread'))
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
        Text(languageService.getEraName(era.id))
          .fontSize(Sizes.FONT_LG)
          .fontWeight(FontWeight.Bold)
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

      // 事件数量
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

  @Builder
  BottomNav() {
    Row() {
      Text(languageService.t('buttons.backToHome'))
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
