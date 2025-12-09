import { ref, computed } from 'vue'

// 导入 UI 翻译数据
import uiData from '@data/i18n/ui.json'
import erasData from '@data/i18n/eras.json'

// 语言类型
export type Language = 'zh' | 'en'

// 本地存储 key
const LANGUAGE_KEY = 'global-food-history-language'

// 当前语言状态（响应式）
const currentLanguage = ref<Language>(loadLanguage())

// 从本地存储加载语言设置
function loadLanguage(): Language {
  if (typeof window !== 'undefined') {
    const saved = localStorage.getItem(LANGUAGE_KEY)
    if (saved === 'en' || saved === 'zh') {
      return saved
    }
  }
  return 'zh' // 默认中文
}

// 保存语言设置到本地存储
function saveLanguage(lang: Language): void {
  if (typeof window !== 'undefined') {
    localStorage.setItem(LANGUAGE_KEY, lang)
  }
}

// UI 文本类型
interface LocalizedText {
  zh: string
  en: string
}

// 时代数据类型
interface EraData {
  id: string
  name: string
  nameEn: string
  icon: string
  startYear: number
  endYear: number
  description: string
  descriptionEn: string
}

class LanguageService {
  // 获取当前语言
  get language(): Language {
    return currentLanguage.value
  }

  // 设置语言
  setLanguage(lang: Language): void {
    currentLanguage.value = lang
    saveLanguage(lang)
  }

  // 切换语言
  toggleLanguage(): void {
    const newLang = currentLanguage.value === 'zh' ? 'en' : 'zh'
    this.setLanguage(newLang)
  }

  // 是否是英文
  get isEnglish(): boolean {
    return currentLanguage.value === 'en'
  }

  // 获取本地化文本（从 {zh, en} 对象中获取）
  t(textObj: LocalizedText | undefined): string {
    if (!textObj) return ''
    return currentLanguage.value === 'en' ? textObj.en : textObj.zh
  }

  // UI 文本快捷访问
  get ui() {
    return uiData
  }

  // 获取 UI 文本
  getUIText(path: string): string {
    const parts = path.split('.')
    let current: any = uiData
    for (const part of parts) {
      if (current && typeof current === 'object' && part in current) {
        current = current[part]
      } else {
        return path // 找不到则返回路径本身
      }
    }
    if (current && typeof current === 'object' && 'zh' in current && 'en' in current) {
      return this.t(current as LocalizedText)
    }
    return path
  }

  // 获取时代数据（已本地化）
  getEras(): Array<{
    id: string
    name: string
    icon: string
    startYear: number
    endYear: number
    description: string
  }> {
    return (erasData as EraData[]).map(era => ({
      id: era.id,
      name: currentLanguage.value === 'en' ? era.nameEn : era.name,
      icon: era.icon,
      startYear: era.startYear,
      endYear: era.endYear,
      description: currentLanguage.value === 'en' ? era.descriptionEn : era.description
    }))
  }

  // 获取本地化的实体名称（作物、食物、地点）
  // 支持带 nameEn 字段的实体
  getName(entity: { name: string; nameEn?: string } | undefined): string {
    if (!entity) return ''
    if (currentLanguage.value === 'en' && entity.nameEn) {
      return entity.nameEn
    }
    return entity.name
  }

  // 获取本地化的描述
  getDescription(entity: { description: string; descriptionEn?: string } | undefined): string {
    if (!entity) return ''
    if (currentLanguage.value === 'en' && entity.descriptionEn) {
      return entity.descriptionEn
    }
    return entity.description
  }

  // 获取本地化的别名
  getAlias(entity: { alias?: string[]; aliasEn?: string[] } | undefined): string[] {
    if (!entity) return []
    if (currentLanguage.value === 'en' && entity.aliasEn && entity.aliasEn.length > 0) {
      return entity.aliasEn
    }
    return entity.alias || []
  }

  // 获取本地化的时间显示
  getTimeDisplay(time: { display: string; displayEn?: string } | undefined): string {
    if (!time) return ''
    if (currentLanguage.value === 'en' && time.displayEn) {
      return time.displayEn
    }
    return time.display
  }

  // 获取本地化的传播途径
  getVia(spread: { via?: string; viaEn?: string } | undefined): string | undefined {
    if (!spread) return undefined
    if (currentLanguage.value === 'en' && spread.viaEn) {
      return spread.viaEn
    }
    return spread.via
  }

  // 获取作物类别名称
  getCropCategoryName(category: string): string {
    const categories = uiData.cropCategories as Record<string, LocalizedText>
    if (categories[category]) {
      return this.t(categories[category])
    }
    return category
  }

  // 获取食物类别名称
  getFoodCategoryName(category: string): string {
    const categories = uiData.foodCategories as Record<string, LocalizedText>
    if (categories[category]) {
      return this.t(categories[category])
    }
    return category
  }

  // 获取地点类型名称
  getLocationTypeName(type: string): string {
    const typeNames: Record<string, LocalizedText> = {
      continent: { zh: '大洲', en: 'Continent' },
      country: { zh: '国家', en: 'Country' },
      region: { zh: '地区', en: 'Region' }
    }
    if (typeNames[type]) {
      return this.t(typeNames[type])
    }
    return type
  }
}

// 导出单例
export const languageService = new LanguageService()

// 导出响应式的当前语言（用于组件中监听变化）
export const currentLang = computed(() => currentLanguage.value)

// 导出响应式引用（用于需要直接访问 ref 的场景）
export const languageRef = currentLanguage
