/**
 * 食物全球史 - 时间线服务
 */

import {
  TimelineEvent,
  TimelineFilter,
  Era,
  ERAS,
  TimelineEntityType,
  TimelineEventType,
  EventStats
} from '../models/DataModels';
import { dataService } from './DataService';

class TimelineService {
  private events: TimelineEvent[] = [];
  private initialized: boolean = false;

  init(): void {
    if (this.initialized) return;
    this.buildTimelineEvents();
    this.initialized = true;
  }

  private buildTimelineEvents(): void {
    let eventId = 0;

    // 处理作物数据
    dataService.getAllCrops().forEach(crop => {
      // 起源事件
      if (crop.origin.time.year !== undefined) {
        const event = new TimelineEvent();
        event.id = `event-${eventId++}`;
        event.entityId = crop.id;
        event.entityType = 'crop';
        event.eventType = 'origin';
        event.year = crop.origin.time.year;
        event.displayTime = crop.origin.time.display;
        event.name = crop.name;
        event.description = crop.description;
        event.location = dataService.getLocationName(crop.origin.location);
        event.locationId = crop.origin.location;
        this.events.push(event);
      }

      // 传播事件
      crop.spreads.forEach(spread => {
        if (spread.time.year !== undefined) {
          const event = new TimelineEvent();
          event.id = `event-${eventId++}`;
          event.entityId = crop.id;
          event.entityType = 'crop';
          event.eventType = 'spread';
          event.year = spread.time.year;
          event.displayTime = spread.time.display;
          event.name = crop.name;
          event.description = crop.description;
          event.fromLocation = dataService.getLocationName(spread.from);
          event.fromLocationId = spread.from;
          event.toLocation = dataService.getLocationName(spread.to);
          event.toLocationId = spread.to;
          event.via = spread.via || '';
          this.events.push(event);
        }
      });
    });

    // 处理食物数据
    dataService.getAllFoods().forEach(food => {
      // 起源事件
      if (food.origin.time.year !== undefined) {
        const event = new TimelineEvent();
        event.id = `event-${eventId++}`;
        event.entityId = food.id;
        event.entityType = 'food';
        event.eventType = 'origin';
        event.year = food.origin.time.year;
        event.displayTime = food.origin.time.display;
        event.name = food.name;
        event.description = food.description;
        event.location = dataService.getLocationName(food.origin.location);
        event.locationId = food.origin.location;
        this.events.push(event);
      }

      // 传播事件
      food.spreads.forEach(spread => {
        if (spread.time.year !== undefined) {
          const event = new TimelineEvent();
          event.id = `event-${eventId++}`;
          event.entityId = food.id;
          event.entityType = 'food';
          event.eventType = 'spread';
          event.year = spread.time.year;
          event.displayTime = spread.time.display;
          event.name = food.name;
          event.description = food.description;
          event.fromLocation = dataService.getLocationName(spread.from);
          event.fromLocationId = spread.from;
          event.toLocation = dataService.getLocationName(spread.to);
          event.toLocationId = spread.to;
          event.via = spread.via || '';
          this.events.push(event);
        }
      });
    });

    // 按年份排序
    this.events.sort((a, b) => a.year - b.year);
  }

  // 获取所有时代
  getEras(): Era[] {
    return ERAS;
  }

  // 根据ID获取时代
  getEraById(eraId: string): Era | undefined {
    return ERAS.find(era => era.id === eraId);
  }

  // 获取所有事件
  getAllEvents(): TimelineEvent[] {
    return this.events;
  }

  // 获取某个时代的事件
  getEventsByEra(eraId: string): TimelineEvent[] {
    const era = this.getEraById(eraId);
    if (!era) return [];

    return this.events.filter(event =>
      event.year >= era.startYear && event.year < era.endYear
    );
  }

  // 获取某个时代的事件数量
  getEventCountByEra(eraId: string): number {
    return this.getEventsByEra(eraId).length;
  }

  // 筛选事件
  filterEvents(events: TimelineEvent[], filter: TimelineFilter): TimelineEvent[] {
    return events.filter(event => {
      // 实体类型筛选
      if (filter.entityType !== 'all' && event.entityType !== filter.entityType) {
        return false;
      }

      // 事件类型筛选
      if (filter.eventType !== 'all' && event.eventType !== filter.eventType) {
        return false;
      }

      // 关键词筛选
      if (filter.keyword && filter.keyword.length > 0) {
        const keyword = filter.keyword.toLowerCase();
        const matchName = event.name.toLowerCase().includes(keyword);
        const matchLocation = event.location ? event.location.toLowerCase().includes(keyword) : false;
        const matchFrom = event.fromLocation ? event.fromLocation.toLowerCase().includes(keyword) : false;
        const matchTo = event.toLocation ? event.toLocation.toLowerCase().includes(keyword) : false;
        const matchVia = event.via ? event.via.toLowerCase().includes(keyword) : false;

        if (!matchName && !matchLocation && !matchFrom && !matchTo && !matchVia) {
          return false;
        }
      }

      return true;
    });
  }

  // 按年份分组事件
  groupEventsByYear(events: TimelineEvent[]): Map<number, TimelineEvent[]> {
    const grouped = new Map<number, TimelineEvent[]>();

    events.forEach(event => {
      const existing = grouped.get(event.year) || [];
      existing.push(event);
      grouped.set(event.year, existing);
    });

    return grouped;
  }

  // 格式化年份显示
  formatYear(year: number): string {
    if (year < 0) {
      return `公元前${Math.abs(year)}年`;
    }
    return `${year}年`;
  }

  // 获取时代的年份范围显示文本
  getEraYearRange(era: Era): string {
    const startText = era.startYear < 0 ? `公元前${Math.abs(era.startYear)}年` : `${era.startYear}年`;
    const endText = era.endYear < 0 ? `公元前${Math.abs(era.endYear)}年` :
                    era.endYear > 2000 ? '至今' : `${era.endYear}年`;
    return `${startText} - ${endText}`;
  }

  // 获取事件统计
  getEventStats(events: TimelineEvent[]): EventStats {
    const stats = new EventStats();
    stats.total = events.length;
    stats.cropOrigin = events.filter(e => e.entityType === 'crop' && e.eventType === 'origin').length;
    stats.cropSpread = events.filter(e => e.entityType === 'crop' && e.eventType === 'spread').length;
    stats.foodOrigin = events.filter(e => e.entityType === 'food' && e.eventType === 'origin').length;
    stats.foodSpread = events.filter(e => e.entityType === 'food' && e.eventType === 'spread').length;
    return stats;
  }
}

// 导出单例
export const timelineService = new TimelineService();
