import type { TimelineEvent, TimelineFilter, Era, TimelineEntityType, TimelineEventType } from '@/types'
import { ERAS } from '@/types'
import { dataService } from './dataService'

class TimelineService {
  private events: TimelineEvent[] = []
  private initialized = false

  constructor() {
    this.buildTimelineEvents()
  }

  // 从显示文本解析年份
  private parseYearFromDisplay(display: string): number | undefined {
    if (!display) return undefined

    // 匹配 "公元前XXX年"
    let match = display.match(/公元前(\d+)年/)
    if (match) return -parseInt(match[1])

    // 匹配 "XXXX年"
    match = display.match(/^(\d{3,4})年/)
    if (match) return parseInt(match[1])

    // 匹配 "XX世纪"
    match = display.match(/(\d+)世纪/)
    if (match) {
      const century = parseInt(match[1])
      // 16世纪 -> 1550年 (世纪中期)
      return (century - 1) * 100 + 50
    }

    // 匹配 "XXXX年代"
    match = display.match(/(\d{4})年代/)
    if (match) return parseInt(match[1]) + 5

    // 匹配朝代
    const dynastyYears: Record<string, number> = {
      '唐代': 700,
      '宋代': 1050,
      '元代': 1300,
      '明代': 1500,
      '清代': 1750,
      '中世纪': 1200,
      '古代': -500
    }
    for (const [dynasty, year] of Object.entries(dynastyYears)) {
      if (display.includes(dynasty)) return year
    }

    return undefined
  }

  private buildTimelineEvents() {
    if (this.initialized) return

    const events: TimelineEvent[] = []
    let eventId = 0

    // 处理作物数据
    dataService.getAllCrops().forEach(crop => {
      // 起源事件
      const originYear = crop.origin.time.year ?? this.parseYearFromDisplay(crop.origin.time.display)
      if (originYear !== undefined) {
        events.push({
          id: `event-${eventId++}`,
          entityId: crop.id,
          entityType: 'crop',
          eventType: 'origin',
          year: originYear,
          displayTime: crop.origin.time.display,
          name: crop.name,
          description: crop.description,
          location: dataService.getLocationName(crop.origin.location),
          locationId: crop.origin.location
        })
      }

      // 传播事件
      crop.spreads.forEach(spread => {
        const spreadYear = spread.time.year ?? this.parseYearFromDisplay(spread.time.display)
        if (spreadYear !== undefined) {
          events.push({
            id: `event-${eventId++}`,
            entityId: crop.id,
            entityType: 'crop',
            eventType: 'spread',
            year: spreadYear,
            displayTime: spread.time.display,
            name: crop.name,
            description: crop.description,
            fromLocation: dataService.getLocationName(spread.from),
            fromLocationId: spread.from,
            toLocation: dataService.getLocationName(spread.to),
            toLocationId: spread.to,
            via: spread.via
          })
        }
      })
    })

    // 处理食物数据
    dataService.getAllFoods().forEach(food => {
      // 起源事件
      const originYear = food.origin.time.year ?? this.parseYearFromDisplay(food.origin.time.display)
      if (originYear !== undefined) {
        events.push({
          id: `event-${eventId++}`,
          entityId: food.id,
          entityType: 'food',
          eventType: 'origin',
          year: originYear,
          displayTime: food.origin.time.display,
          name: food.name,
          description: food.description,
          location: dataService.getLocationName(food.origin.location),
          locationId: food.origin.location
        })
      }

      // 传播事件
      food.spreads.forEach(spread => {
        const spreadYear = spread.time.year ?? this.parseYearFromDisplay(spread.time.display)
        if (spreadYear !== undefined) {
          events.push({
            id: `event-${eventId++}`,
            entityId: food.id,
            entityType: 'food',
            eventType: 'spread',
            year: spreadYear,
            displayTime: spread.time.display,
            name: food.name,
            description: food.description,
            fromLocation: dataService.getLocationName(spread.from),
            fromLocationId: spread.from,
            toLocation: dataService.getLocationName(spread.to),
            toLocationId: spread.to,
            via: spread.via
          })
        }
      })
    })

    // 按年份排序
    this.events = events.sort((a, b) => a.year - b.year)
    this.initialized = true
  }

  // 获取所有时代
  getEras(): Era[] {
    return ERAS
  }

  // 根据ID获取时代
  getEraById(eraId: string): Era | undefined {
    return ERAS.find(era => era.id === eraId)
  }

  // 获取所有事件
  getAllEvents(): TimelineEvent[] {
    return this.events
  }

  // 获取某个时代的事件
  getEventsByEra(eraId: string): TimelineEvent[] {
    const era = this.getEraById(eraId)
    if (!era) return []

    return this.events.filter(event =>
      event.year >= era.startYear && event.year < era.endYear
    )
  }

  // 获取某个时代的事件数量
  getEventCountByEra(eraId: string): number {
    return this.getEventsByEra(eraId).length
  }

  // 筛选事件
  filterEvents(events: TimelineEvent[], filter: TimelineFilter): TimelineEvent[] {
    return events.filter(event => {
      // 实体类型筛选
      if (filter.entityType !== 'all' && event.entityType !== filter.entityType) {
        return false
      }

      // 事件类型筛选
      if (filter.eventType !== 'all' && event.eventType !== filter.eventType) {
        return false
      }

      // 关键词筛选
      if (filter.keyword) {
        const keyword = filter.keyword.toLowerCase()
        const matchName = event.name.toLowerCase().includes(keyword)
        const matchLocation = event.location?.toLowerCase().includes(keyword)
        const matchFrom = event.fromLocation?.toLowerCase().includes(keyword)
        const matchTo = event.toLocation?.toLowerCase().includes(keyword)
        const matchVia = event.via?.toLowerCase().includes(keyword)

        if (!matchName && !matchLocation && !matchFrom && !matchTo && !matchVia) {
          return false
        }
      }

      return true
    })
  }

  // 按年份分组事件
  groupEventsByYear(events: TimelineEvent[]): Map<number, TimelineEvent[]> {
    const grouped = new Map<number, TimelineEvent[]>()

    events.forEach(event => {
      const existing = grouped.get(event.year) || []
      existing.push(event)
      grouped.set(event.year, existing)
    })

    return grouped
  }

  // 格式化年份显示
  formatYear(year: number): string {
    if (year < 0) {
      return `公元前${Math.abs(year)}年`
    }
    return `${year}年`
  }

  // 获取事件统计
  getEventStats(events: TimelineEvent[]): {
    total: number
    cropOrigin: number
    cropSpread: number
    foodOrigin: number
    foodSpread: number
  } {
    return {
      total: events.length,
      cropOrigin: events.filter(e => e.entityType === 'crop' && e.eventType === 'origin').length,
      cropSpread: events.filter(e => e.entityType === 'crop' && e.eventType === 'spread').length,
      foodOrigin: events.filter(e => e.entityType === 'food' && e.eventType === 'origin').length,
      foodSpread: events.filter(e => e.entityType === 'food' && e.eventType === 'spread').length
    }
  }

  // 获取时代的年份范围显示文本
  getEraYearRange(era: Era): string {
    const startText = era.startYear < 0 ? `公元前${Math.abs(era.startYear)}年` : `${era.startYear}年`
    const endText = era.endYear < 0 ? `公元前${Math.abs(era.endYear)}年` :
                    era.endYear > 2000 ? '至今' : `${era.endYear}年`
    return `${startText} - ${endText}`
  }
}

export const timelineService = new TimelineService()
