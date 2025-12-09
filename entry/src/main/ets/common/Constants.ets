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

// 具体作物图标映射
const CROP_ICONS: Map<string, string> = new Map([
  ['wheat', '🌾'],
  ['rice', '🌾'],
  ['corn', '🌽'],
  ['millet', '🌾'],
  ['sorghum', '🌾'],
  ['barley', '🌾'],
  ['oat', '🌾'],
  ['rye', '🌾'],
  ['potato', '🥔'],
  ['tomato', '🍅'],
  ['carrot', '🥕'],
  ['cabbage', '🥬'],
  ['onion', '🧅'],
  ['garlic', '🧄'],
  ['cucumber', '🥒'],
  ['eggplant', '🍆'],
  ['pumpkin', '🎃'],
  ['chili', '🌶️'],
  ['pepper-black', '🌶️'],
  ['apple', '🍎'],
  ['orange', '🍊'],
  ['lemon', '🍋'],
  ['banana', '🍌'],
  ['grape', '🍇'],
  ['watermelon', '🍉'],
  ['peach', '🍑'],
  ['pineapple', '🍍'],
  ['mango', '🥭'],
  ['coconut', '🥥'],
  ['soybean', '🫘'],
  ['lentil', '🫘'],
  ['chickpea', '🫘'],
  ['peanut', '🥜'],
  ['walnut', '🌰'],
  ['almond', '🌰'],
  ['cashew', '🌰'],
  ['ginger', '🫚'],
  ['cinnamon', '🪵'],
  ['vanilla', '🌿'],
  ['tea', '🍵'],
  ['coffee', '☕'],
  ['cacao', '🫘'],
  ['olive', '🫒'],
  ['sesame', '🌱'],
  ['sugarcane', '🎋'],
  ['sweet-potato', '🍠']
]);

// 图标函数 - 获取作物类别图标
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

// 获取具体作物的图标
export function getCropIconById(cropId: string, category: string): string {
  const icon = CROP_ICONS.get(cropId);
  return icon || getCropIcon(category);
}

// 具体食物图标映射
const FOOD_ICONS: Map<string, string> = new Map([
  // 主食
  ['bread', '🍞'],
  ['noodles', '🍜'],
  ['rice-cooked', '🍚'],
  ['tortilla', '🫓'],
  ['dumpling', '🥟'],
  ['mantou', '🥖'],
  ['congee', '🥣'],
  ['baozi', '🥟'],
  ['roti', '🫓'],
  ['naan', '🫓'],
  ['pita', '🫓'],
  ['croissant', '🥐'],
  ['baguette', '🥖'],
  ['onigiri', '🍙'],
  // 菜肴
  ['pizza', '🍕'],
  ['pasta', '🍝'],
  ['sushi', '🍣'],
  ['curry', '🍛'],
  ['ramen', '🍜'],
  ['hamburger', '🍔'],
  ['fried-rice', '🍚'],
  ['tacos', '🌮'],
  ['french-fries', '🍟'],
  ['fish-and-chips', '🐟'],
  ['shepherd-pie', '🥧'],
  ['hot-dog', '🌭'],
  ['sandwich', '🥪'],
  ['salad', '🥗'],
  ['steak', '🥩'],
  ['roast-beef', '🥩'],
  ['fried-chicken', '🍗'],
  ['kebab', '🍢'],
  ['gyros', '🥙'],
  ['falafel', '🧆'],
  ['spring-roll', '🥡'],
  ['dim-sum', '🥟'],
  ['tempura', '🍤'],
  ['paella', '🥘'],
  ['risotto', '🍚'],
  ['pho', '🍜'],
  ['tom-yum', '🍲'],
  ['pad-thai', '🍜'],
  ['bibimbap', '🍚'],
  ['kimchi', '🥬'],
  ['sashimi', '🍣'],
  // 饮品
  ['beer', '🍺'],
  ['wine', '🍷'],
  ['sake', '🍶'],
  ['tea-drink', '🍵'],
  ['coffee-drink', '☕'],
  ['whiskey', '🥃'],
  ['vodka', '🥃'],
  ['cocktail', '🍸'],
  ['champagne', '🍾'],
  ['juice', '🧃'],
  ['smoothie', '🥤'],
  ['bubble-tea', '🧋'],
  ['hot-chocolate', '☕'],
  ['lemonade', '🍋'],
  // 甜点
  ['ice-cream', '🍦'],
  ['chocolate', '🍫'],
  ['cake', '🎂'],
  ['cookie', '🍪'],
  ['donut', '🍩'],
  ['pie', '🥧'],
  ['apple-pie', '🥧'],
  ['cheesecake', '🍰'],
  ['brownie', '🍫'],
  ['pudding', '🍮'],
  ['tiramisu', '🍰'],
  ['macaron', '🍬'],
  ['crepe', '🥞'],
  ['waffle', '🧇'],
  ['pancake', '🥞'],
  ['mochi', '🍡'],
  ['dango', '🍡'],
  // 小吃
  ['chips', '🍟'],
  ['popcorn', '🍿'],
  ['pretzel', '🥨'],
  ['nachos', '🌮'],
  ['onion-rings', '🧅'],
  // 调味品
  ['soy-sauce', '🫗'],
  ['ketchup', '🍅'],
  ['mayonnaise', '🥚'],
  ['mustard', '🟡'],
  ['honey', '🍯'],
  ['maple-syrup', '🍁'],
  ['vinegar', '🫗'],
  ['miso', '🫗'],
  // 腌制食品
  ['pickles', '🥒'],
  ['cheese', '🧀'],
  ['bacon', '🥓'],
  ['sausage', '🌭'],
  ['ham', '🍖'],
  ['tofu', '🧈']
]);

export function getFoodIcon(category: string): string {
  switch (category) {
    case 'staple': return '🍚';
    case 'dish': return '🍲';
    case 'beverage': return '🥤';
    case 'dessert': return '🍰';
    case 'snack': return '🥟';
    case 'condiment': return '🧂';
    case 'preserved': return '🥫';
    default: return '🍲';
  }
}

// 获取具体食物的图标
export function getFoodIconById(foodId: string, category: string): string {
  const icon = FOOD_ICONS.get(foodId);
  return icon || getFoodIcon(category);
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
    case 'grain': return '#E65100';    // 深橙色，白字清晰
    case 'vegetable': return '#2E7D32'; // 深绿色，白字清晰
    case 'fruit': return '#C62828';    // 深红色，白字清晰
    case 'legume': return '#5D4037';   // 深棕色，白字清晰
    case 'spice': return '#D84315';    // 深橙红色，白字清晰
    case 'beverage': return '#00695C'; // 深青色，白字清晰
    case 'oil': return '#827717';      // 橄榄绿色，白字清晰
    case 'sugar': return '#AD1457';    // 深粉色，白字清晰
    case 'nut': return '#6D4C41';      // 深棕色，白字清晰
    case 'other': return '#546E7A';    // 深灰蓝色，白字清晰
    default: return '#2E7D32';
  }
}

export function getFoodCategoryColor(category: string): string {
  switch (category) {
    case 'staple': return '#E65100';  // 深橙色，白字清晰
    case 'dish': return '#1565C0';    // 深蓝色，白字清晰
    case 'beverage': return '#00695C'; // 深青色，白字清晰
    case 'dessert': return '#AD1457';  // 深粉色，白字清晰
    case 'snack': return '#F57F17';    // 深黄色，白字清晰
    case 'condiment': return '#5D4037'; // 深棕色，白字清晰
    case 'preserved': return '#546E7A'; // 深灰蓝色，白字清晰
    default: return '#2E7D32';
  }
}
