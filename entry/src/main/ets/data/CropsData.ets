import { Crop } from '../models/DataModels';

export const CROPS_DATA: Crop[] = [
  // ==================== 谷物 (Grains) ====================
  {
    id: 'wheat',
    name: '小麦',
    nameEn: 'Wheat',
    category: 'grain',
    origin: {
      location: 'fertile-crescent',
      time: { year: -9500, display: '公元前9500年左右', displayEn: 'Around 9500 BCE' }
    },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' } },
      { from: 'fertile-crescent', to: 'india', time: { year: -5000, display: '公元前5000年', displayEn: '5000 BCE' } },
      { from: 'fertile-crescent', to: 'china', time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }, via: '丝绸之路前身', viaEn: 'Proto-Silk Road' },
      { from: 'europe', to: 'north-america', time: { year: 1500, display: '16世纪', displayEn: '16th century' }, via: '欧洲殖民者', viaEn: 'European colonizers' }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'france', 'shandong', 'yellow-river', 'xinjiang', 'dongbei'],
    description: '人类最早驯化的作物之一，是全球最重要的粮食作物，面包、面条、馒头等主食的核心原料。',
    descriptionEn: 'One of the earliest domesticated crops, it is the world\'s most important cereal, the core ingredient for bread, noodles, and steamed buns.'
  },
  {
    id: 'rice',
    name: '水稻',
    nameEn: 'Rice',
    alias: ['大米', '稻米'],
    aliasEn: ['Paddy'],
    category: 'grain',
    origin: {
      location: 'yangtze-river',
      time: { year: -9000, display: '公元前9000年左右', displayEn: 'Around 9000 BCE' }
    },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'china', to: 'india', time: { year: -1500, display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'china', to: 'japan', time: { year: -300, display: '公元前300年', displayEn: '300 BCE' }, via: '弥生时代移民', viaEn: 'Yayoi migration' },
      { from: 'china', to: 'korea', time: { year: -1000, display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'asia', to: 'europe', time: { display: '8世纪', displayEn: '8th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'europe', to: 'south-america', time: { year: 1500, display: '16世纪', displayEn: '16th century' }, via: '西班牙/葡萄牙殖民者', viaEn: 'Spanish/Portuguese colonizers' }
    ],
    currentRegions: ['china', 'india', 'indonesia', 'vietnam', 'thailand', 'japan', 'yangtze-river', 'guangdong', 'jiangsu', 'zhejiang', 'hunan', 'hubei'],
    description: '养活全球一半以上人口的主粮，尤其在亚洲地区具有核心地位。',
    descriptionEn: 'The staple food that feeds more than half of the world\'s population, especially central to Asian cuisines.'
  },
  {
    id: 'corn',
    name: '玉米',
    nameEn: 'Corn',
    alias: ['包谷', '苞米'],
    aliasEn: ['Maize'],
    category: 'grain',
    origin: {
      location: 'mesoamerica',
      time: { year: -7000, display: '公元前7000年', displayEn: '7000 BCE' }
    },
    spreads: [
      { from: 'mesoamerica', to: 'south-america', time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'mesoamerica', to: 'north-america', time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mexico', to: 'spain', time: { year: 1493, display: '1493年', displayEn: '1493' }, via: '哥伦布第二次航行', viaEn: 'Columbus\'s second voyage' },
      { from: 'spain', to: 'europe', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'europe', to: 'africa', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'europe', to: 'china', time: { display: '16世纪中期', displayEn: 'Mid-16th century' }, via: '海上丝绸之路', viaEn: 'Maritime Silk Road' }
    ],
    currentRegions: ['usa', 'china', 'brazil', 'argentina', 'mexico', 'dongbei', 'shandong', 'inner-mongolia'],
    description: '美洲原住民的神圣作物，现为全球产量最高的谷物，广泛用于食品和饲料。',
    descriptionEn: 'Sacred crop of Native Americans, now the world\'s highest-yielding cereal, widely used for food and feed.'
  },
  {
    id: 'millet',
    name: '小米',
    nameEn: 'Millet',
    alias: ['粟', '谷子'],
    aliasEn: ['Foxtail millet'],
    category: 'grain',
    origin: {
      location: 'yellow-river',
      time: { year: -8000, display: '公元前8000年', displayEn: '8000 BCE' }
    },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'china', to: 'india', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'asia', to: 'europe', time: { display: '公元前1500年', displayEn: '1500 BCE' } }
    ],
    currentRegions: ['china', 'india', 'nigeria', 'russia', 'yellow-river', 'inner-mongolia', 'shandong', 'dongbei'],
    description: '中国北方最古老的粮食作物，曾是华夏文明的主粮，耐旱性极强。',
    descriptionEn: 'The oldest grain crop in northern China, once the staple of Chinese civilization, extremely drought-resistant.'
  },
  {
    id: 'sorghum',
    name: '高粱',
    nameEn: 'Sorghum',
    category: 'grain',
    origin: {
      location: 'horn-of-africa',
      time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' }
    },
    spreads: [
      { from: 'africa', to: 'india', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'india', to: 'china', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'africa', to: 'south-america', time: { display: '16世纪', displayEn: '16th century' }, via: '奴隶贸易', viaEn: 'Slave trade' }
    ],
    currentRegions: ['usa', 'nigeria', 'india', 'china', 'mexico', 'dongbei', 'sichuan'],
    description: '非洲起源的重要谷物，耐旱耐热，是酿造白酒的重要原料。',
    descriptionEn: 'An important grain originating from Africa, drought and heat resistant, a key ingredient in Chinese baijiu.'
  },
  {
    id: 'barley',
    name: '大麦',
    nameEn: 'Barley',
    category: 'grain',
    origin: {
      location: 'fertile-crescent',
      time: { year: -9000, display: '公元前9000年', displayEn: '9000 BCE' }
    },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前6000年', displayEn: '6000 BCE' } },
      { from: 'fertile-crescent', to: 'europe', time: { display: '公元前5000年', displayEn: '5000 BCE' } },
      { from: 'fertile-crescent', to: 'india', time: { display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'fertile-crescent', to: 'china', time: { display: '公元前2000年', displayEn: '2000 BCE' } }
    ],
    currentRegions: ['russia', 'germany', 'france', 'canada', 'australia'],
    description: '与小麦同时被驯化，是啤酒酿造的核心原料，也用于饲料和健康食品。',
    descriptionEn: 'Domesticated alongside wheat, the core ingredient for beer brewing, also used for feed and health foods.'
  },
  {
    id: 'oat',
    name: '燕麦',
    nameEn: 'Oat',
    category: 'grain',
    origin: {
      location: 'anatolia',
      time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' }
    },
    spreads: [
      { from: 'anatolia', to: 'europe', time: { display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪', displayEn: '17th century' }, via: '欧洲移民', viaEn: 'European immigrants' }
    ],
    currentRegions: ['russia', 'canada', 'usa', 'australia', 'poland'],
    description: '起初被视为杂草，后成为重要的健康谷物，燕麦片是现代流行早餐。',
    descriptionEn: 'Initially considered a weed, later became an important health grain, oatmeal is a popular modern breakfast.'
  },
  {
    id: 'rye',
    name: '黑麦',
    nameEn: 'Rye',
    category: 'grain',
    origin: {
      location: 'anatolia',
      time: { year: -3000, display: '公元前3000年左右', displayEn: 'Around 3000 BCE' }
    },
    spreads: [
      { from: 'anatolia', to: 'europe', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'europe', to: 'russia', time: { display: '公元前1000年', displayEn: '1000 BCE' } }
    ],
    currentRegions: ['russia', 'germany', 'poland', 'belarus'],
    description: '耐寒耐贫瘠的谷物，是黑面包和伏特加的原料，在北欧和东欧很重要。',
    descriptionEn: 'A cold and poor soil resistant grain, ingredient for rye bread and vodka, important in Northern and Eastern Europe.'
  },

  // ==================== 蔬菜 (Vegetables) ====================
  {
    id: 'potato',
    name: '土豆',
    nameEn: 'Potato',
    alias: ['马铃薯', '洋芋'],
    category: 'vegetable',
    origin: {
      location: 'andes',
      time: { year: -8000, display: '公元前8000年', displayEn: '8000 BCE' }
    },
    spreads: [
      { from: 'peru', to: 'spain', time: { year: 1570, display: '1570年左右', displayEn: 'Around 1570' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'spain', to: 'europe', time: { display: '16世纪末', displayEn: 'Late 16th century' } },
      { from: 'europe', to: 'ireland', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'europe', to: 'russia', time: { display: '18世纪', displayEn: '18th century' }, via: '彼得大帝推广', viaEn: 'Promoted by Peter the Great' },
      { from: 'europe', to: 'china', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'germany', 'dongbei', 'inner-mongolia'],
    description: '改变世界人口格局的作物，曾帮助欧洲人口爆发式增长，薯条、薯片的原料。',
    descriptionEn: 'A crop that changed world demographics, helped fuel Europe\'s population explosion. The source of french fries and potato chips.'
  },
  {
    id: 'tomato',
    name: '番茄',
    nameEn: 'Tomato',
    alias: ['西红柿'],
    category: 'vegetable',
    origin: {
      location: 'andes',
      time: { year: -700, display: '公元前700年', displayEn: '700 BCE' }
    },
    spreads: [
      { from: 'peru', to: 'mesoamerica', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'mexico', to: 'spain', time: { year: 1521, display: '1521年', displayEn: '1521' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'spain', to: 'italy', time: { display: '16世纪中期', displayEn: 'Mid-16th century' } },
      { from: 'europe', to: 'china', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'europe', to: 'usa', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'turkey', 'italy', 'shandong', 'xinjiang'],
    description: '曾被欧洲人认为有毒的观赏植物，后成为意大利菜和全球烹饪的核心食材。',
    descriptionEn: 'Once considered poisonous by Europeans and grown as an ornamental plant, it later became a core ingredient in Italian and global cuisine.'
  },
  {
    id: 'chili',
    name: '辣椒',
    nameEn: 'Chili Pepper',
    alias: ['辣子', '海椒'],
    category: 'spice',
    origin: {
      location: 'mesoamerica',
      time: { year: -7500, display: '公元前7500年', displayEn: '7500 BCE' }
    },
    spreads: [
      { from: 'mexico', to: 'spain', time: { year: 1493, display: '1493年', displayEn: '1493' }, via: '哥伦布', viaEn: 'Christopher Columbus' },
      { from: 'spain', to: 'portugal', time: { display: '16世纪初', displayEn: 'Early 16th century' } },
      { from: 'portugal', to: 'india', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'portugal', to: 'china', time: { display: '16世纪末', displayEn: 'Late 16th century' }, via: '海上丝绸之路', viaEn: 'Maritime Silk Road' },
      { from: 'india', to: 'thailand', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'india', to: 'korea', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['china', 'india', 'mexico', 'thailand', 'korea', 'sichuan', 'hunan', 'yunnan'],
    description: '彻底改变亚洲饮食的美洲作物，川菜、湘菜、泰国菜、韩国菜的灵魂。',
    descriptionEn: 'An American crop that revolutionized Asian cuisine, the soul of Sichuan, Hunan, Thai, and Korean cooking.'
  },
  {
    id: 'onion',
    name: '洋葱',
    nameEn: 'Onion',
    alias: ['葱头'],
    category: 'vegetable',
    origin: {
      location: 'central-asia',
      time: { year: -5000, display: '公元前5000年', displayEn: '5000 BCE' }
    },
    spreads: [
      { from: 'central-asia', to: 'mesopotamia', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'mesopotamia', to: 'egypt', time: { display: '公元前2500年', displayEn: '2500 BCE' } },
      { from: 'middle-east', to: 'europe', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'europe', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'egypt', 'iran', 'shandong'],
    description: '人类最早驯化的蔬菜之一，几乎所有烹饪传统的基础食材。',
    descriptionEn: 'One of the earliest vegetables domesticated by humans, a fundamental ingredient in nearly all culinary traditions.'
  },
  {
    id: 'garlic',
    name: '大蒜',
    nameEn: 'Garlic',
    alias: ['蒜'],
    category: 'vegetable',
    origin: {
      location: 'central-asia',
      time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' }
    },
    spreads: [
      { from: 'central-asia', to: 'middle-east', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'middle-east', to: 'egypt', time: { display: '公元前2500年', displayEn: '2500 BCE' } },
      { from: 'egypt', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' }, via: '丝绸之路', viaEn: 'Silk Road' }
    ],
    currentRegions: ['china', 'india', 'korea', 'spain', 'usa', 'shandong', 'jiangsu'],
    description: '自古被视为有药用价值的调味品，中国是世界最大生产国。',
    descriptionEn: 'A seasoning valued for its medicinal properties since ancient times. China is the world\'s largest producer.'
  },
  {
    id: 'cabbage',
    name: '卷心菜',
    nameEn: 'Cabbage',
    alias: ['甘蓝', '包菜', '洋白菜'],
    category: 'vegetable',
    origin: {
      location: 'mediterranean',
      time: { year: -1000, display: '公元前1000年', displayEn: '1000 BCE' }
    },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代', displayEn: 'Roman Era' } },
      { from: 'europe', to: 'asia', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'germany', 'japan', 'shandong', 'dongbei'],
    description: '欧洲古老蔬菜，酸菜、泡菜的主要原料，耐储存的重要特性使其流行全球。',
    descriptionEn: 'An ancient European vegetable, the main ingredient for sauerkraut and kimchi. Its excellent storage qualities made it popular worldwide.'
  },
  {
    id: 'carrot',
    name: '胡萝卜',
    nameEn: 'Carrot',
    alias: ['红萝卜'],
    category: 'vegetable',
    origin: {
      location: 'iran',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'iran', to: 'middle-east', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'mediterranean', to: 'europe', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'netherlands', to: 'europe', time: { display: '17世纪', displayEn: '17th century' }, via: '荷兰培育出橙色品种', viaEn: 'Dutch bred orange variety' }
    ],
    currentRegions: ['china', 'usa', 'russia', 'germany', 'uk', 'shandong', 'inner-mongolia'],
    description: '最初是紫色或白色的，橙色胡萝卜是17世纪荷兰人培育的品种。',
    descriptionEn: 'Originally purple or white; the orange carrot was bred by the Dutch in the 17th century.'
  },
  {
    id: 'cucumber',
    name: '黄瓜',
    nameEn: 'Cucumber',
    alias: ['青瓜'],
    category: 'vegetable',
    origin: {
      location: 'india',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'mediterranean', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' }, via: '丝绸之路', viaEn: 'Silk Road' },
      { from: 'europe', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['china', 'russia', 'turkey', 'iran', 'usa', 'shandong'],
    description: '清爽的夏季蔬菜，腌制黄瓜是世界各地流行的做法。',
    descriptionEn: 'A refreshing summer vegetable; pickling cucumbers is popular practice around the world.'
  },
  {
    id: 'eggplant',
    name: '茄子',
    nameEn: 'Eggplant',
    alias: ['矮瓜'],
    category: 'vegetable',
    origin: {
      location: 'india',
      time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' } },
      { from: 'india', to: 'middle-east', time: { display: '公元后500年', displayEn: '500 CE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '8世纪', displayEn: '8th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'mediterranean', to: 'europe', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['china', 'india', 'egypt', 'turkey', 'japan', 'shandong', 'guangdong'],
    description: '印度起源的蔬菜，在中国、中东、地中海地区都有独特的烹饪传统。',
    descriptionEn: 'A vegetable originating from India with unique culinary traditions in China, the Middle East, and Mediterranean regions.'
  },
  {
    id: 'sweet-potato',
    name: '红薯',
    nameEn: 'Sweet Potato',
    alias: ['番薯', '地瓜', '山芋'],
    category: 'vegetable',
    origin: {
      location: 'south-america',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'south-america', to: 'oceania', time: { display: '公元1000年', displayEn: '1000 CE' }, via: '波利尼西亚航海者', viaEn: 'Polynesian seafarers' },
      { from: 'south-america', to: 'spain', time: { year: 1492, display: '1492年', displayEn: '1492' }, via: '哥伦布', viaEn: 'Christopher Columbus' },
      { from: 'spain', to: 'philippines', time: { display: '16世纪', displayEn: '16th century' }, via: '西班牙殖民', viaEn: 'Spanish colonization' },
      { from: 'philippines', to: 'china', time: { display: '16世纪末', displayEn: 'Late 16th century' } }
    ],
    currentRegions: ['china', 'nigeria', 'tanzania', 'indonesia', 'japan', 'shandong', 'fujian'],
    description: '救荒作物，曾帮助中国人口快速增长，现为健康食品代表。',
    descriptionEn: 'A famine relief crop that helped China\'s rapid population growth, now a symbol of healthy eating.'
  },
  {
    id: 'pumpkin',
    name: '南瓜',
    nameEn: 'Pumpkin',
    alias: ['倭瓜', '番瓜'],
    category: 'vegetable',
    origin: {
      location: 'mesoamerica',
      time: { year: -7500, display: '公元前7500年', displayEn: '7500 BCE' }
    },
    spreads: [
      { from: 'mesoamerica', to: 'north-america', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'north-america', to: 'europe', time: { display: '16世纪', displayEn: '16th century' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'europe', to: 'asia', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'mexico', 'shandong'],
    description: '美洲三姐妹之一（与玉米、豆类），万圣节的标志性元素。',
    descriptionEn: 'One of the \'Three Sisters\' (with corn and beans), an iconic element of Halloween.'
  },

  // ==================== 水果 (Fruits) ====================
  {
    id: 'apple',
    name: '苹果',
    nameEn: 'Apple',
    category: 'fruit',
    origin: {
      location: 'central-asia',
      time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' }
    },
    spreads: [
      { from: 'central-asia', to: 'middle-east', time: { display: '公元前3000年', displayEn: '3000 BCE' }, via: '丝绸之路', viaEn: 'Silk Road' },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代', displayEn: 'Roman Era' } },
      { from: 'europe', to: 'north-america', time: { year: 1620, display: '1620年', displayEn: '1620' }, via: '欧洲殖民者', viaEn: 'European colonists' }
    ],
    currentRegions: ['china', 'usa', 'turkey', 'poland', 'italy', 'shandong'],
    description: '哈萨克斯坦山区的野生苹果是现代苹果的祖先，中国是世界最大苹果生产国。',
    descriptionEn: 'Wild apples from Kazakhstan mountains are ancestors of modern apples. China is the world\'s largest apple producer.'
  },
  {
    id: 'banana',
    name: '香蕉',
    nameEn: 'Banana',
    alias: ['芭蕉'],
    category: 'fruit',
    origin: {
      location: 'papua-new-guinea',
      time: { year: -8000, display: '公元前8000年', displayEn: '8000 BCE' }
    },
    spreads: [
      { from: 'papua-new-guinea', to: 'southeast-asia', time: { display: '公元前5000年', displayEn: '5000 BCE' } },
      { from: 'southeast-asia', to: 'india', time: { display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'india', to: 'africa', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'africa', to: 'caribbean', time: { year: 1516, display: '1516年', displayEn: '1516' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'caribbean', to: 'south-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['india', 'china', 'indonesia', 'brazil', 'ecuador', 'guangdong', 'fujian', 'yunnan'],
    description: '热带地区最重要的水果，无籽香蕉是人类培育的结果。',
    descriptionEn: 'The most important fruit in tropical regions; seedless bananas are the result of human cultivation.'
  },
  {
    id: 'grape',
    name: '葡萄',
    nameEn: 'Grape',
    category: 'fruit',
    origin: {
      location: 'fertile-crescent',
      time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' }
    },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'fertile-crescent', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'france', time: { display: '公元前600年', displayEn: '600 BCE' }, via: '希腊殖民者', viaEn: 'Greek colonists' },
      { from: 'europe', to: 'south-america', time: { display: '16世纪', displayEn: '16th century' }, via: '西班牙传教士', viaEn: 'Spanish missionaries' },
      { from: 'europe', to: 'south-africa', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'china', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' }, via: '张骞通西域引入', viaEn: 'Introduced by Zhang Qian from Western Regions' }
    ],
    currentRegions: ['china', 'italy', 'france', 'spain', 'usa', 'xinjiang'],
    description: '酿造葡萄酒的原料，与人类文明史紧密相连，葡萄干也是古老的保存方式。',
    descriptionEn: 'The raw material for wine, closely connected to human civilization. Raisins are an ancient preservation method.'
  },
  {
    id: 'orange',
    name: '橙子',
    nameEn: 'Orange',
    alias: ['柳橙', '甜橙'],
    category: 'fruit',
    origin: {
      location: 'yunnan',
      time: { year: -2500, display: '公元前2500年', displayEn: '2500 BCE' }
    },
    spreads: [
      { from: 'china', to: 'india', time: { display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'india', to: 'middle-east', time: { display: '公元1世纪', displayEn: '1st century CE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '10世纪', displayEn: '10th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'spain', to: 'south-america', time: { display: '16世纪', displayEn: '16th century' }, via: '西班牙殖民者', viaEn: 'Spanish colonists' },
      { from: 'spain', to: 'usa', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['brazil', 'china', 'india', 'usa', 'spain', 'guangdong', 'fujian', 'zhejiang'],
    description: '中国云南原产的柑橘类水果，橙汁是现代最流行的果汁。',
    descriptionEn: 'A citrus fruit native to Yunnan, China. Orange juice is the most popular modern fruit juice.'
  },
  {
    id: 'lemon',
    name: '柠檬',
    nameEn: 'Lemon',
    category: 'fruit',
    origin: {
      location: 'india',
      time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元1世纪', displayEn: '1st century CE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '10世纪', displayEn: '10th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'mediterranean', to: 'europe', time: { display: '12世纪', displayEn: '12th century' }, via: '十字军东征', viaEn: 'The Crusades' },
      { from: 'europe', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['india', 'mexico', 'china', 'argentina', 'brazil'],
    description: '重要的调味水果，曾用于预防航海坏血病，是西餐和饮品的常用食材。',
    descriptionEn: 'An important flavoring fruit, once used to prevent scurvy at sea. A common ingredient in Western cuisine and beverages.'
  },
  {
    id: 'watermelon',
    name: '西瓜',
    nameEn: 'Watermelon',
    category: 'fruit',
    origin: {
      location: 'west-africa',
      time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' }
    },
    spreads: [
      { from: 'west-africa', to: 'nile-valley', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'nile-valley', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'india', time: { display: '公元前800年', displayEn: '800 BCE' } },
      { from: 'india', to: 'china', time: { display: '10世纪', displayEn: '10th century' } },
      { from: 'africa', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' }, via: '奴隶贸易', viaEn: 'Slave trade' }
    ],
    currentRegions: ['china', 'turkey', 'iran', 'brazil', 'usa', 'xinjiang', 'shandong'],
    description: '非洲起源的消暑水果，中国是世界最大生产和消费国，产量占全球70%。',
    descriptionEn: 'A refreshing summer fruit from Africa. China is the world\'s largest producer and consumer, accounting for 70% of global production.'
  },
  {
    id: 'mango',
    name: '芒果',
    nameEn: 'Mango',
    category: 'fruit',
    origin: {
      location: 'india',
      time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'india', to: 'middle-east', time: { display: '10世纪', displayEn: '10th century' } },
      { from: 'india', to: 'east-africa', time: { display: '10世纪', displayEn: '10th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'india', to: 'brazil', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'brazil', to: 'caribbean', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['india', 'china', 'thailand', 'mexico', 'indonesia', 'guangdong', 'yunnan'],
    description: '印度国果，被誉为热带水果之王，南亚文化中具有神圣地位。',
    descriptionEn: 'India\'s national fruit, known as the king of tropical fruits, with sacred status in South Asian culture.'
  },
  {
    id: 'peach',
    name: '桃子',
    nameEn: 'Peach',
    alias: ['桃'],
    category: 'fruit',
    origin: {
      location: 'china',
      time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' }
    },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前2000年', displayEn: '2000 BCE' }, via: '丝绸之路', viaEn: 'Silk Road' },
      { from: 'central-asia', to: 'iran', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'iran', to: 'mediterranean', time: { display: '公元前400年', displayEn: '400 BCE' }, via: '亚历山大东征', viaEn: 'Alexander the Great\'s campaigns' },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代', displayEn: 'Roman Era' } },
      { from: 'europe', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['china', 'spain', 'italy', 'usa', 'greece', 'shandong'],
    description: '中国原产水果，在中国文化中象征长寿，英文名Peach源于波斯。',
    descriptionEn: 'A fruit native to China, symbolizing longevity in Chinese culture. The English name \'Peach\' derives from Persia.'
  },
  {
    id: 'pineapple',
    name: '菠萝',
    nameEn: 'Pineapple',
    alias: ['凤梨'],
    category: 'fruit',
    origin: {
      location: 'amazon',
      time: { year: -1200, display: '公元前1200年', displayEn: '1200 BCE' }
    },
    spreads: [
      { from: 'amazon', to: 'caribbean', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'caribbean', to: 'europe', time: { year: 1493, display: '1493年', displayEn: '1493' }, via: '哥伦布', viaEn: 'Christopher Columbus' },
      { from: 'europe', to: 'africa', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'europe', to: 'asia', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'asia', to: 'philippines', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['costa-rica', 'philippines', 'brazil', 'thailand', 'china', 'guangdong', 'fujian'],
    description: '亚马逊原产的热带水果，曾是欧洲贵族的奢侈品，现为全球流行水果。',
    descriptionEn: 'A tropical fruit from the Amazon, once a luxury for European nobility, now popular worldwide.'
  },
  {
    id: 'coconut',
    name: '椰子',
    nameEn: 'Coconut',
    category: 'fruit',
    origin: {
      location: 'southeast-asia',
      time: { display: '起源时间不明，可能公元前数千年', displayEn: 'Origin unknown, possibly thousands of years BCE' }
    },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'southeast-asia', to: 'oceania', time: { display: '公元前1500年', displayEn: '1500 BCE' }, via: '南岛语族迁徙', viaEn: 'Austronesian migration' },
      { from: 'india', to: 'east-africa', time: { display: '公元1世纪', displayEn: '1st century CE' }, via: '印度洋贸易', viaEn: 'Indian Ocean trade' },
      { from: 'africa', to: 'caribbean', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙/西班牙船只', viaEn: 'Portuguese/Spanish ships' }
    ],
    currentRegions: ['indonesia', 'philippines', 'india', 'brazil', 'thailand'],
    description: '热带海岸的标志性植物，可通过海水漂流传播，椰子油、椰奶用途广泛。',
    descriptionEn: 'An iconic tropical coastal plant that can spread by floating on seawater. Coconut oil and milk have wide applications.'
  },

  // ==================== 豆类与坚果 (Legumes and Nuts) ====================
  {
    id: 'soybean',
    name: '大豆',
    nameEn: 'Soybean',
    alias: ['黄豆'],
    category: 'legume',
    origin: {
      location: 'china',
      time: { year: -7000, display: '公元前7000年', displayEn: '7000 BCE' }
    },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'china', to: 'japan', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'china', to: 'southeast-asia', time: { display: '公元1世纪', displayEn: '1st century CE' } },
      { from: 'asia', to: 'europe', time: { display: '18世纪', displayEn: '18th century' } },
      { from: 'asia', to: 'usa', time: { year: 1765, display: '1765年', displayEn: '1765' } },
      { from: 'usa', to: 'brazil', time: { display: '20世纪初', displayEn: 'Early 20th century' } }
    ],
    currentRegions: ['brazil', 'usa', 'argentina', 'china', 'india', 'dongbei', 'shandong'],
    description: '东亚文明的蛋白质来源，豆腐、酱油、豆浆的原料，现为全球最重要的油料和饲料作物。',
    descriptionEn: 'The protein source of East Asian civilization, the raw material for tofu, soy sauce, and soy milk. Now the world\'s most important oil and feed crop.'
  },
  {
    id: 'peanut',
    name: '花生',
    nameEn: 'Peanut',
    alias: ['落花生', '长生果'],
    category: 'legume',
    origin: {
      location: 'south-america',
      time: { year: -3500, display: '公元前3500年', displayEn: '3500 BCE' }
    },
    spreads: [
      { from: 'south-america', to: 'caribbean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'south-america', to: 'spain', time: { display: '16世纪初', displayEn: 'Early 16th century' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'spain', to: 'africa', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'africa', to: 'china', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'africa', to: 'usa', time: { display: '18世纪', displayEn: '18th century' }, via: '奴隶贸易', viaEn: 'Slave trade' }
    ],
    currentRegions: ['china', 'india', 'nigeria', 'usa', 'argentina', 'shandong'],
    description: '南美原产的重要油料作物，花生酱是美国文化的标志性食品。',
    descriptionEn: 'An important oil crop from South America. Peanut butter is an iconic American food.'
  },
  {
    id: 'lentil',
    name: '扁豆',
    nameEn: 'Lentil',
    alias: ['兵豆'],
    category: 'legume',
    origin: {
      location: 'fertile-crescent',
      time: { year: -8000, display: '公元前8000年', displayEn: '8000 BCE' }
    },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'fertile-crescent', to: 'india', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'fertile-crescent', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'europe', to: 'north-america', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['canada', 'india', 'turkey', 'usa', 'australia'],
    description: '人类最早驯化的豆类之一，印度菜中的重要食材（dhal）。',
    descriptionEn: 'One of the earliest legumes domesticated by humans, an important ingredient in Indian cuisine (dhal).'
  },
  {
    id: 'chickpea',
    name: '鹰嘴豆',
    nameEn: 'Chickpea',
    alias: ['鸡豆'],
    category: 'legume',
    origin: {
      location: 'turkey',
      time: { year: -7500, display: '公元前7500年', displayEn: '7500 BCE' }
    },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '公元前6000年', displayEn: '6000 BCE' } },
      { from: 'middle-east', to: 'india', time: { display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'mediterranean', to: 'africa', time: { display: '公元前1000年', displayEn: '1000 BCE' } }
    ],
    currentRegions: ['india', 'australia', 'turkey', 'pakistan', 'myanmar'],
    description: '鹰嘴豆泥（hummus）的原料，中东和南亚的重要蛋白质来源。',
    descriptionEn: 'The raw material for hummus, an important protein source in the Middle East and South Asia.'
  },
  {
    id: 'almond',
    name: '杏仁',
    nameEn: 'Almond',
    alias: ['巴旦木'],
    category: 'nut',
    origin: {
      location: 'iran',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'iran', to: 'middle-east', time: { display: '公元前2500年', displayEn: '2500 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' }, via: '阿拉伯人', viaEn: 'Arabs' },
      { from: 'spain', to: 'usa', time: { display: '18世纪', displayEn: '18th century' }, via: '西班牙传教士', viaEn: 'Spanish missionaries' }
    ],
    currentRegions: ['usa', 'spain', 'iran', 'morocco', 'australia'],
    description: '地中海地区的古老坚果，加州是世界最大产地，杏仁奶成为流行替代乳品。',
    descriptionEn: 'An ancient nut from the Mediterranean. California is the world\'s largest producer. Almond milk has become a popular dairy alternative.'
  },
  {
    id: 'walnut',
    name: '核桃',
    nameEn: 'Walnut',
    alias: ['胡桃'],
    category: 'nut',
    origin: {
      location: 'central-asia',
      time: { year: -7000, display: '公元前7000年', displayEn: '7000 BCE' }
    },
    spreads: [
      { from: 'central-asia', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' }, via: '丝绸之路', viaEn: 'Silk Road' },
      { from: 'central-asia', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代', displayEn: 'Roman Era' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['china', 'usa', 'iran', 'turkey', 'mexico', 'yunnan', 'xinjiang'],
    description: '中亚原产的健脑坚果，中国是世界最大生产国。',
    descriptionEn: 'A brain-boosting nut from Central Asia. China is the world\'s largest producer.'
  },
  {
    id: 'cashew',
    name: '腰果',
    nameEn: 'Cashew',
    category: 'nut',
    origin: {
      location: 'brazil',
      time: { display: '原产时间不明', displayEn: 'Origin time unknown' }
    },
    spreads: [
      { from: 'brazil', to: 'india', time: { display: '16世纪', displayEn: '16th century' }, via: '葡萄牙商人', viaEn: 'Portuguese merchants' },
      { from: 'india', to: 'southeast-asia', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'india', to: 'east-africa', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['vietnam', 'india', 'ivory-coast', 'brazil', 'philippines'],
    description: '巴西原产坚果，越南是世界最大加工出口国，常用于亚洲烹饪。',
    descriptionEn: 'A nut from Brazil. Vietnam is the world\'s largest processor and exporter, commonly used in Asian cooking.'
  },

  // ==================== 饮料与香料 (Beverages and Spices) ====================
  {
    id: 'tea',
    name: '茶',
    nameEn: 'Tea',
    alias: ['茶叶'],
    category: 'beverage',
    origin: {
      location: 'yunnan',
      time: { year: -2700, display: '公元前2700年左右', displayEn: 'Around 2700 BCE' }
    },
    spreads: [
      { from: 'china', to: 'japan', time: { year: 805, display: '805年', displayEn: '805 CE' }, via: '日本僧人从中国带回', viaEn: 'Japanese monks brought it from China' },
      { from: 'china', to: 'korea', time: { display: '7世纪', displayEn: '7th century' } },
      { from: 'china', to: 'central-asia', time: { display: '唐代', displayEn: 'Tang Dynasty' }, via: '茶马古道', viaEn: 'Tea Horse Road' },
      { from: 'china', to: 'europe', time: { year: 1610, display: '1610年', displayEn: '1610' }, via: '荷兰商人', viaEn: 'Dutch merchants' },
      { from: 'china', to: 'india', time: { year: 1836, display: '1836年', displayEn: '1836' }, via: '英国东印度公司引种', viaEn: 'Introduced by British East India Company' },
      { from: 'china', to: 'uk', time: { year: 1662, display: '1662年', displayEn: '1662' }, via: '葡萄牙公主凯瑟琳', viaEn: 'Portuguese Princess Catherine' }
    ],
    currentRegions: ['china', 'india', 'kenya', 'sri-lanka', 'turkey', 'fujian', 'zhejiang', 'yunnan'],
    description: '中国对世界的伟大贡献，全球饮用人数最多的饮料之一，深刻影响了英国和日本文化。',
    descriptionEn: 'China\'s great contribution to the world, one of the most consumed beverages globally, profoundly influencing British and Japanese culture.'
  },
  {
    id: 'coffee',
    name: '咖啡',
    nameEn: 'Coffee',
    category: 'beverage',
    origin: {
      location: 'ethiopia',
      time: { year: 850, display: '9世纪左右', displayEn: 'Around 9th century' }
    },
    spreads: [
      { from: 'ethiopia', to: 'saudi-arabia', time: { display: '15世纪', displayEn: '15th century' }, via: '阿拉伯商人', viaEn: 'Arab merchants' },
      { from: 'saudi-arabia', to: 'turkey', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'turkey', to: 'europe', time: { year: 1615, display: '1615年', displayEn: '1615' }, via: '威尼斯商人', viaEn: 'Venetian merchants' },
      { from: 'europe', to: 'indonesia', time: { display: '17世纪', displayEn: '17th century' }, via: '荷兰东印度公司', viaEn: 'Dutch East India Company' },
      { from: 'europe', to: 'caribbean', time: { display: '18世纪', displayEn: '18th century' }, via: '法国殖民者', viaEn: 'French colonists' },
      { from: 'caribbean', to: 'brazil', time: { year: 1727, display: '1727年', displayEn: '1727' } }
    ],
    currentRegions: ['brazil', 'vietnam', 'colombia', 'indonesia', 'ethiopia'],
    description: '埃塞俄比亚发现的神奇饮料，咖啡馆文化深刻影响欧洲启蒙运动和现代都市生活。',
    descriptionEn: 'A magical beverage discovered in Ethiopia. Coffee house culture profoundly influenced the European Enlightenment and modern urban life.'
  },
  {
    id: 'cacao',
    name: '可可',
    nameEn: 'Cacao',
    category: 'beverage',
    origin: {
      location: 'amazon',
      time: { year: -1900, display: '公元前1900年', displayEn: '1900 BCE' }
    },
    spreads: [
      { from: 'amazon', to: 'mesoamerica', time: { display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'mesoamerica', to: 'spain', time: { year: 1528, display: '1528年', displayEn: '1528' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'spain', to: 'europe', time: { display: '17世纪', displayEn: '17th century' } },
      { from: 'europe', to: 'west-africa', time: { display: '19世纪', displayEn: '19th century' }, via: '殖民种植园', viaEn: 'Colonial plantations' },
      { from: 'europe', to: 'southeast-asia', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['ivory-coast', 'ghana', 'indonesia', 'nigeria', 'brazil'],
    description: '阿兹特克人的神圣饮料，巧克力的原料，西非现为世界最大产地。',
    descriptionEn: 'A sacred drink of the Aztecs, the raw material for chocolate. West Africa is now the world\'s largest producer.'
  },
  {
    id: 'sugarcane',
    name: '甘蔗',
    nameEn: 'Sugarcane',
    category: 'sugar',
    origin: {
      location: 'papua-new-guinea',
      time: { year: -8000, display: '公元前8000年', displayEn: '8000 BCE' }
    },
    spreads: [
      { from: 'papua-new-guinea', to: 'southeast-asia', time: { display: '公元前6000年', displayEn: '6000 BCE' } },
      { from: 'southeast-asia', to: 'india', time: { display: '公元前4000年', displayEn: '4000 BCE' } },
      { from: 'india', to: 'middle-east', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '8世纪', displayEn: '8th century' }, via: '阿拉伯扩张', viaEn: 'Arab expansion' },
      { from: 'mediterranean', to: 'caribbean', time: { year: 1493, display: '1493年', displayEn: '1493' }, via: '哥伦布第二次航行', viaEn: 'Columbus\'s second voyage' },
      { from: 'caribbean', to: 'brazil', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['brazil', 'india', 'china', 'thailand', 'pakistan', 'guangdong', 'yunnan'],
    description: '糖的主要来源，加勒比甘蔗种植园与奴隶贸易历史紧密相连。',
    descriptionEn: 'The main source of sugar. Caribbean sugarcane plantations are closely linked to the history of the slave trade.'
  },
  {
    id: 'pepper-black',
    name: '黑胡椒',
    nameEn: 'Black Pepper',
    alias: ['胡椒'],
    category: 'spice',
    origin: {
      location: 'south-india',
      time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前1000年', displayEn: '1000 BCE' }, via: '香料贸易', viaEn: 'Spice trade' },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代', displayEn: 'Roman Era' } },
      { from: 'india', to: 'southeast-asia', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['vietnam', 'india', 'brazil', 'indonesia', 'china'],
    description: '曾与黄金等价的香料之王，推动了大航海时代的探索，现为世界最常用香料。',
    descriptionEn: 'Once worth its weight in gold, the king of spices drove the Age of Exploration. Now the world\'s most commonly used spice.'
  },
  {
    id: 'cinnamon',
    name: '肉桂',
    nameEn: 'Cinnamon',
    alias: ['桂皮'],
    category: 'spice',
    origin: {
      location: 'sri-lanka',
      time: { display: '原产时间不明', displayEn: 'Origin time unknown' }
    },
    spreads: [
      { from: 'sri-lanka', to: 'egypt', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'sri-lanka', to: 'middle-east', time: { display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'mediterranean', to: 'europe', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['indonesia', 'china', 'vietnam', 'sri-lanka', 'madagascar'],
    description: '古老的珍贵香料，用于烘焙和咖喱，中国肉桂与锡兰肉桂是两个主要品种。',
    descriptionEn: 'An ancient precious spice used in baking and curries. Chinese cinnamon and Ceylon cinnamon are the two main varieties.'
  },
  {
    id: 'ginger',
    name: '生姜',
    nameEn: 'Ginger',
    alias: ['姜'],
    category: 'spice',
    origin: {
      location: 'southeast-asia',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'india', to: 'middle-east', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'india', to: 'china', time: { display: '公元前500年', displayEn: '500 BCE' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元1世纪', displayEn: '1st century CE' } },
      { from: 'spain', to: 'caribbean', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['india', 'china', 'nigeria', 'indonesia', 'nepal', 'shandong'],
    description: '亚洲烹饪的灵魂调料，也是重要的药用植物，姜茶、姜饼广受欢迎。',
    descriptionEn: 'The soul of Asian cooking, also an important medicinal plant. Ginger tea and gingerbread are widely popular.'
  },
  {
    id: 'vanilla',
    name: '香草',
    nameEn: 'Vanilla',
    alias: ['香荚兰'],
    category: 'spice',
    origin: {
      location: 'mesoamerica',
      time: { display: '原产时间不明', displayEn: 'Origin time unknown' }
    },
    spreads: [
      { from: 'mexico', to: 'spain', time: { year: 1520, display: '1520年', displayEn: '1520' }, via: '西班牙征服者', viaEn: 'Spanish conquistadors' },
      { from: 'spain', to: 'europe', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'europe', to: 'madagascar', time: { display: '19世纪', displayEn: '19th century' }, via: '法国殖民者', viaEn: 'French colonists' },
      { from: 'europe', to: 'indonesia', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['madagascar', 'indonesia', 'mexico', 'tahiti', 'uganda'],
    description: '仅次于藏红花的第二昂贵香料，冰淇淋和甜点的经典风味。',
    descriptionEn: 'The second most expensive spice after saffron, a classic flavor in ice cream and desserts.'
  },
  {
    id: 'olive',
    name: '橄榄',
    nameEn: 'Olive',
    category: 'oil',
    origin: {
      location: 'mediterranean',
      time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' }
    },
    spreads: [
      { from: 'mediterranean', to: 'egypt', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'mediterranean', to: 'greece', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'mediterranean', to: 'italy', time: { display: '公元前1000年', displayEn: '1000 BCE' } },
      { from: 'mediterranean', to: 'spain', time: { display: '公元前1000年', displayEn: '1000 BCE' }, via: '腓尼基人', viaEn: 'Phoenicians' },
      { from: 'spain', to: 'south-america', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'spain', to: 'usa', time: { display: '18世纪', displayEn: '18th century' }, via: '西班牙传教士', viaEn: 'Spanish missionaries' }
    ],
    currentRegions: ['spain', 'italy', 'greece', 'turkey', 'morocco'],
    description: '地中海文明的象征，橄榄油是地中海饮食的基石，与和平、智慧的象征意义。',
    descriptionEn: 'A symbol of Mediterranean civilization. Olive oil is the cornerstone of the Mediterranean diet, symbolizing peace and wisdom.'
  },
  {
    id: 'sesame',
    name: '芝麻',
    nameEn: 'Sesame',
    alias: ['胡麻'],
    category: 'oil',
    origin: {
      location: 'india',
      time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' }
    },
    spreads: [
      { from: 'india', to: 'mesopotamia', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'mesopotamia', to: 'egypt', time: { display: '公元前1500年', displayEn: '1500 BCE' } },
      { from: 'middle-east', to: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' }, via: '丝绸之路', viaEn: 'Silk Road' },
      { from: 'africa', to: 'north-america', time: { display: '17世纪', displayEn: '17th century' }, via: '奴隶贸易', viaEn: 'Slave trade' }
    ],
    currentRegions: ['sudan', 'india', 'myanmar', 'tanzania', 'china', 'hubei'],
    description: '最古老的油料作物之一，芝麻油和芝麻酱是中东和亚洲烹饪的重要调味品。',
    descriptionEn: 'One of the oldest oil crops. Sesame oil and tahini are important condiments in Middle Eastern and Asian cooking.'
  }
];
