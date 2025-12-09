/**
 * 食物全球史 - 语言服务
 * 负责中英文切换和本地化文本
 */

// 语言类型
export type Language = 'zh' | 'en';

// 本地存储 key
const LANGUAGE_KEY = 'global-food-history-language';

// UI 翻译数据
const UI_TRANSLATIONS: Record<string, Record<string, string>> = {
  // App
  'app.title': { zh: '食物全球史', en: 'Global Food History' },
  'app.subtitle': { zh: '探索作物与食物的起源与传播', en: 'Explore the Origins and Spread of Crops and Foods' },

  // Tabs
  'tabs.crops': { zh: '作物', en: 'Crops' },
  'tabs.foods': { zh: '食物', en: 'Foods' },
  'tabs.regions': { zh: '地区', en: 'Regions' },
  'tabs.timeline': { zh: '时间线', en: 'Timeline' },

  // Crop Categories
  'cropCategories.grain': { zh: '谷物', en: 'Grains' },
  'cropCategories.vegetable': { zh: '蔬菜', en: 'Vegetables' },
  'cropCategories.fruit': { zh: '水果', en: 'Fruits' },
  'cropCategories.legume': { zh: '豆类', en: 'Legumes' },
  'cropCategories.spice': { zh: '香料', en: 'Spices' },
  'cropCategories.beverage': { zh: '饮料作物', en: 'Beverage Crops' },
  'cropCategories.oil': { zh: '油料作物', en: 'Oil Crops' },
  'cropCategories.sugar': { zh: '糖料作物', en: 'Sugar Crops' },
  'cropCategories.nut': { zh: '坚果', en: 'Nuts' },
  'cropCategories.other': { zh: '其他作物', en: 'Other Crops' },

  // Food Categories
  'foodCategories.staple': { zh: '主食', en: 'Staples' },
  'foodCategories.dish': { zh: '菜肴', en: 'Dishes' },
  'foodCategories.beverage': { zh: '饮品', en: 'Beverages' },
  'foodCategories.dessert': { zh: '甜点', en: 'Desserts' },
  'foodCategories.snack': { zh: '小吃', en: 'Snacks' },
  'foodCategories.condiment': { zh: '调味品', en: 'Condiments' },
  'foodCategories.preserved': { zh: '腌制食品', en: 'Preserved Foods' },

  // Sections
  'sections.exploreByCropCategory': { zh: '按类别探索作物', en: 'Explore Crops by Category' },
  'sections.exploreByFoodCategory': { zh: '按类别探索食物', en: 'Explore Foods by Category' },
  'sections.exploreByRegion': { zh: '按地区探索', en: 'Explore by Region' },
  'sections.exploreByEra': { zh: '按时代探索历史', en: 'Explore History by Era' },
  'sections.timelineIntro': { zh: '追溯食物与作物从起源到全球传播的历史轨迹', en: 'Trace the historical journey of foods and crops from origin to global spread' },

  // Labels
  'labels.origin': { zh: '起源', en: 'Origin' },
  'labels.spread': { zh: '传播', en: 'Spread' },
  'labels.originLocation': { zh: '起源地', en: 'Place of Origin' },
  'labels.originTime': { zh: '起源时间', en: 'Time of Origin' },
  'labels.spreadHistory': { zh: '传播历史', en: 'Spread History' },
  'labels.spreadRoute': { zh: '传播路径', en: 'Spread Route' },
  'labels.spreadMethod': { zh: '传播途径', en: 'Spread Method' },
  'labels.spreadPath': { zh: '传播路径', en: 'Spread Path' },
  'labels.spreadVia': { zh: '传播途径', en: 'Spread Via' },
  'labels.currentRegions': { zh: '当前主产区', en: 'Current Main Regions' },
  'labels.popularRegions': { zh: '流行地区', en: 'Popular Regions' },
  'labels.basicInfo': { zh: '基本信息', en: 'Basic Information' },
  'labels.description': { zh: '简介', en: 'Description' },
  'labels.category': { zh: '类别', en: 'Category' },
  'labels.alias': { zh: '别名', en: 'Also Known As' },
  'labels.ingredients': { zh: '主要食材', en: 'Main Ingredients' },
  'labels.relatedFoods': { zh: '相关食物', en: 'Related Foods' },
  'labels.originCrops': { zh: '起源作物', en: 'Origin Crops' },
  'labels.originFoods': { zh: '起源食物', en: 'Origin Foods' },
  'labels.mainCrops': { zh: '主产作物', en: 'Main Crops' },
  'labels.popularFoods': { zh: '流行食物', en: 'Popular Foods' },
  'labels.countries': { zh: '国家', en: 'Countries' },
  'labels.subRegions': { zh: '子地区', en: 'Sub-regions' },
  'labels.searchResults': { zh: '搜索结果', en: 'Search Results' },
  'labels.events': { zh: '事件', en: 'Events' },

  // Filters
  'filters.all': { zh: '全部', en: 'All' },
  'filters.crop': { zh: '作物', en: 'Crop' },
  'filters.food': { zh: '食物', en: 'Food' },
  'filters.cropOrigin': { zh: '作物起源', en: 'Crop Origin' },
  'filters.cropSpread': { zh: '作物传播', en: 'Crop Spread' },
  'filters.foodOrigin': { zh: '食物起源', en: 'Food Origin' },
  'filters.foodSpread': { zh: '食物传播', en: 'Food Spread' },

  // Legend
  'legend.cropOrigin': { zh: '作物起源', en: 'Crop Origin' },
  'legend.cropSpread': { zh: '作物传播', en: 'Crop Spread' },
  'legend.foodOrigin': { zh: '食物起源', en: 'Food Origin' },
  'legend.foodSpread': { zh: '食物传播', en: 'Food Spread' },

  // Buttons
  'buttons.back': { zh: '返回', en: 'Back' },
  'buttons.home': { zh: '首页', en: 'Home' },
  'buttons.search': { zh: '搜索', en: 'Search' },
  'buttons.viewDetails': { zh: '查看详情', en: 'View Details' },
  'buttons.viewCropDetails': { zh: '查看作物详情 →', en: 'View Crop Details →' },
  'buttons.viewFoodDetails': { zh: '查看食物详情 →', en: 'View Food Details →' },
  'buttons.viewFullTimeline': { zh: '查看完整时间线 →', en: 'View Full Timeline →' },
  'buttons.backToHome': { zh: '← 返回首页', en: '← Back to Home' },

  // Placeholders
  'placeholders.search': { zh: '搜索作物、食物或地点...', en: 'Search crops, foods, or places...' },
  'placeholders.enterKeyword': { zh: '请输入关键词搜索', en: 'Enter a keyword to search' },
  'placeholders.searchTimeline': { zh: '搜索作物、食物或地点...', en: 'Search crops, foods, or places...' },

  // Units
  'units.events': { zh: '个事件', en: 'events' },
  'units.countries': { zh: '个国家', en: 'countries' },
  'units.originCrops': { zh: '种起源作物', en: 'origin crops' },
  'units.originFoods': { zh: '种起源食物', en: 'origin foods' },

  // Loading states
  'loading.searching': { zh: '搜索中...', en: 'Searching...' },

  // Empty states
  'empty.noResults': { zh: '暂无结果', en: 'No results' },
  'empty.noEvents': { zh: '暂无符合条件的事件', en: 'No matching events' },
  'empty.clickToExplore': { zh: '点击探索', en: 'Click to explore' },
  'empty.tryAnotherKeyword': { zh: '试试换个关键词？', en: 'Try a different keyword?' },

  // Location types
  'locationTypes.continent': { zh: '大洲', en: 'Continent' },
  'locationTypes.country': { zh: '国家', en: 'Country' },
  'locationTypes.region': { zh: '地区', en: 'Region' },

  // Event types
  'eventTypes.origin': { zh: '起源', en: 'Origin' },
  'eventTypes.spread': { zh: '传播', en: 'Spread' },

  // Entity types
  'entityTypes.crop': { zh: '作物', en: 'Crop' },
  'entityTypes.food': { zh: '食物', en: 'Food' },
  'entityTypes.location': { zh: '地点', en: 'Location' },

  // Language names
  'language.zh': { zh: '中文', en: '中文' },
  'language.en': { zh: 'EN', en: 'EN' }
};

// 时代数据（双语）
const ERAS_I18N: Record<string, { name: string; nameEn: string; description: string; descriptionEn: string }> = {
  'prehistoric': {
    name: '史前时代',
    nameEn: 'Prehistoric Era',
    description: '农业革命的开端，人类开始驯化作物',
    descriptionEn: 'The beginning of the agricultural revolution, humans started domesticating crops'
  },
  'ancient': {
    name: '古代文明',
    nameEn: 'Ancient Civilizations',
    description: '四大文明古国时期，农业技术传播',
    descriptionEn: 'Era of four ancient civilizations, agricultural technology spread'
  },
  'classical': {
    name: '古典时期',
    nameEn: 'Classical Period',
    description: '希腊罗马时代，丝绸之路开通',
    descriptionEn: 'Greco-Roman era, the Silk Road opened'
  },
  'medieval': {
    name: '中世纪',
    nameEn: 'Medieval Period',
    description: '阿拉伯商人推动东西方交流',
    descriptionEn: 'Arab merchants promoted East-West exchange'
  },
  'exploration': {
    name: '大航海时代',
    nameEn: 'Age of Exploration',
    description: '哥伦布大交换，新旧大陆作物互通',
    descriptionEn: 'Columbian Exchange, crops exchanged between Old and New World'
  },
  'modern': {
    name: '近现代',
    nameEn: 'Modern Era',
    description: '工业革命后的全球化时代',
    descriptionEn: 'Globalization era after the Industrial Revolution'
  }
};

class LanguageServiceClass {
  private currentLanguage: Language = 'zh';
  private listeners: ((lang: Language) => void)[] = [];

  constructor() {
    // 尝试从 AppStorage 加载语言设置
    this.loadLanguage();
  }

  private loadLanguage(): void {
    const stored = AppStorage.get<string>(LANGUAGE_KEY);
    if (stored === 'en' || stored === 'zh') {
      this.currentLanguage = stored;
    }
  }

  private saveLanguage(lang: Language): void {
    AppStorage.setOrCreate(LANGUAGE_KEY, lang);
  }

  // 获取当前语言
  getLanguage(): Language {
    return this.currentLanguage;
  }

  // 设置语言
  setLanguage(lang: Language): void {
    if (this.currentLanguage !== lang) {
      this.currentLanguage = lang;
      this.saveLanguage(lang);
      this.notifyListeners();
    }
  }

  // 切换语言
  toggleLanguage(): Language {
    const newLang: Language = this.currentLanguage === 'zh' ? 'en' : 'zh';
    this.setLanguage(newLang);
    return newLang;
  }

  // 是否是英文
  isEnglish(): boolean {
    return this.currentLanguage === 'en';
  }

  // 获取翻译文本（通过 key）
  t(key: string): string {
    const translations = UI_TRANSLATIONS[key];
    if (translations) {
      return translations[this.currentLanguage] || translations['zh'] || key;
    }
    return key;
  }

  // 获取本地化名称（优先返回当前语言）
  getName(entity: { name: string; nameEn?: string } | undefined): string {
    if (!entity) return '';
    if (this.currentLanguage === 'en' && entity.nameEn) {
      return entity.nameEn;
    }
    return entity.name;
  }

  // 获取本地化描述
  getDescription(entity: { description: string; descriptionEn?: string } | undefined): string {
    if (!entity) return '';
    if (this.currentLanguage === 'en' && entity.descriptionEn) {
      return entity.descriptionEn;
    }
    return entity.description;
  }

  // 获取本地化别名
  getAlias(entity: { alias?: string[]; aliasEn?: string[] } | undefined): string[] {
    if (!entity) return [];
    if (this.currentLanguage === 'en' && entity.aliasEn && entity.aliasEn.length > 0) {
      return entity.aliasEn;
    }
    return entity.alias || [];
  }

  // 获取本地化时间显示
  getTimeDisplay(time: { display: string; displayEn?: string } | undefined): string {
    if (!time) return '';
    if (this.currentLanguage === 'en' && time.displayEn) {
      return time.displayEn;
    }
    return time.display;
  }

  // 获取本地化传播途径
  getVia(spread: { via?: string; viaEn?: string } | undefined): string | undefined {
    if (!spread) return undefined;
    if (this.currentLanguage === 'en' && spread.viaEn) {
      return spread.viaEn;
    }
    return spread.via;
  }

  // 获取作物类别名称
  getCropCategoryName(category: string): string {
    return this.t('cropCategories.' + category);
  }

  // 获取食物类别名称
  getFoodCategoryName(category: string): string {
    return this.t('foodCategories.' + category);
  }

  // 获取地点类型名称
  getLocationTypeName(type: string): string {
    return this.t('locationTypes.' + type);
  }

  // 获取事件类型名称
  getEventTypeName(eventType: string): string {
    return this.t('eventTypes.' + eventType);
  }

  // 获取实体类型名称
  getEntityTypeName(entityType: string): string {
    return this.t('entityTypes.' + entityType);
  }

  // 获取时间线实体类型名称（用于显示"作物起源"、"食物传播"等）
  getTimelineEntityTypeName(entityType: string): string {
    return this.t('entityTypes.' + entityType);
  }

  // 获取时代名称（双语）
  getEraName(eraId: string): string {
    const era = ERAS_I18N[eraId];
    if (!era) return eraId;
    return this.currentLanguage === 'en' ? era.nameEn : era.name;
  }

  // 获取时代描述（双语）
  getEraDescription(eraId: string): string {
    const era = ERAS_I18N[eraId];
    if (!era) return '';
    return this.currentLanguage === 'en' ? era.descriptionEn : era.description;
  }

  // 获取语言切换按钮文字
  getToggleButtonText(): string {
    return this.currentLanguage === 'zh' ? 'EN' : '中文';
  }

  // 注册语言变化监听器
  addListener(listener: (lang: Language) => void): void {
    this.listeners.push(listener);
  }

  // 移除监听器
  removeListener(listener: (lang: Language) => void): void {
    const index = this.listeners.indexOf(listener);
    if (index > -1) {
      this.listeners.splice(index, 1);
    }
  }

  // 通知所有监听器
  private notifyListeners(): void {
    this.listeners.forEach(listener => {
      listener(this.currentLanguage);
    });
  }
}

// 导出单例
export const languageService = new LanguageServiceClass();

// 导出当前语言获取函数（用于组件中）
export function getCurrentLanguage(): Language {
  return languageService.getLanguage();
}
