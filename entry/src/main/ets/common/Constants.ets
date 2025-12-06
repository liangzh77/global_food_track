/**
 * 食物全球史 - 常量定义
 */

// 颜色常量
export class Colors {
  // 主题色
  static readonly PRIMARY: string = '#2E7D32';
  static readonly PRIMARY_LIGHT: string = '#4CAF50';
  static readonly PRIMARY_DARK: string = '#1B5E20';

  // 背景色
  static readonly BACKGROUND: string = '#FAFAFA';
  static readonly CARD_BACKGROUND: string = '#FFFFFF';
  static readonly SURFACE: string = '#F5F5F5';

  // 文字颜色
  static readonly TEXT_PRIMARY: string = '#212121';
  static readonly TEXT_SECONDARY: string = '#757575';
  static readonly TEXT_HINT: string = '#BDBDBD';
  static readonly TEXT_ON_PRIMARY: string = '#FFFFFF';
}

// 尺寸常量
export class Sizes {
  static readonly RADIUS_SMALL: number = 8;
  static readonly RADIUS_MEDIUM: number = 12;
  static readonly RADIUS_LARGE: number = 16;

  static readonly SPACING_XS: number = 4;
  static readonly SPACING_SM: number = 8;
  static readonly SPACING_MD: number = 16;
  static readonly SPACING_LG: number = 24;
  static readonly SPACING_XL: number = 32;

  static readonly FONT_XS: number = 12;
  static readonly FONT_SM: number = 14;
  static readonly FONT_MD: number = 16;
  static readonly FONT_LG: number = 18;
  static readonly FONT_XL: number = 20;
  static readonly FONT_XXL: number = 24;
  static readonly FONT_TITLE: number = 28;
}

// 图标函数
export function getCropIcon(category: string): string {
  switch (category) {
    case 'grain': return '🌾';
    case 'vegetable': return '🥬';
    case 'fruit': return '🍎';
    case 'legume': return '🫘';
    case 'spice': return '🌶️';
    case 'beverage': return '🍵';
    case 'oil': return '🫒';
    case 'sugar': return '🍬';
    case 'nut': return '🥜';
    default: return '🌱';
  }
}

export function getFoodIcon(category: string): string {
  switch (category) {
    case 'staple': return '🍞';
    case 'dish': return '🍽️';
    case 'beverage': return '🍺';
    case 'dessert': return '🍰';
    case 'snack': return '🍟';
    case 'condiment': return '🧂';
    case 'preserved': return '🥒';
    default: return '🍽️';
  }
}

export function getLocationIcon(type: string): string {
  switch (type) {
    case 'continent': return '🌍';
    case 'country': return '🏳️';
    case 'region': return '📍';
    default: return '📍';
  }
}

// 导航图标
export class NavIcons {
  static readonly HOME: string = '🏠';
  static readonly SEARCH: string = '🔍';
  static readonly EXPLORE: string = '🧭';
  static readonly MAP: string = '🗺️';
  static readonly BACK: string = '←';
}

// 获取类别颜色
export function getCropCategoryColor(category: string): string {
  switch (category) {
    case 'grain': return '#FFA726';
    case 'vegetable': return '#66BB6A';
    case 'fruit': return '#EF5350';
    case 'legume': return '#8D6E63';
    case 'spice': return '#FF7043';
    case 'beverage': return '#26A69A';
    case 'oil': return '#FFCA28';
    case 'sugar': return '#EC407A';
    case 'nut': return '#8D6E63';
    default: return '#2E7D32';
  }
}

export function getFoodCategoryColor(category: string): string {
  switch (category) {
    case 'staple': return '#FFA726';
    case 'dish': return '#42A5F5';
    case 'beverage': return '#26A69A';
    case 'dessert': return '#EC407A';
    case 'snack': return '#FFCA28';
    case 'condiment': return '#8D6E63';
    case 'preserved': return '#78909C';
    default: return '#2E7D32';
  }
}
