/**
 * 食物全球史 - 语言服务
 * 负责中英文切换和本地化文本
 */

// 语言类型
export type Language = 'zh' | 'en';

// 本地存储 key
const LANGUAGE_KEY = 'global-food-history-language';

// 翻译文本接口
interface TranslationText {
  zh: string;
  en: string;
}

// 时代双语数据接口
interface EraI18nData {
  name: string;
  nameEn: string;
  description: string;
  descriptionEn: string;
}


// 创建翻译文本的辅助函数
function tr(zh: string, en: string): TranslationText {
  const result: TranslationText = { zh: zh, en: en };
  return result;
}

// 创建时代数据的辅助函数
function eraData(name: string, nameEn: string, description: string, descriptionEn: string): EraI18nData {
  const result: EraI18nData = {
    name: name,
    nameEn: nameEn,
    description: description,
    descriptionEn: descriptionEn
  };
  return result;
}

// UI 翻译数据
const UI_TRANSLATIONS: Map<string, TranslationText> = new Map([
  // App
  ['app.title', tr('食物全球史', 'Global Food History')],
  ['app.subtitle', tr('探索作物与食物的起源与传播', 'Explore the Origins and Spread of Crops and Foods')],

  // Tabs
  ['tabs.crops', tr('作物', 'Crops')],
  ['tabs.foods', tr('食物', 'Foods')],
  ['tabs.regions', tr('地区', 'Regions')],
  ['tabs.timeline', tr('时间线', 'Timeline')],

  // Crop Categories
  ['cropCategories.grain', tr('谷物', 'Grains')],
  ['cropCategories.vegetable', tr('蔬菜', 'Vegetables')],
  ['cropCategories.fruit', tr('水果', 'Fruits')],
  ['cropCategories.legume', tr('豆类', 'Legumes')],
  ['cropCategories.spice', tr('香料', 'Spices')],
  ['cropCategories.beverage', tr('饮料作物', 'Beverage Crops')],
  ['cropCategories.oil', tr('油料作物', 'Oil Crops')],
  ['cropCategories.sugar', tr('糖料作物', 'Sugar Crops')],
  ['cropCategories.nut', tr('坚果', 'Nuts')],
  ['cropCategories.other', tr('其他作物', 'Other Crops')],

  // Food Categories
  ['foodCategories.staple', tr('主食', 'Staples')],
  ['foodCategories.dish', tr('菜肴', 'Dishes')],
  ['foodCategories.beverage', tr('饮品', 'Beverages')],
  ['foodCategories.dessert', tr('甜点', 'Desserts')],
  ['foodCategories.snack', tr('小吃', 'Snacks')],
  ['foodCategories.condiment', tr('调味品', 'Condiments')],
  ['foodCategories.preserved', tr('腌制食品', 'Preserved Foods')],

  // Sections
  ['sections.exploreByCropCategory', tr('按类别探索作物', 'Explore Crops by Category')],
  ['sections.exploreByFoodCategory', tr('按类别探索食物', 'Explore Foods by Category')],
  ['sections.exploreByRegion', tr('按地区探索', 'Explore by Region')],
  ['sections.exploreByEra', tr('按时代探索历史', 'Explore History by Era')],
  ['sections.timelineIntro', tr('追溯食物与作物从起源到全球传播的历史轨迹', 'Trace the historical journey of foods and crops from origin to global spread')],

  // Labels
  ['labels.origin', tr('起源', 'Origin')],
  ['labels.spread', tr('传播', 'Spread')],
  ['labels.originLocation', tr('起源地', 'Place of Origin')],
  ['labels.originTime', tr('起源时间', 'Time of Origin')],
  ['labels.spreadHistory', tr('传播历史', 'Spread History')],
  ['labels.spreadRoute', tr('传播路径', 'Spread Route')],
  ['labels.spreadMethod', tr('传播途径', 'Spread Method')],
  ['labels.spreadPath', tr('传播路径', 'Spread Path')],
  ['labels.spreadVia', tr('传播途径', 'Spread Via')],
  ['labels.currentRegions', tr('当前主产区', 'Current Main Regions')],
  ['labels.popularRegions', tr('流行地区', 'Popular Regions')],
  ['labels.basicInfo', tr('基本信息', 'Basic Information')],
  ['labels.description', tr('简介', 'Description')],
  ['labels.category', tr('类别', 'Category')],
  ['labels.alias', tr('别名', 'Also Known As')],
  ['labels.ingredients', tr('主要食材', 'Main Ingredients')],
  ['labels.relatedFoods', tr('相关食物', 'Related Foods')],
  ['labels.originCrops', tr('起源作物', 'Origin Crops')],
  ['labels.originFoods', tr('起源食物', 'Origin Foods')],
  ['labels.mainCrops', tr('主产作物', 'Main Crops')],
  ['labels.popularFoods', tr('流行食物', 'Popular Foods')],
  ['labels.countries', tr('国家', 'Countries')],
  ['labels.subRegions', tr('子地区', 'Sub-regions')],
  ['labels.searchResults', tr('搜索结果', 'Search Results')],
  ['labels.events', tr('事件', 'Events')],

  // Filters
  ['filters.all', tr('全部', 'All')],
  ['filters.crop', tr('作物', 'Crop')],
  ['filters.food', tr('食物', 'Food')],
  ['filters.cropOrigin', tr('作物起源', 'Crop Origin')],
  ['filters.cropSpread', tr('作物传播', 'Crop Spread')],
  ['filters.foodOrigin', tr('食物起源', 'Food Origin')],
  ['filters.foodSpread', tr('食物传播', 'Food Spread')],

  // Legend
  ['legend.cropOrigin', tr('作物起源', 'Crop Origin')],
  ['legend.cropSpread', tr('作物传播', 'Crop Spread')],
  ['legend.foodOrigin', tr('食物起源', 'Food Origin')],
  ['legend.foodSpread', tr('食物传播', 'Food Spread')],

  // Buttons
  ['buttons.back', tr('返回', 'Back')],
  ['buttons.home', tr('首页', 'Home')],
  ['buttons.search', tr('搜索', 'Search')],
  ['buttons.viewDetails', tr('查看详情', 'View Details')],
  ['buttons.viewCropDetails', tr('查看作物详情', 'View Crop Details')],
  ['buttons.viewFoodDetails', tr('查看食物详情', 'View Food Details')],
  ['buttons.viewFullTimeline', tr('查看完整时间线 →', 'View Full Timeline →')],
  ['buttons.backToHome', tr('← 返回首页', '← Back to Home')],

  // Placeholders
  ['placeholders.search', tr('搜索作物、食物或地点...', 'Search crops, foods, or places...')],
  ['placeholders.enterKeyword', tr('请输入关键词搜索', 'Enter a keyword to search')],
  ['placeholders.searchTimeline', tr('搜索作物、食物或地点...', 'Search crops, foods, or places...')],

  // Units
  ['units.events', tr('个事件', 'events')],
  ['units.countries', tr('个国家', 'countries')],
  ['units.originCrops', tr('种起源作物', 'origin crops')],
  ['units.originFoods', tr('种起源食物', 'origin foods')],

  // Loading states
  ['loading.searching', tr('搜索中...', 'Searching...')],

  // Empty states
  ['empty.noResults', tr('暂无结果', 'No results')],
  ['empty.noEvents', tr('暂无符合条件的事件', 'No matching events')],
  ['empty.clickToExplore', tr('点击探索', 'Click to explore')],
  ['empty.tryAnotherKeyword', tr('试试换个关键词？', 'Try a different keyword?')],

  // Location types
  ['locationTypes.continent', tr('大洲', 'Continent')],
  ['locationTypes.country', tr('国家', 'Country')],
  ['locationTypes.region', tr('地区', 'Region')],

  // Event types
  ['eventTypes.origin', tr('起源', 'Origin')],
  ['eventTypes.spread', tr('传播', 'Spread')],

  // Entity types
  ['entityTypes.crop', tr('作物', 'Crop')],
  ['entityTypes.food', tr('食物', 'Food')],
  ['entityTypes.location', tr('地点', 'Location')],

  // Language names
  ['language.zh', tr('中文', '中文')],
  ['language.en', tr('EN', 'EN')]
]);

// 时代数据（双语）
const ERAS_I18N: Map<string, EraI18nData> = new Map([
  ['prehistoric', eraData('史前时代', 'Prehistoric Era', '农业革命的开端，人类开始驯化作物', 'The beginning of the agricultural revolution, humans started domesticating crops')],
  ['ancient', eraData('古代文明', 'Ancient Civilizations', '四大文明古国时期，农业技术传播', 'Era of four ancient civilizations, agricultural technology spread')],
  ['classical', eraData('古典时期', 'Classical Period', '希腊罗马时代，丝绸之路开通', 'Greco-Roman era, the Silk Road opened')],
  ['medieval', eraData('中世纪', 'Medieval Period', '阿拉伯商人推动东西方交流', 'Arab merchants promoted East-West exchange')],
  ['exploration', eraData('大航海时代', 'Age of Exploration', '哥伦布大交换，新旧大陆作物互通', 'Columbian Exchange, crops exchanged between Old and New World')],
  ['modern', eraData('近现代', 'Modern Era', '工业革命后的全球化时代', 'Globalization era after the Industrial Revolution')]
]);

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
    const translations = UI_TRANSLATIONS.get(key);
    if (translations) {
      return this.currentLanguage === 'en' ? translations.en : translations.zh;
    }
    return key;
  }

  // 获取本地化名称（优先返回当前语言）
  getName(entity: object | undefined): string {
    if (!entity) return '';
    const e = entity as Record<string, string>;
    if (this.currentLanguage === 'en' && e['nameEn']) {
      return e['nameEn'];
    }
    return e['name'] || '';
  }

  // 获取本地化描述
  getDescription(entity: object | undefined): string {
    if (!entity) return '';
    const e = entity as Record<string, string>;
    if (this.currentLanguage === 'en' && e['descriptionEn']) {
      return e['descriptionEn'];
    }
    return e['description'] || '';
  }

  // 获取本地化别名
  getAlias(entity: object | undefined): string[] {
    if (!entity) return [];
    const e = entity as Record<string, string[]>;
    if (this.currentLanguage === 'en') {
      // 英文模式下，只返回英文别名，没有则返回空数组
      return e['aliasEn'] || [];
    }
    return e['alias'] || [];
  }

  // 获取本地化时间显示
  getTimeDisplay(time: object | undefined): string {
    if (!time) return '';
    const t = time as Record<string, string>;
    if (this.currentLanguage === 'en' && t['displayEn']) {
      return t['displayEn'];
    }
    return t['display'] || '';
  }

  // 获取本地化传播途径
  getVia(spread: object | undefined): string | undefined {
    if (!spread) return undefined;
    const s = spread as Record<string, string>;
    if (this.currentLanguage === 'en' && s['viaEn']) {
      return s['viaEn'];
    }
    return s['via'];
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
    const era = ERAS_I18N.get(eraId);
    if (!era) return eraId;
    return this.currentLanguage === 'en' ? era.nameEn : era.name;
  }

  // 获取时代描述（双语）
  getEraDescription(eraId: string): string {
    const era = ERAS_I18N.get(eraId);
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
