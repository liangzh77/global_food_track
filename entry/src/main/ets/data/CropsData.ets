import { Crop } from '../models/DataModels';

export const CROPS_DATA: Crop[] = [
  // ==================== 谷物 ====================
  {
    id: 'wheat',
    name: '小麦',
    category: 'grain',
    origin: { location: 'fertile-crescent', time: { year: -9500, display: '公元前9500年左右' } },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前6000年' } },
      { from: 'fertile-crescent', to: 'china', time: { display: '公元前3000年' }, via: '丝绸之路前身' },
      { from: 'europe', to: 'north-america', time: { display: '16世纪' }, via: '欧洲殖民者' }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'france'],
    description: '人类最早驯化的作物之一，是全球最重要的粮食作物，面包、面条、馒头等主食的核心原料。'
  },
  {
    id: 'rice',
    name: '水稻',
    alias: ['大米', '稻米'],
    category: 'grain',
    origin: { location: 'yangtze-river', time: { year: -9000, display: '公元前9000年左右' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元前2000年' } },
      { from: 'china', to: 'japan', time: { display: '公元前300年' }, via: '弥生时代移民' },
      { from: 'asia', to: 'europe', time: { display: '8世纪' }, via: '阿拉伯商人' }
    ],
    currentRegions: ['china', 'india', 'indonesia', 'vietnam', 'thailand', 'japan'],
    description: '养活全球一半以上人口的主粮，尤其在亚洲地区具有核心地位。'
  },
  {
    id: 'corn',
    name: '玉米',
    alias: ['包谷', '苞米'],
    category: 'grain',
    origin: { location: 'mesoamerica', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'mexico', to: 'spain', time: { year: 1493, display: '1493年' }, via: '哥伦布第二次航行' },
      { from: 'europe', to: 'china', time: { display: '16世纪中期' }, via: '海上丝绸之路' }
    ],
    currentRegions: ['usa', 'china', 'brazil', 'argentina', 'mexico'],
    description: '美洲原住民的神圣作物，现为全球产量最高的谷物，广泛用于食品和饲料。'
  },
  {
    id: 'millet',
    name: '小米',
    alias: ['粟', '谷子'],
    category: 'grain',
    origin: { location: 'yellow-river', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前3000年' } },
      { from: 'china', to: 'india', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'nigeria'],
    description: '中国北方最古老的粮食作物，曾是华夏文明的主粮，耐旱性极强。'
  },
  {
    id: 'barley',
    name: '大麦',
    category: 'grain',
    origin: { location: 'fertile-crescent', time: { year: -9000, display: '公元前9000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'europe', time: { display: '公元前5000年' } },
      { from: 'fertile-crescent', to: 'china', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['russia', 'germany', 'france', 'canada', 'australia'],
    description: '与小麦同时被驯化，是啤酒酿造的核心原料，也用于饲料和健康食品。'
  },
  {
    id: 'oat',
    name: '燕麦',
    alias: ['莜麦'],
    category: 'grain',
    origin: { location: 'fertile-crescent', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'middle-east', to: 'europe', time: { display: '公元前1000年' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['russia', 'canada', 'australia', 'poland', 'usa'],
    description: '曾被视为杂草，后成为重要谷物，燕麦片是现代健康早餐的代表。'
  },
  {
    id: 'sorghum',
    name: '高粱',
    category: 'grain',
    origin: { location: 'horn-of-africa', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'africa', to: 'india', time: { display: '公元前2000年' } },
      { from: 'africa', to: 'china', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['usa', 'nigeria', 'india', 'china', 'mexico'],
    description: '非洲起源的耐旱作物，是中国白酒的主要原料，也是非洲重要主粮。'
  },
  {
    id: 'buckwheat',
    name: '荞麦',
    category: 'grain',
    origin: { location: 'yunnan', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前2000年' } },
      { from: 'asia', to: 'europe', time: { display: '14世纪' } }
    ],
    currentRegions: ['russia', 'china', 'ukraine', 'france', 'japan'],
    description: '实际上是蓼科植物而非谷物，日本荞麦面和俄罗斯荞麦粥的原料。'
  },
  {
    id: 'quinoa',
    name: '藜麦',
    category: 'grain',
    origin: { location: 'andes', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'peru', to: 'europe', time: { display: '16世纪' }, via: '西班牙人' },
      { from: 'south-america', to: 'north-america', time: { display: '20世纪末' } }
    ],
    currentRegions: ['peru', 'bolivia', 'ecuador', 'usa'],
    description: '印加帝国的"粮食之母"，富含完整蛋白质，是现代超级食物的代表。'
  },
  {
    id: 'rye',
    name: '黑麦',
    category: 'grain',
    origin: { location: 'anatolia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'turkey', to: 'europe', time: { display: '公元前1000年' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['germany', 'poland', 'russia', 'denmark', 'canada'],
    description: '耐寒耐贫瘠的谷物，黑面包和黑麦威士忌的原料，北欧和东欧的传统主粮。'
  },

  // ==================== 蔬菜 ====================
  {
    id: 'potato',
    name: '土豆',
    alias: ['马铃薯', '洋芋'],
    category: 'vegetable',
    origin: { location: 'andes', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'peru', to: 'spain', time: { year: 1570, display: '1570年左右' }, via: '西班牙征服者' },
      { from: 'europe', to: 'russia', time: { display: '18世纪' }, via: '彼得大帝推广' },
      { from: 'europe', to: 'china', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'germany'],
    description: '改变世界人口格局的作物，曾帮助欧洲人口爆发式增长，薯条、薯片的原料。'
  },
  {
    id: 'tomato',
    name: '番茄',
    alias: ['西红柿'],
    category: 'vegetable',
    origin: { location: 'andes', time: { year: -700, display: '公元前700年' } },
    spreads: [
      { from: 'mexico', to: 'spain', time: { year: 1521, display: '1521年' }, via: '西班牙征服者' },
      { from: 'spain', to: 'italy', time: { display: '16世纪中期' } },
      { from: 'europe', to: 'china', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'turkey', 'italy'],
    description: '曾被欧洲人认为有毒的观赏植物，后成为意大利菜和全球烹饪的核心食材。'
  },
  {
    id: 'onion',
    name: '洋葱',
    alias: ['葱头'],
    category: 'vegetable',
    origin: { location: 'central-asia', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'central-asia', to: 'mesopotamia', time: { display: '公元前3000年' } },
      { from: 'middle-east', to: 'europe', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'egypt', 'iran'],
    description: '人类最早驯化的蔬菜之一，几乎所有烹饪传统的基础食材。'
  },
  {
    id: 'garlic',
    name: '大蒜',
    alias: ['蒜'],
    category: 'vegetable',
    origin: { location: 'central-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'central-asia', to: 'middle-east', time: { display: '公元前3000年' } },
      { from: 'mediterranean', to: 'china', time: { display: '汉代' }, via: '丝绸之路' }
    ],
    currentRegions: ['china', 'india', 'korea', 'spain', 'usa'],
    description: '自古被视为有药用价值的调味品，中国是世界最大生产国。'
  },
  {
    id: 'cabbage',
    name: '卷心菜',
    alias: ['甘蓝', '包菜', '洋白菜'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'asia', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'germany', 'japan'],
    description: '欧洲古老蔬菜，酸菜、泡菜的主要原料，耐储存的重要特性使其流行全球。'
  },
  {
    id: 'carrot',
    name: '胡萝卜',
    alias: ['红萝卜'],
    category: 'vegetable',
    origin: { location: 'iran', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'iran', to: 'mediterranean', time: { display: '公元前1000年' } },
      { from: 'netherlands', to: 'europe', time: { display: '17世纪' }, via: '荷兰人培育出橙色品种' }
    ],
    currentRegions: ['china', 'russia', 'usa', 'uzbekistan', 'ukraine'],
    description: '原本是紫色或白色，橙色胡萝卜是荷兰人为纪念奥兰治王室培育的品种。'
  },
  {
    id: 'cucumber',
    name: '黄瓜',
    alias: ['青瓜'],
    category: 'vegetable',
    origin: { location: 'india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前2000年' } },
      { from: 'mediterranean', to: 'china', time: { display: '汉代' }, via: '张骞出使西域' }
    ],
    currentRegions: ['china', 'russia', 'turkey', 'iran', 'usa'],
    description: '汉代从西域传入中国，故名"胡瓜"，后避讳改称黄瓜，是凉拌菜的常见食材。'
  },
  {
    id: 'eggplant',
    name: '茄子',
    alias: ['矮瓜'],
    category: 'vegetable',
    origin: { location: 'india', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'india', to: 'china', time: { display: '公元前500年' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '8世纪' }, via: '阿拉伯商人' }
    ],
    currentRegions: ['china', 'india', 'egypt', 'turkey', 'japan'],
    description: '印度原产，中国是世界最大生产国，鱼香茄子、烤茄子等是经典做法。'
  },
  {
    id: 'spinach',
    name: '菠菜',
    alias: ['菠薐菜'],
    category: 'vegetable',
    origin: { location: 'iran', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'iran', to: 'china', time: { display: '唐代' }, via: '丝绸之路' },
      { from: 'middle-east', to: 'spain', time: { display: '11世纪' }, via: '摩尔人' }
    ],
    currentRegions: ['china', 'usa', 'japan', 'turkey', 'indonesia'],
    description: '波斯原产，唐代传入中国称"菠薐菜"，富含铁和维生素的绿叶蔬菜。'
  },
  {
    id: 'lettuce',
    name: '生菜',
    alias: ['莴苣'],
    category: 'vegetable',
    origin: { location: 'egypt', time: { year: -4500, display: '公元前4500年' } },
    spreads: [
      { from: 'egypt', to: 'greece', time: { display: '公元前500年' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'usa', 'spain', 'italy', 'india'],
    description: '古埃及人最早种植，西方沙拉的主要食材，中国是世界最大生产国。'
  },
  {
    id: 'pumpkin',
    name: '南瓜',
    alias: ['番瓜', '倭瓜'],
    category: 'vegetable',
    origin: { location: 'mesoamerica', time: { year: -7500, display: '公元前7500年' } },
    spreads: [
      { from: 'mexico', to: 'europe', time: { display: '16世纪' }, via: '西班牙人' },
      { from: 'europe', to: 'china', time: { display: '明代' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'ukraine', 'usa'],
    description: '美洲三姐妹作物之一，万圣节南瓜灯的来源，南瓜派是美国感恩节传统食品。'
  },
  {
    id: 'sweetpotato',
    name: '红薯',
    alias: ['番薯', '地瓜', '山芋'],
    category: 'vegetable',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'south-america', to: 'spain', time: { display: '16世纪' } },
      { from: 'philippines', to: 'china', time: { year: 1593, display: '1593年' }, via: '陈振龙从菲律宾引入' }
    ],
    currentRegions: ['china', 'nigeria', 'tanzania', 'indonesia', 'uganda'],
    description: '明代传入中国后迅速普及，帮助中国人口突破一亿，烤红薯是冬季街头美食。'
  },
  {
    id: 'radish',
    name: '萝卜',
    alias: ['白萝卜', '莱菔'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'china', time: { display: '公元前500年' } },
      { from: 'europe', to: 'japan', time: { display: '8世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'india', 'usa'],
    description: '东亚饮食中的重要蔬菜，萝卜炖肉、萝卜干、日本萝卜泥都是经典吃法。'
  },
  {
    id: 'celery',
    name: '芹菜',
    alias: ['西芹', '旱芹'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'china', time: { display: '汉代' } }
    ],
    currentRegions: ['china', 'usa', 'india', 'spain', 'mexico'],
    description: '古希腊人用作药物和调味料，现代芹菜汁是流行的健康饮品。'
  },
  {
    id: 'broccoli',
    name: '西兰花',
    alias: ['绿花菜', '青花菜'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -600, display: '公元前600年' } },
    spreads: [
      { from: 'italy', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'usa', time: { display: '20世纪初' } }
    ],
    currentRegions: ['china', 'india', 'spain', 'mexico', 'usa'],
    description: '意大利培育的甘蓝变种，富含抗癌物质，被誉为"蔬菜皇冠"。'
  },
  {
    id: 'cauliflower',
    name: '花椰菜',
    alias: ['菜花', '花菜'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -600, display: '公元前600年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'asia', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'india', 'spain', 'italy', 'france'],
    description: '与西兰花同源的甘蓝变种，干锅花菜是中国川菜名菜。'
  },
  {
    id: 'asparagus',
    name: '芦笋',
    alias: ['石刁柏'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'peru', 'mexico', 'germany', 'spain'],
    description: '古罗马人视为珍贵蔬菜，德国白芦笋季是每年春天的盛事。'
  },
  {
    id: 'leek',
    name: '韭葱',
    alias: ['大葱', '西葱'],
    category: 'vegetable',
    origin: { location: 'central-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'central-asia', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['indonesia', 'turkey', 'france', 'belgium', 'korea'],
    description: '威尔士的国家象征，法式浓汤的经典食材。'
  },
  {
    id: 'chive',
    name: '韭菜',
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'asia', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'vietnam'],
    description: '中国原产蔬菜，韭菜盒子、韭菜饺子是北方传统美食，被称为"起阳草"。'
  },
  {
    id: 'ginger-root',
    name: '姜',
    alias: ['生姜'],
    category: 'vegetable',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年' } },
      { from: 'india', to: 'china', time: { display: '公元前500年' } }
    ],
    currentRegions: ['india', 'china', 'indonesia', 'nepal', 'nigeria'],
    description: '亚洲烹饪的灵魂调料，也是重要的药用植物，姜茶、姜饼广受欢迎。'
  },
  {
    id: 'mushroom',
    name: '蘑菇',
    alias: ['香菇', '草菇'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元200年' } },
      { from: 'asia', to: 'europe', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'usa', 'netherlands', 'poland', 'spain'],
    description: '中国人最早人工栽培香菇，现代蘑菇品种丰富，是素食者的重要蛋白质来源。'
  },

  // ==================== 水果 ====================
  {
    id: 'apple',
    name: '苹果',
    category: 'fruit',
    origin: { location: 'central-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'central-asia', to: 'middle-east', time: { display: '公元前3000年' }, via: '丝绸之路' },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { year: 1620, display: '1620年' }, via: '欧洲殖民者' }
    ],
    currentRegions: ['china', 'usa', 'turkey', 'poland', 'italy'],
    description: '哈萨克斯坦山区的野生苹果是现代苹果的祖先，中国是世界最大苹果生产国。'
  },
  {
    id: 'banana',
    name: '香蕉',
    alias: ['芭蕉'],
    category: 'fruit',
    origin: { location: 'papua-new-guinea', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'papua-new-guinea', to: 'southeast-asia', time: { display: '公元前5000年' } },
      { from: 'africa', to: 'caribbean', time: { year: 1516, display: '1516年' }, via: '葡萄牙商人' }
    ],
    currentRegions: ['india', 'china', 'indonesia', 'brazil', 'ecuador'],
    description: '热带地区最重要的水果，无籽香蕉是人类培育的结果。'
  },
  {
    id: 'grape',
    name: '葡萄',
    category: 'fruit',
    origin: { location: 'fertile-crescent', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'mediterranean', to: 'france', time: { display: '公元前600年' }, via: '希腊殖民者' },
      { from: 'central-asia', to: 'china', time: { display: '汉代' }, via: '张骞通西域引入' }
    ],
    currentRegions: ['china', 'italy', 'france', 'spain', 'usa'],
    description: '酿造葡萄酒的原料，与人类文明史紧密相连，葡萄干也是古老的保存方式。'
  },
  {
    id: 'orange',
    name: '橙子',
    alias: ['柳橙', '甜橙'],
    category: 'fruit',
    origin: { location: 'yunnan', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'china', to: 'india', time: { display: '公元前1500年' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '10世纪' }, via: '阿拉伯商人' }
    ],
    currentRegions: ['brazil', 'china', 'india', 'usa', 'spain'],
    description: '中国云南原产的柑橘类水果，橙汁是现代最流行的果汁。'
  },
  {
    id: 'watermelon',
    name: '西瓜',
    category: 'fruit',
    origin: { location: 'west-africa', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'west-africa', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'india', to: 'china', time: { display: '10世纪' } }
    ],
    currentRegions: ['china', 'turkey', 'iran', 'brazil', 'usa'],
    description: '非洲起源的消暑水果，中国是世界最大生产和消费国，产量占全球70%。'
  },
  {
    id: 'peach',
    name: '桃子',
    alias: ['桃'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前2000年' }, via: '丝绸之路' },
      { from: 'iran', to: 'mediterranean', time: { display: '公元前400年' }, via: '亚历山大东征' }
    ],
    currentRegions: ['china', 'spain', 'italy', 'usa', 'greece'],
    description: '中国原产水果，在中国文化中象征长寿，英文名Peach源于波斯。'
  },
  {
    id: 'pear',
    name: '梨',
    category: 'fruit',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前1000年' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'argentina', 'italy', 'usa', 'spain'],
    description: '中国和欧洲各自独立驯化了不同种类的梨，是重要的温带水果。'
  },
  {
    id: 'mango',
    name: '芒果',
    category: 'fruit',
    origin: { location: 'india', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '公元前500年' } },
      { from: 'asia', to: 'africa', time: { display: '10世纪' } },
      { from: 'asia', to: 'south-america', time: { display: '16世纪' }, via: '葡萄牙人' }
    ],
    currentRegions: ['india', 'china', 'thailand', 'indonesia', 'mexico'],
    description: '印度国果，被称为"热带水果之王"，全球有超过500个品种。'
  },
  {
    id: 'pineapple',
    name: '菠萝',
    alias: ['凤梨'],
    category: 'fruit',
    origin: { location: 'south-america', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'south-america', to: 'caribbean', time: { display: '公元前500年' } },
      { from: 'caribbean', to: 'europe', time: { year: 1493, display: '1493年' }, via: '哥伦布' }
    ],
    currentRegions: ['costa-rica', 'philippines', 'brazil', 'thailand', 'indonesia'],
    description: '曾是欧洲贵族的奢侈品，现为热带最重要的商业水果之一。'
  },
  {
    id: 'strawberry',
    name: '草莓',
    category: 'fruit',
    origin: { location: 'north-america', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'north-america', to: 'europe', time: { display: '18世纪' } },
      { from: 'europe', to: 'asia', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'usa', 'mexico', 'turkey', 'spain'],
    description: '现代草莓是18世纪在法国用北美和南美野生种杂交培育的新品种。'
  },
  {
    id: 'cherry',
    name: '樱桃',
    alias: ['车厘子'],
    category: 'fruit',
    origin: { location: 'turkey', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'turkey', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['turkey', 'usa', 'iran', 'italy', 'spain'],
    description: '原产于黑海沿岸，日本樱花与樱桃同属但不同种，车厘子是英文cherry的音译。'
  },
  {
    id: 'lemon',
    name: '柠檬',
    category: 'fruit',
    origin: { location: 'india', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '10世纪' }, via: '阿拉伯商人' }
    ],
    currentRegions: ['india', 'mexico', 'china', 'argentina', 'brazil'],
    description: '柑橘和柚子的天然杂交种，曾用于治疗坏血病，现是重要的调味水果。'
  },
  {
    id: 'coconut',
    name: '椰子',
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年' } },
      { from: 'asia', to: 'pacific', time: { display: '公元前1000年' }, via: '南岛民族' }
    ],
    currentRegions: ['indonesia', 'philippines', 'india', 'brazil', 'sri-lanka'],
    description: '热带地区的"生命之树"，椰子水、椰奶、椰子油都有广泛应用。'
  },
  {
    id: 'papaya',
    name: '木瓜',
    alias: ['番木瓜'],
    category: 'fruit',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'caribbean', time: { display: '16世纪' } },
      { from: 'caribbean', to: 'asia', time: { display: '16世纪' }, via: '西班牙人' }
    ],
    currentRegions: ['india', 'brazil', 'indonesia', 'nigeria', 'mexico'],
    description: '美洲热带原产，富含木瓜蛋白酶，可用于嫩肉。'
  },
  {
    id: 'avocado',
    name: '牛油果',
    alias: ['鳄梨', '酪梨'],
    category: 'fruit',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mexico', to: 'south-america', time: { display: '公元前3000年' } },
      { from: 'america', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['mexico', 'dominican-republic', 'peru', 'indonesia', 'colombia'],
    description: '阿兹特克人称为"森林黄油"，现代健康饮食的明星食材，墨西哥鳄梨酱的主料。'
  },
  {
    id: 'pomegranate',
    name: '石榴',
    category: 'fruit',
    origin: { location: 'iran', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'iran', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'mediterranean', to: 'china', time: { display: '汉代' }, via: '张骞出使西域' }
    ],
    currentRegions: ['india', 'iran', 'turkey', 'usa', 'spain'],
    description: '波斯原产，在中国象征多子多福，石榴汁富含抗氧化物质。'
  },
  {
    id: 'fig',
    name: '无花果',
    category: 'fruit',
    origin: { location: 'middle-east', time: { year: -9000, display: '公元前9000年' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前3000年' } },
      { from: 'mediterranean', to: 'asia', time: { display: '汉代' } }
    ],
    currentRegions: ['turkey', 'egypt', 'morocco', 'iran', 'spain'],
    description: '可能是人类最早栽培的水果，圣经中多次提及，地中海饮食的重要组成。'
  },
  {
    id: 'date',
    name: '枣椰',
    alias: ['椰枣', '海枣'],
    category: 'fruit',
    origin: { location: 'mesopotamia', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'mesopotamia', to: 'egypt', time: { display: '公元前4000年' } },
      { from: 'middle-east', to: 'north-africa', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['egypt', 'iran', 'saudi-arabia', 'algeria', 'iraq'],
    description: '中东和北非的重要食物，穆斯林斋月期间开斋的传统食品。'
  },
  {
    id: 'lychee',
    name: '荔枝',
    category: 'fruit',
    origin: { location: 'yunnan', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元100年' } },
      { from: 'asia', to: 'africa', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'india', 'vietnam', 'thailand', 'madagascar'],
    description: '中国岭南特产，杨贵妃最爱的水果，"一骑红尘妃子笑"的典故广为流传。'
  },
  {
    id: 'longan',
    name: '龙眼',
    alias: ['桂圆'],
    category: 'fruit',
    origin: { location: 'yunnan', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元500年' } },
      { from: 'asia', to: 'australia', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'thailand', 'vietnam', 'india', 'taiwan'],
    description: '中国岭南特产，干制后称桂圆，是传统滋补食材。'
  },
  {
    id: 'durian',
    name: '榴莲',
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '15世纪' } },
      { from: 'southeast-asia', to: 'australia', time: { display: '20世纪' } }
    ],
    currentRegions: ['thailand', 'malaysia', 'indonesia', 'vietnam', 'philippines'],
    description: '东南亚原产的"水果之王"，气味独特，爱者极爱恨者极恨。'
  },
  {
    id: 'kiwi',
    name: '猕猴桃',
    alias: ['奇异果'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'china', to: 'new-zealand', time: { year: 1904, display: '1904年' }, via: '传教士带回种子' },
      { from: 'new-zealand', to: 'europe', time: { display: '20世纪中期' } }
    ],
    currentRegions: ['china', 'new-zealand', 'italy', 'iran', 'chile'],
    description: '中国原产，新西兰人以国鸟奇异鸟命名并成功商业化，富含维生素C。'
  },
  {
    id: 'persimmon',
    name: '柿子',
    category: 'fruit',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元700年' } },
      { from: 'asia', to: 'europe', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'spain', 'korea', 'japan', 'brazil'],
    description: '中国原产水果，柿饼是传统零食，日本甜柿是著名品种。'
  },
  {
    id: 'plum',
    name: '李子',
    alias: ['布林'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前1000年' } },
      { from: 'asia', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'romania', 'serbia', 'usa', 'iran'],
    description: '中国原产，欧洲李和中国李是不同种，李子干（西梅）是健康零食。'
  },
  {
    id: 'apricot',
    name: '杏',
    alias: ['杏子'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'central-asia', time: { display: '公元前2000年' } },
      { from: 'central-asia', to: 'mediterranean', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['turkey', 'uzbekistan', 'iran', 'italy', 'algeria'],
    description: '中国原产，杏仁可食用，杏干是丝绸之路沿线的传统食品。'
  },
  {
    id: 'melon',
    name: '甜瓜',
    alias: ['香瓜', '哈密瓜'],
    category: 'fruit',
    origin: { location: 'africa', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'africa', to: 'middle-east', time: { display: '公元前2000年' } },
      { from: 'middle-east', to: 'china', time: { display: '汉代' } }
    ],
    currentRegions: ['china', 'turkey', 'iran', 'egypt', 'india'],
    description: '品种繁多，哈密瓜是新疆名产，网纹瓜是日本高档水果。'
  },
  {
    id: 'grapefruit',
    name: '葡萄柚',
    alias: ['西柚'],
    category: 'fruit',
    origin: { location: 'caribbean', time: { year: 1750, display: '18世纪中期' } },
    spreads: [
      { from: 'caribbean', to: 'usa', time: { display: '19世纪' } },
      { from: 'usa', to: 'asia', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'usa', 'mexico', 'south-africa', 'israel'],
    description: '橙子和柚子的自然杂交种，在加勒比海地区被发现，是相对年轻的水果。'
  },
  {
    id: 'mandarin',
    name: '柑橘',
    alias: ['橘子', '桔子'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元前1000年' } },
      { from: 'asia', to: 'mediterranean', time: { display: '10世纪' } }
    ],
    currentRegions: ['china', 'spain', 'turkey', 'morocco', 'egypt'],
    description: '中国原产的重要柑橘类水果，品种繁多，是春节传统水果。'
  },
  {
    id: 'passion-fruit',
    name: '百香果',
    alias: ['西番莲', '鸡蛋果'],
    category: 'fruit',
    origin: { location: 'south-america', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'south-america', to: 'australia', time: { display: '19世纪' } },
      { from: 'australia', to: 'asia', time: { display: '20世纪' } }
    ],
    currentRegions: ['brazil', 'ecuador', 'indonesia', 'peru', 'vietnam'],
    description: '南美原产热带水果，因花朵像耶稣受难的十字架而得名"passion"（受难）。'
  },
  {
    id: 'guava',
    name: '番石榴',
    alias: ['芭乐'],
    category: 'fruit',
    origin: { location: 'mesoamerica', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'mesoamerica', to: 'caribbean', time: { display: '16世纪' } },
      { from: 'america', to: 'asia', time: { display: '17世纪' }, via: '西班牙和葡萄牙人' }
    ],
    currentRegions: ['india', 'china', 'thailand', 'indonesia', 'mexico'],
    description: '美洲热带原产，富含维生素C，台湾芭乐是著名品种。'
  },

  // ==================== 豆类 ====================
  {
    id: 'soybean',
    name: '大豆',
    alias: ['黄豆'],
    category: 'legume',
    origin: { location: 'china', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'asia', to: 'usa', time: { year: 1765, display: '1765年' } },
      { from: 'usa', to: 'brazil', time: { display: '20世纪初' } }
    ],
    currentRegions: ['brazil', 'usa', 'argentina', 'china', 'india'],
    description: '东亚文明的蛋白质来源，豆腐、酱油、豆浆的原料，现为全球最重要的油料和饲料作物。'
  },
  {
    id: 'peanut',
    name: '花生',
    alias: ['落花生', '长生果'],
    category: 'legume',
    origin: { location: 'south-america', time: { year: -3500, display: '公元前3500年' } },
    spreads: [
      { from: 'south-america', to: 'spain', time: { display: '16世纪初' }, via: '西班牙征服者' },
      { from: 'africa', to: 'china', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'nigeria', 'sudan'],
    description: '南美原产的重要油料作物，花生酱是美国文化的标志性食品。'
  },
  {
    id: 'chickpea',
    name: '鹰嘴豆',
    alias: ['鸡豆'],
    category: 'legume',
    origin: { location: 'turkey', time: { year: -7500, display: '公元前7500年' } },
    spreads: [
      { from: 'turkey', to: 'india', time: { display: '公元前4000年' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前3000年' } }
    ],
    currentRegions: ['india', 'australia', 'turkey', 'pakistan', 'myanmar'],
    description: '鹰嘴豆泥（hummus）的原料，中东和南亚的重要蛋白质来源。'
  },
  {
    id: 'lentil',
    name: '扁豆',
    alias: ['兵豆'],
    category: 'legume',
    origin: { location: 'fertile-crescent', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前4000年' } },
      { from: 'middle-east', to: 'india', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['canada', 'india', 'turkey', 'usa', 'australia'],
    description: '人类最早种植的豆类之一，印度达尔（dal）的主要原料。'
  },
  {
    id: 'mung-bean',
    name: '绿豆',
    category: 'legume',
    origin: { location: 'india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'china', time: { display: '公元前1000年' } },
      { from: 'asia', to: 'africa', time: { display: '公元500年' } }
    ],
    currentRegions: ['india', 'china', 'myanmar', 'indonesia', 'thailand'],
    description: '绿豆汤是中国传统消暑饮品，绿豆芽是常见蔬菜，粉丝的主要原料。'
  },
  {
    id: 'red-bean',
    name: '红豆',
    alias: ['赤小豆'],
    category: 'legume',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元700年' } },
      { from: 'asia', to: 'africa', time: { display: '公元1000年' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'taiwan', 'thailand'],
    description: '东亚传统食材，红豆沙是经典甜点馅料，日本红豆饭是庆典食品。'
  },
  {
    id: 'black-bean',
    name: '黑豆',
    category: 'legume',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'south-america', time: { display: '公元前2000年' } },
      { from: 'america', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['brazil', 'mexico', 'usa', 'india', 'myanmar'],
    description: '拉丁美洲饮食的核心食材，巴西黑豆饭是国菜，墨西哥卷饼常用配料。'
  },
  {
    id: 'kidney-bean',
    name: '芸豆',
    alias: ['四季豆', '菜豆'],
    category: 'legume',
    origin: { location: 'mesoamerica', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'south-america', time: { display: '公元前3000年' } },
      { from: 'america', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['india', 'brazil', 'myanmar', 'china', 'usa'],
    description: '美洲三姐妹作物之一，品种繁多，干煸四季豆是川菜名菜。'
  },
  {
    id: 'broad-bean',
    name: '蚕豆',
    alias: ['胡豆', '罗汉豆'],
    category: 'legume',
    origin: { location: 'mediterranean', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'mediterranean', to: 'middle-east', time: { display: '公元前4000年' } },
      { from: 'middle-east', to: 'china', time: { display: '汉代' } }
    ],
    currentRegions: ['china', 'ethiopia', 'australia', 'uk', 'egypt'],
    description: '地中海原产，蚕豆酱是郫县豆瓣的原料，油炸蚕豆是传统零食。'
  },

  // ==================== 坚果 ====================
  {
    id: 'walnut',
    name: '核桃',
    alias: ['胡桃'],
    category: 'nut',
    origin: { location: 'central-asia', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'central-asia', to: 'china', time: { display: '汉代' }, via: '张骞出使西域' },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'usa', 'iran', 'turkey', 'mexico'],
    description: '形似大脑被认为补脑，是重要的木本油料作物，核桃仁是糕点常用配料。'
  },
  {
    id: 'almond',
    name: '杏仁',
    alias: ['扁桃仁', '巴旦木'],
    category: 'nut',
    origin: { location: 'middle-east', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前3000年' } },
      { from: 'mediterranean', to: 'usa', time: { display: '18世纪' } }
    ],
    currentRegions: ['usa', 'spain', 'iran', 'morocco', 'syria'],
    description: '加州是世界最大产地，杏仁奶是流行的植物奶，意大利杏仁饼是经典甜点。'
  },
  {
    id: 'cashew',
    name: '腰果',
    alias: ['鸡腰果'],
    category: 'nut',
    origin: { location: 'amazon', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'brazil', to: 'india', time: { display: '16世纪' }, via: '葡萄牙人' },
      { from: 'india', to: 'africa', time: { display: '17世纪' } }
    ],
    currentRegions: ['vietnam', 'india', 'brazil', 'tanzania'],
    description: '实际上是种子而非坚果，腰果鸡丁是中国名菜，越南是最大出口国。'
  },
  {
    id: 'pistachio',
    name: '开心果',
    alias: ['阿月浑子'],
    category: 'nut',
    origin: { location: 'central-asia', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'central-asia', to: 'mediterranean', time: { display: '公元前3000年' } },
      { from: 'mediterranean', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['iran', 'usa', 'turkey', 'syria', 'china'],
    description: '波斯贵族的美食，中东甜点的常用配料，因开裂似笑脸而得名开心果。'
  },
  {
    id: 'hazelnut',
    name: '榛子',
    category: 'nut',
    origin: { location: 'turkey', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'turkey', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['turkey', 'italy', 'usa', 'spain', 'iran'],
    description: '土耳其是世界最大产地，Nutella巧克力榛子酱风靡全球。'
  },
  {
    id: 'chestnut',
    name: '板栗',
    alias: ['栗子'],
    category: 'nut',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'bolivia', 'turkey', 'south-korea', 'italy'],
    description: '中国是世界最大产地，糖炒栗子是冬季街头美食，栗子鸡是传统名菜。'
  },
  {
    id: 'macadamia',
    name: '夏威夷果',
    alias: ['澳洲坚果'],
    category: 'nut',
    origin: { location: 'australia', time: { year: -3000, display: '约3000年前' } },
    spreads: [
      { from: 'australia', to: 'usa', time: { display: '19世纪末' } },
      { from: 'usa', to: 'africa', time: { display: '20世纪' } }
    ],
    currentRegions: ['australia', 'south-africa', 'kenya', 'usa', 'guatemala'],
    description: '澳大利亚原产，世界上最贵的坚果之一，常用于巧克力和冰淇淋。'
  },
  {
    id: 'pine-nut',
    name: '松子',
    category: 'nut',
    origin: { location: 'mediterranean', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'mediterranean', to: 'middle-east', time: { display: '公元前2000年' } },
      { from: 'asia', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'north-korea', 'russia', 'pakistan', 'afghanistan'],
    description: '多种松树的种子，意大利青酱的重要配料，东北红松子是珍贵品种。'
  },

  // ==================== 香料 ====================
  {
    id: 'chili',
    name: '辣椒',
    alias: ['辣子', '海椒'],
    category: 'spice',
    origin: { location: 'mesoamerica', time: { year: -7500, display: '公元前7500年' } },
    spreads: [
      { from: 'mexico', to: 'spain', time: { year: 1493, display: '1493年' }, via: '哥伦布' },
      { from: 'portugal', to: 'india', time: { display: '16世纪' }, via: '葡萄牙商人' },
      { from: 'portugal', to: 'china', time: { display: '16世纪末' }, via: '海上丝绸之路' }
    ],
    currentRegions: ['china', 'india', 'mexico', 'thailand', 'indonesia'],
    description: '彻底改变亚洲饮食的美洲作物，川菜、湘菜、泰国菜、韩国菜的灵魂。'
  },
  {
    id: 'pepper-black',
    name: '黑胡椒',
    alias: ['胡椒'],
    category: 'spice',
    origin: { location: 'south-india', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前1000年' }, via: '香料贸易' },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['vietnam', 'india', 'brazil', 'indonesia', 'china'],
    description: '曾与黄金等价的香料之王，推动了大航海时代的探索，现为世界最常用香料。'
  },
  {
    id: 'ginger',
    name: '生姜',
    alias: ['姜'],
    category: 'spice',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年' } },
      { from: 'india', to: 'china', time: { display: '公元前500年' } },
      { from: 'spain', to: 'caribbean', time: { display: '16世纪' } }
    ],
    currentRegions: ['india', 'china', 'indonesia', 'nepal', 'nigeria'],
    description: '亚洲烹饪的灵魂调料，也是重要的药用植物，姜茶、姜饼广受欢迎。'
  },
  {
    id: 'cinnamon',
    name: '肉桂',
    alias: ['桂皮'],
    category: 'spice',
    origin: { location: 'sri-lanka', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'sri-lanka', to: 'middle-east', time: { display: '公元前1500年' } },
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前500年' } }
    ],
    currentRegions: ['indonesia', 'china', 'vietnam', 'sri-lanka', 'madagascar'],
    description: '古代最珍贵的香料之一，圣经多次提及，肉桂卷是北欧传统甜点。'
  },
  {
    id: 'clove',
    name: '丁香',
    category: 'spice',
    origin: { location: 'indonesia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'indonesia', to: 'india', time: { display: '公元前500年' } },
      { from: 'india', to: 'middle-east', time: { display: '公元100年' } }
    ],
    currentRegions: ['indonesia', 'madagascar', 'tanzania', 'sri-lanka', 'brazil'],
    description: '马鲁古群岛原产的珍贵香料，曾引发殖民战争，是五香粉的成分之一。'
  },
  {
    id: 'nutmeg',
    name: '肉豆蔻',
    category: 'spice',
    origin: { location: 'indonesia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'indonesia', to: 'india', time: { display: '公元前500年' } },
      { from: 'india', to: 'middle-east', time: { display: '公元600年' } }
    ],
    currentRegions: ['indonesia', 'india', 'guatemala', 'sri-lanka', 'grenada'],
    description: '班达群岛原产，曾比黄金还珍贵，荷兰人为垄断此香料发动战争。'
  },
  {
    id: 'turmeric',
    name: '姜黄',
    alias: ['黄姜'],
    category: 'spice',
    origin: { location: 'india', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '公元前500年' } },
      { from: 'asia', to: 'africa', time: { display: '公元800年' } }
    ],
    currentRegions: ['india', 'bangladesh', 'pakistan', 'myanmar', 'china'],
    description: '咖喱的主要成分，给食物染上金黄色，也是传统药材和染料。'
  },
  {
    id: 'cumin',
    name: '孜然',
    alias: ['小茴香'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'india', time: { display: '公元前2000年' } },
      { from: 'india', to: 'china', time: { display: '唐代' } }
    ],
    currentRegions: ['india', 'syria', 'turkey', 'iran', 'china'],
    description: '新疆羊肉串的灵魂调料，也是印度咖喱和墨西哥菜的重要香料。'
  },
  {
    id: 'coriander',
    name: '芫荽',
    alias: ['香菜', '胡荽'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mediterranean', to: 'middle-east', time: { display: '公元前3000年' } },
      { from: 'middle-east', to: 'china', time: { display: '汉代' }, via: '张骞出使西域' }
    ],
    currentRegions: ['india', 'morocco', 'romania', 'russia', 'iran'],
    description: '叶子和种子都可食用，对香菜的喜恶与基因有关，是亚洲和拉美菜的常用调料。'
  },
  {
    id: 'cardamom',
    name: '豆蔻',
    alias: ['小豆蔻'],
    category: 'spice',
    origin: { location: 'south-india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'middle-east', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['guatemala', 'india', 'indonesia', 'sri-lanka', 'tanzania'],
    description: '仅次于藏红花和香草的第三贵香料，阿拉伯咖啡的传统配料。'
  },
  {
    id: 'saffron',
    name: '藏红花',
    alias: ['番红花', '西红花'],
    category: 'spice',
    origin: { location: 'greece', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'greece', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'middle-east', to: 'spain', time: { display: '10世纪' }, via: '摩尔人' }
    ],
    currentRegions: ['iran', 'spain', 'india', 'greece', 'morocco'],
    description: '世界上最昂贵的香料，需手工采摘花蕊，西班牙海鲜饭的关键配料。'
  },
  {
    id: 'vanilla',
    name: '香草',
    alias: ['香荚兰'],
    category: 'spice',
    origin: { location: 'mesoamerica', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'mexico', to: 'europe', time: { display: '16世纪' }, via: '西班牙人' },
      { from: 'europe', to: 'madagascar', time: { display: '19世纪' } }
    ],
    currentRegions: ['madagascar', 'indonesia', 'mexico', 'uganda', 'tahiti'],
    description: '阿兹特克人用于调味巧克力，仅次于藏红花的第二贵香料，冰淇淋的经典口味。'
  },
  {
    id: 'star-anise',
    name: '八角',
    alias: ['大料', '八角茴香'],
    category: 'spice',
    origin: { location: 'yunnan', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元500年' } },
      { from: 'asia', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'vietnam', 'laos', 'japan'],
    description: '中国五香粉和越南河粉的关键香料，也是提取莽草酸（抗流感药物原料）的来源。'
  },
  {
    id: 'sichuan-pepper',
    name: '花椒',
    alias: ['川椒', '蜀椒'],
    category: 'spice',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元500年' } },
      { from: 'china', to: 'southeast-asia', time: { display: '公元1000年' } }
    ],
    currentRegions: ['china', 'nepal', 'bhutan', 'japan'],
    description: '川菜麻辣风味的来源，能产生独特的麻木感，与辣椒组成"麻辣"组合。'
  },
  {
    id: 'mustard',
    name: '芥末',
    alias: ['芥菜籽'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'india', time: { display: '公元前2000年' } },
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['canada', 'nepal', 'ukraine', 'russia', 'usa'],
    description: '制作芥末酱的原料，法国第戎芥末酱世界闻名，也是重要的油料作物。'
  },
  {
    id: 'fennel',
    name: '茴香',
    alias: ['小茴香'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'middle-east', time: { display: '公元前2000年' } },
      { from: 'middle-east', to: 'china', time: { display: '唐代' } }
    ],
    currentRegions: ['india', 'china', 'egypt', 'syria', 'morocco'],
    description: '茴香籽是五香粉成分之一，茴香球茎在意大利是常见蔬菜，茴香饺子是北方美食。'
  },
  {
    id: 'bay-leaf',
    name: '月桂叶',
    alias: ['香叶'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'mediterranean', to: 'asia', time: { display: '公元500年' } }
    ],
    currentRegions: ['turkey', 'spain', 'italy', 'india', 'china'],
    description: '古希腊胜利者的桂冠原料，西餐和中餐卤味的常用香料。'
  },

  // ==================== 饮料作物 ====================
  {
    id: 'tea',
    name: '茶',
    alias: ['茶叶'],
    category: 'beverage',
    origin: { location: 'yunnan', time: { year: -2700, display: '公元前2700年左右' } },
    spreads: [
      { from: 'china', to: 'japan', time: { year: 805, display: '805年' }, via: '日本僧人从中国带回' },
      { from: 'china', to: 'europe', time: { year: 1610, display: '1610年' }, via: '荷兰商人' },
      { from: 'china', to: 'india', time: { year: 1836, display: '1836年' }, via: '英国东印度公司引种' }
    ],
    currentRegions: ['china', 'india', 'kenya', 'sri-lanka', 'turkey'],
    description: '中国对世界的伟大贡献，全球饮用人数最多的饮料之一，深刻影响了英国和日本文化。'
  },
  {
    id: 'coffee',
    name: '咖啡',
    category: 'beverage',
    origin: { location: 'ethiopia', time: { year: 850, display: '9世纪左右' } },
    spreads: [
      { from: 'ethiopia', to: 'turkey', time: { display: '16世纪' } },
      { from: 'turkey', to: 'europe', time: { year: 1615, display: '1615年' }, via: '威尼斯商人' },
      { from: 'caribbean', to: 'brazil', time: { year: 1727, display: '1727年' } }
    ],
    currentRegions: ['brazil', 'vietnam', 'colombia', 'indonesia', 'ethiopia'],
    description: '埃塞俄比亚发现的神奇饮料，咖啡馆文化深刻影响欧洲启蒙运动和现代都市生活。'
  },
  {
    id: 'cacao',
    name: '可可',
    category: 'beverage',
    origin: { location: 'amazon', time: { year: -1900, display: '公元前1900年' } },
    spreads: [
      { from: 'mesoamerica', to: 'spain', time: { year: 1528, display: '1528年' }, via: '西班牙征服者' },
      { from: 'europe', to: 'west-africa', time: { display: '19世纪' }, via: '殖民种植园' }
    ],
    currentRegions: ['ivory-coast', 'ghana', 'indonesia', 'nigeria', 'ecuador'],
    description: '阿兹特克人的神圣饮料，巧克力的原料，西非现为世界最大产地。'
  },
  {
    id: 'yerba-mate',
    name: '马黛茶',
    alias: ['巴拉圭茶'],
    category: 'beverage',
    origin: { location: 'south-america', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'south-america', to: 'europe', time: { display: '16世纪' }, via: '耶稣会传教士' },
      { from: 'south-america', to: 'middle-east', time: { display: '19世纪' } }
    ],
    currentRegions: ['argentina', 'brazil', 'paraguay', 'uruguay'],
    description: '南美洲的国民饮料，阿根廷人和乌拉圭人随身携带马黛茶具是文化标志。'
  },
  {
    id: 'hop',
    name: '啤酒花',
    alias: ['蛇麻'],
    category: 'beverage',
    origin: { location: 'europe', time: { year: 800, display: '约公元800年' } },
    spreads: [
      { from: 'germany', to: 'europe', time: { display: '12世纪' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['usa', 'germany', 'ethiopia', 'czech-republic', 'china'],
    description: '赋予啤酒苦味和香气的关键原料，精酿啤酒运动使啤酒花品种备受关注。'
  },

  // ==================== 油料作物 ====================
  {
    id: 'olive',
    name: '橄榄',
    category: 'oil',
    origin: { location: 'mediterranean', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'mediterranean', to: 'spain', time: { display: '公元前1000年' }, via: '腓尼基人' },
      { from: 'spain', to: 'south-america', time: { display: '16世纪' } }
    ],
    currentRegions: ['spain', 'italy', 'greece', 'turkey', 'morocco'],
    description: '地中海文明的象征，橄榄油是地中海饮食的基石，与和平、智慧的象征意义。'
  },
  {
    id: 'sesame',
    name: '芝麻',
    alias: ['胡麻'],
    category: 'oil',
    origin: { location: 'india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'mesopotamia', time: { display: '公元前2000年' } },
      { from: 'middle-east', to: 'china', time: { display: '汉代' }, via: '丝绸之路' }
    ],
    currentRegions: ['sudan', 'india', 'myanmar', 'tanzania', 'china'],
    description: '最古老的油料作物之一，芝麻油和芝麻酱是中东和亚洲烹饪的重要调味品。'
  },
  {
    id: 'sunflower',
    name: '向日葵',
    alias: ['葵花'],
    category: 'oil',
    origin: { location: 'north-america', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'north-america', to: 'spain', time: { display: '16世纪' } },
      { from: 'europe', to: 'russia', time: { display: '18世纪' } }
    ],
    currentRegions: ['ukraine', 'russia', 'argentina', 'china', 'romania'],
    description: '美洲原住民的重要食物来源，葵花籽油是俄罗斯和乌克兰的主要食用油。'
  },
  {
    id: 'rapeseed',
    name: '油菜籽',
    alias: ['菜籽', '芥花'],
    category: 'oil',
    origin: { location: 'mediterranean', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'mediterranean', to: 'asia', time: { display: '公元前2000年' } },
      { from: 'europe', to: 'canada', time: { display: '20世纪' } }
    ],
    currentRegions: ['canada', 'china', 'india', 'germany', 'france'],
    description: '油菜花田是春季美景，加拿大培育的芥花油是健康食用油的代表。'
  },
  {
    id: 'palm',
    name: '油棕',
    alias: ['棕榈'],
    category: 'oil',
    origin: { location: 'west-africa', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'africa', to: 'southeast-asia', time: { display: '19世纪' } },
      { from: 'africa', to: 'south-america', time: { display: '16世纪' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'thailand', 'colombia', 'nigeria'],
    description: '产量最高的油料作物，棕榈油广泛用于食品和日化，但种植引发环保争议。'
  },
  {
    id: 'flax',
    name: '亚麻',
    alias: ['胡麻'],
    category: 'oil',
    origin: { location: 'fertile-crescent', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'egypt', time: { display: '公元前5000年' } },
      { from: 'mediterranean', to: 'europe', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['canada', 'russia', 'china', 'usa', 'india'],
    description: '人类最早种植的纤维作物之一，亚麻籽油富含Omega-3，是健康食品。'
  },

  // ==================== 糖料作物 ====================
  {
    id: 'sugarcane',
    name: '甘蔗',
    category: 'sugar',
    origin: { location: 'papua-new-guinea', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'papua-new-guinea', to: 'india', time: { display: '公元前4000年' } },
      { from: 'mediterranean', to: 'caribbean', time: { year: 1493, display: '1493年' }, via: '哥伦布第二次航行' }
    ],
    currentRegions: ['brazil', 'india', 'china', 'thailand', 'pakistan'],
    description: '糖的主要来源，加勒比甘蔗种植园与奴隶贸易历史紧密相连。'
  },
  {
    id: 'sugar-beet',
    name: '甜菜',
    alias: ['糖萝卜'],
    category: 'sugar',
    origin: { location: 'mediterranean', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '18世纪' } },
      { from: 'europe', to: 'north-america', time: { display: '19世纪' } }
    ],
    currentRegions: ['russia', 'france', 'usa', 'germany', 'turkey'],
    description: '拿破仑时期因英国封锁而发展的替代糖源，现占全球糖产量的20%。'
  },
  {
    id: 'stevia',
    name: '甜叶菊',
    alias: ['甜菊'],
    category: 'sugar',
    origin: { location: 'south-america', time: { year: -1500, display: '约1500年前' } },
    spreads: [
      { from: 'paraguay', to: 'asia', time: { display: '20世纪70年代' } },
      { from: 'asia', to: 'europe', time: { display: '21世纪' } }
    ],
    currentRegions: ['china', 'paraguay', 'kenya', 'usa', 'vietnam'],
    description: '巴拉圭原住民使用的天然甜味剂，甜度是蔗糖的300倍但几乎零热量。'
  },
  {
    id: 'maple',
    name: '糖枫',
    alias: ['枫糖树'],
    category: 'sugar',
    origin: { location: 'north-america', time: { year: -1000, display: '约1000年前' } },
    spreads: [],
    currentRegions: ['canada', 'usa'],
    description: '北美原住民最早发现枫糖，加拿大魁北克省产量占全球70%以上，枫叶是加拿大国家象征。'
  },

  // ==================== 更多谷物 ====================
  {
    id: 'teff',
    name: '苔麸',
    alias: ['画眉草'],
    category: 'grain',
    origin: { location: 'ethiopia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'ethiopia', to: 'eritrea', time: { display: '古代' } }
    ],
    currentRegions: ['ethiopia', 'eritrea', 'usa', 'australia'],
    description: '埃塞俄比亚特有的谷物，英吉拉饼的原料，是世界上颗粒最小的谷物。'
  },
  {
    id: 'fonio',
    name: '福尼奥',
    alias: ['非洲小米'],
    category: 'grain',
    origin: { location: 'west-africa', time: { year: -5000, display: '公元前5000年' } },
    spreads: [],
    currentRegions: ['mali', 'guinea', 'burkina-faso', 'nigeria'],
    description: '非洲最古老的谷物之一，被称为"非洲的古老谷物"，近年在西方健康食品界受追捧。'
  },
  {
    id: 'spelt',
    name: '斯佩尔特小麦',
    alias: ['古麦'],
    category: 'grain',
    origin: { location: 'fertile-crescent', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'europe', time: { display: '公元前4000年' } }
    ],
    currentRegions: ['germany', 'switzerland', 'austria', 'usa'],
    description: '古老的小麦品种，中世纪欧洲的主要粮食，现作为健康食品复兴。'
  },
  {
    id: 'amaranth',
    name: '苋菜籽',
    alias: ['苋米'],
    category: 'grain',
    origin: { location: 'mesoamerica', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'asia', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'india', 'peru', 'mexico', 'usa'],
    description: '阿兹特克人的神圣谷物，西班牙殖民者曾禁止种植，现为超级食物。'
  },
  {
    id: 'wild-rice',
    name: '菰米',
    alias: ['野米', '茭白籽'],
    category: 'grain',
    origin: { location: 'north-america', time: { year: -3000, display: '公元前3000年' } },
    spreads: [],
    currentRegions: ['usa', 'canada'],
    description: '北美原住民的传统食物，实际上是一种水生草本植物的种子，不是真正的稻米。'
  },

  // ==================== 更多蔬菜 ====================
  {
    id: 'artichoke',
    name: '朝鲜蓟',
    alias: ['洋蓟'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '15世纪' } },
      { from: 'europe', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['italy', 'spain', 'france', 'egypt', 'usa'],
    description: '古罗马人视为美味佳肴，意大利菜的经典食材，加州是美国主产地。'
  },
  {
    id: 'brussels-sprouts',
    name: '抱子甘蓝',
    alias: ['芽甘蓝'],
    category: 'vegetable',
    origin: { location: 'belgium', time: { year: 1200, display: '13世纪' } },
    spreads: [
      { from: 'belgium', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['netherlands', 'uk', 'germany', 'usa', 'mexico'],
    description: '以比利时首都布鲁塞尔命名，圣诞大餐的传统配菜。'
  },
  {
    id: 'kale',
    name: '羽衣甘蓝',
    alias: ['无头甘蓝'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['usa', 'italy', 'portugal', 'uk', 'japan'],
    description: '甘蓝的原始形态，近年成为健康食品明星，羽衣甘蓝沙拉和果汁风靡全球。'
  },
  {
    id: 'kohlrabi',
    name: '苤蓝',
    alias: ['球茎甘蓝'],
    category: 'vegetable',
    origin: { location: 'europe', time: { year: 1400, display: '15世纪' } },
    spreads: [
      { from: 'europe', to: 'asia', time: { display: '19世纪' } }
    ],
    currentRegions: ['india', 'china', 'germany', 'austria'],
    description: '德语意为"甘蓝萝卜"，可生吃或烹饪，在德国和印度较为流行。'
  },
  {
    id: 'turnip',
    name: '芜菁',
    alias: ['蔓菁', '大头菜'],
    category: 'vegetable',
    origin: { location: 'central-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'central-asia', to: 'europe', time: { display: '公元前2000年' } },
      { from: 'europe', to: 'asia', time: { display: '公元前500年' } }
    ],
    currentRegions: ['china', 'japan', 'france', 'uk', 'usa'],
    description: '古老的根茎蔬菜，中世纪欧洲穷人的主食，日本的芜菁是传统蔬菜。'
  },
  {
    id: 'parsnip',
    name: '欧防风',
    alias: ['欧洲萝卜'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'north-america', time: { display: '17世纪' } }
    ],
    currentRegions: ['uk', 'france', 'usa', 'canada', 'australia'],
    description: '土豆引入前欧洲的主要根茎食物，英国圣诞大餐的传统配菜。'
  },
  {
    id: 'beet',
    name: '甜菜根',
    alias: ['红菜头'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'russia', time: { display: '中世纪' } }
    ],
    currentRegions: ['russia', 'france', 'usa', 'germany', 'uk'],
    description: '俄罗斯罗宋汤的灵魂食材，深红色的汁液是天然染料。'
  },
  {
    id: 'chard',
    name: '瑞士甜菜',
    alias: ['牛皮菜'],
    category: 'vegetable',
    origin: { location: 'mediterranean', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['switzerland', 'italy', 'spain', 'usa'],
    description: '叶柄有红、黄、白等颜色，地中海饮食的常见蔬菜。'
  },
  {
    id: 'okra',
    name: '秋葵',
    alias: ['羊角豆', '黄秋葵'],
    category: 'vegetable',
    origin: { location: 'ethiopia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'ethiopia', to: 'egypt', time: { display: '公元前1000年' } },
      { from: 'africa', to: 'americas', time: { display: '17世纪' }, via: '奴隶贸易' }
    ],
    currentRegions: ['india', 'nigeria', 'sudan', 'iraq', 'usa'],
    description: '非洲原产，美国南方秋葵浓汤的关键食材，在印度和中东广泛食用。'
  },
  {
    id: 'zucchini',
    name: '西葫芦',
    alias: ['夏南瓜', '角瓜'],
    category: 'vegetable',
    origin: { location: 'mesoamerica', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'europe', time: { display: '16世纪' } },
      { from: 'italy', to: 'world', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'italy', 'turkey', 'egypt', 'argentina'],
    description: '意大利人培育出现代品种，是地中海菜和中国北方菜的常见蔬菜。'
  },
  {
    id: 'bitter-melon',
    name: '苦瓜',
    alias: ['凉瓜'],
    category: 'vegetable',
    origin: { location: 'india', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'india', to: 'china', time: { display: '14世纪' } },
      { from: 'asia', to: 'africa', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'india', 'bangladesh', 'pakistan', 'sri-lanka'],
    description: '独特苦味的蔬菜，清热解暑，苦瓜炒蛋是中国南方的家常菜。'
  },
  {
    id: 'lotus-root',
    name: '莲藕',
    alias: ['藕'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'asia', to: 'india', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['china', 'japan', 'india', 'korea', 'vietnam'],
    description: '荷花的根茎，炸藕盒、糖醋藕片、莲藕排骨汤都是中国名菜。'
  },
  {
    id: 'bamboo-shoot',
    name: '竹笋',
    alias: ['笋'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'asia', to: 'southeast-asia', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['china', 'japan', 'taiwan', 'thailand', 'indonesia'],
    description: '中国传统蔬菜，春笋、冬笋各有风味，油焖笋是江南名菜。'
  },
  {
    id: 'water-chestnut',
    name: '荸荠',
    alias: ['马蹄'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['china', 'thailand', 'indonesia', 'india'],
    description: '水生蔬菜，脆甜多汁，马蹄糕是广东传统点心。'
  },
  {
    id: 'taro',
    name: '芋头',
    alias: ['芋艿'],
    category: 'vegetable',
    origin: { location: 'southeast-asia', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'pacific', time: { display: '公元前3000年' } },
      { from: 'asia', to: 'africa', time: { display: '公元100年' } }
    ],
    currentRegions: ['nigeria', 'china', 'cameroon', 'ghana', 'papua-new-guinea'],
    description: '太平洋岛民的传统主食，芋泥、芋圆、香芋是中式甜品经典。'
  },
  {
    id: 'yam',
    name: '山药',
    alias: ['淮山', '薯蓣'],
    category: 'vegetable',
    origin: { location: 'west-africa', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'west-africa', to: 'caribbean', time: { display: '16世纪' } },
      { from: 'asia', to: 'pacific', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['nigeria', 'ghana', 'ivory-coast', 'benin', 'china'],
    description: '非洲和亚洲各自独立驯化了不同种类，铁棍山药是中国名产。'
  },
  {
    id: 'cassava',
    name: '木薯',
    alias: ['树薯'],
    category: 'vegetable',
    origin: { location: 'amazon', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'south-america', to: 'africa', time: { display: '16世纪' }, via: '葡萄牙人' },
      { from: 'africa', to: 'asia', time: { display: '18世纪' } }
    ],
    currentRegions: ['nigeria', 'thailand', 'indonesia', 'brazil', 'congo'],
    description: '热带地区重要的主粮，木薯粉是珍珠奶茶珍珠的原料。'
  },
  {
    id: 'bok-choy',
    name: '青菜',
    alias: ['小白菜', '上海青'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '中世纪' } },
      { from: 'asia', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'philippines', 'usa'],
    description: '中国最常见的绿叶蔬菜，清炒、煮汤皆宜。'
  },
  {
    id: 'chinese-cabbage',
    name: '大白菜',
    alias: ['结球白菜', '包心菜'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '19世纪' } },
      { from: 'china', to: 'korea', time: { display: '三国时期' } }
    ],
    currentRegions: ['china', 'korea', 'japan', 'russia', 'usa'],
    description: '中国北方冬季的当家蔬菜，韩国泡菜的主要原料。'
  },
  {
    id: 'water-spinach',
    name: '空心菜',
    alias: ['蕹菜', '通菜'],
    category: 'vegetable',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'china', time: { display: '晋代' } }
    ],
    currentRegions: ['china', 'thailand', 'vietnam', 'indonesia', 'philippines'],
    description: '东南亚和中国南方的常见蔬菜，蒜蓉空心菜是经典做法。'
  },
  {
    id: 'bean-sprout',
    name: '豆芽',
    alias: ['芽菜'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '古代' } },
      { from: 'china', to: 'southeast-asia', time: { display: '古代' } }
    ],
    currentRegions: ['china', 'korea', 'japan', 'vietnam', 'usa'],
    description: '绿豆芽和黄豆芽是中国最早发明的"蔬菜工厂"产品。'
  },
  {
    id: 'scallion',
    name: '大葱',
    alias: ['青葱'],
    category: 'vegetable',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元前500年' } },
      { from: 'asia', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'mexico', 'usa'],
    description: '山东大葱最为有名，葱花是中餐调味的灵魂。'
  },
  {
    id: 'shallot',
    name: '红葱头',
    alias: ['珠葱', '分葱'],
    category: 'vegetable',
    origin: { location: 'central-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'central-asia', to: 'mediterranean', time: { display: '公元前1000年' } },
      { from: 'asia', to: 'southeast-asia', time: { display: '古代' } }
    ],
    currentRegions: ['indonesia', 'india', 'china', 'iran', 'thailand'],
    description: '法国菜和东南亚菜的重要调味，油葱酥是台湾小吃的灵魂。'
  },
  {
    id: 'bell-pepper',
    name: '甜椒',
    alias: ['灯笼椒', '柿子椒'],
    category: 'vegetable',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mexico', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'asia', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'mexico', 'indonesia', 'turkey', 'spain'],
    description: '辣椒的不辣变种，红黄绿多种颜色，是沙拉和炒菜的常见食材。'
  },

  // ==================== 更多水果 ====================
  {
    id: 'mangosteen',
    name: '山竹',
    alias: ['莽吉柿'],
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '19世纪' } }
    ],
    currentRegions: ['thailand', 'indonesia', 'malaysia', 'philippines', 'vietnam'],
    description: '被称为"水果皇后"，与榴莲并称东南亚水果双璧，口感清甜。'
  },
  {
    id: 'rambutan',
    name: '红毛丹',
    alias: ['毛荔枝'],
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'africa', time: { display: '19世纪' } }
    ],
    currentRegions: ['thailand', 'indonesia', 'malaysia', 'vietnam', 'philippines'],
    description: '马来语意为"毛发"，外表毛茸茸，与荔枝同科不同属。'
  },
  {
    id: 'jackfruit',
    name: '菠萝蜜',
    alias: ['木菠萝'],
    category: 'fruit',
    origin: { location: 'india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '公元前500年' } },
      { from: 'asia', to: 'africa', time: { display: '19世纪' } }
    ],
    currentRegions: ['india', 'bangladesh', 'thailand', 'indonesia', 'brazil'],
    description: '世界上最大的树生水果，成熟果肉甜美，未熟可作蔬菜。'
  },
  {
    id: 'dragon-fruit',
    name: '火龙果',
    alias: ['红龙果'],
    category: 'fruit',
    origin: { location: 'mesoamerica', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'vietnam', time: { display: '19世纪' } },
      { from: 'vietnam', to: 'asia', time: { display: '20世纪' } }
    ],
    currentRegions: ['vietnam', 'china', 'indonesia', 'thailand', 'mexico'],
    description: '仙人掌科植物的果实，越南是现代主产地，红肉和白肉品种各有风味。'
  },
  {
    id: 'starfruit',
    name: '杨桃',
    alias: ['五敛子'],
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '古代' } },
      { from: 'asia', to: 'americas', time: { display: '19世纪' } }
    ],
    currentRegions: ['malaysia', 'philippines', 'indonesia', 'india', 'brazil'],
    description: '横切面呈五角星形而得名，酸甜可口，是热带地区常见水果。'
  },
  {
    id: 'pomelo',
    name: '柚子',
    alias: ['文旦'],
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'china', time: { display: '公元前1000年' } },
      { from: 'asia', to: 'caribbean', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'thailand', 'vietnam', 'usa', 'south-africa'],
    description: '柑橘类中最大的水果，中秋节传统水果，沙田柚是中国名产。'
  },
  {
    id: 'kumquat',
    name: '金桔',
    alias: ['金橘'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '14世纪' } },
      { from: 'asia', to: 'europe', time: { display: '19世纪' } }
    ],
    currentRegions: ['china', 'japan', 'brazil', 'usa', 'israel'],
    description: '连皮带肉一起吃的小柑橘，春节期间象征吉祥。'
  },
  {
    id: 'lime',
    name: '青柠',
    alias: ['酸橙'],
    category: 'fruit',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'middle-east', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['india', 'mexico', 'china', 'argentina', 'brazil'],
    description: '比柠檬更酸更香，墨西哥菜和东南亚菜的灵魂调味。'
  },
  {
    id: 'tamarind',
    name: '罗望子',
    alias: ['酸角', '酸豆'],
    category: 'fruit',
    origin: { location: 'africa', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'africa', to: 'india', time: { display: '公元前1000年' } },
      { from: 'india', to: 'southeast-asia', time: { display: '古代' } }
    ],
    currentRegions: ['india', 'thailand', 'mexico', 'indonesia', 'philippines'],
    description: '酸甜的热带水果，泰国菜和印度菜的重要调味，伍斯特酱的成分。'
  },
  {
    id: 'mulberry',
    name: '桑葚',
    alias: ['桑果'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'middle-east', time: { display: '丝绸之路' } },
      { from: 'asia', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'turkey', 'iran', 'india', 'usa'],
    description: '桑树的果实，养蚕业的副产品，桑葚酒和桑葚干是传统食品。'
  },
  {
    id: 'jujube',
    name: '红枣',
    alias: ['大枣'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'china', to: 'middle-east', time: { display: '丝绸之路' } },
      { from: 'asia', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['china', 'korea', 'iran', 'india', 'usa'],
    description: '中国传统滋补食材，"一日三枣，红颜不老"，新疆大枣最为有名。'
  },
  {
    id: 'loquat',
    name: '枇杷',
    alias: ['卢橘'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '唐代' } },
      { from: 'asia', to: 'europe', time: { display: '18世纪' } }
    ],
    currentRegions: ['china', 'japan', 'spain', 'brazil', 'israel'],
    description: '因叶形似琵琶而得名，枇杷膏是传统止咳良药。'
  },
  {
    id: 'waxberry',
    name: '杨梅',
    alias: ['树莓'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '古代' } }
    ],
    currentRegions: ['china', 'japan'],
    description: '中国特有水果，酸甜多汁，杨梅酒是浙江名产。'
  },
  {
    id: 'hawthorn',
    name: '山楂',
    alias: ['红果'],
    category: 'fruit',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'europe', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'usa', 'uk', 'russia'],
    description: '酸味水果，糖葫芦的主要原料，山楂片是传统零食。'
  },
  {
    id: 'soursop',
    name: '刺果番荔枝',
    alias: ['红毛榴莲'],
    category: 'fruit',
    origin: { location: 'caribbean', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'caribbean', to: 'asia', time: { display: '16世纪' } },
      { from: 'americas', to: 'africa', time: { display: '17世纪' } }
    ],
    currentRegions: ['mexico', 'brazil', 'indonesia', 'philippines', 'nigeria'],
    description: '热带水果，酸甜的白色果肉，常用于制作果汁和冰淇淋。'
  },
  {
    id: 'breadfruit',
    name: '面包果',
    alias: ['罗蜜树'],
    category: 'fruit',
    origin: { location: 'papua-new-guinea', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'papua-new-guinea', to: 'pacific', time: { display: '公元前1000年' } },
      { from: 'pacific', to: 'caribbean', time: { display: '18世纪' } }
    ],
    currentRegions: ['philippines', 'indonesia', 'samoa', 'jamaica', 'haiti'],
    description: '烤熟后口感像面包而得名，太平洋岛民的传统主食。'
  },

  // ==================== 更多豆类 ====================
  {
    id: 'pigeon-pea',
    name: '木豆',
    alias: ['树豆'],
    category: 'legume',
    origin: { location: 'india', time: { year: -3500, display: '公元前3500年' } },
    spreads: [
      { from: 'india', to: 'africa', time: { display: '公元前2000年' } },
      { from: 'africa', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['india', 'myanmar', 'malawi', 'tanzania', 'kenya'],
    description: '印度达尔的重要原料，是热带地区重要的蛋白质来源。'
  },
  {
    id: 'cowpea',
    name: '豇豆',
    alias: ['眉豆', '黑眼豆'],
    category: 'legume',
    origin: { location: 'west-africa', time: { year: -3500, display: '公元前3500年' } },
    spreads: [
      { from: 'west-africa', to: 'india', time: { display: '公元前1500年' } },
      { from: 'africa', to: 'americas', time: { display: '17世纪' } }
    ],
    currentRegions: ['nigeria', 'niger', 'brazil', 'india', 'usa'],
    description: '非洲起源的重要豆类，美国南方新年吃黑眼豆象征好运。'
  },
  {
    id: 'lima-bean',
    name: '利马豆',
    alias: ['皇帝豆'],
    category: 'legume',
    origin: { location: 'peru', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'peru', to: 'north-america', time: { display: '公元前1000年' } },
      { from: 'americas', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['usa', 'peru', 'madagascar', 'myanmar', 'china'],
    description: '以秘鲁首都利马命名，是美国感恩节传统配菜。'
  },
  {
    id: 'navy-bean',
    name: '白芸豆',
    alias: ['海军豆'],
    category: 'legume',
    origin: { location: 'mesoamerica', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['usa', 'uk', 'india', 'brazil', 'argentina'],
    description: '因曾是美国海军主食而得名，英式烤豆罐头的主要原料。'
  },
  {
    id: 'adzuki-bean',
    name: '赤豆',
    alias: ['小豆'],
    category: 'legume',
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '公元100年' } },
      { from: 'asia', to: 'world', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'taiwan'],
    description: '红豆沙的另一种原料豆，与红豆略有不同，日本和果子常用。'
  },

  // ==================== 更多香料 ====================
  {
    id: 'allspice',
    name: '多香果',
    alias: ['牙买加胡椒'],
    category: 'spice',
    origin: { location: 'caribbean', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'caribbean', to: 'europe', time: { display: '16世纪' }, via: '西班牙人' }
    ],
    currentRegions: ['jamaica', 'mexico', 'honduras', 'guatemala'],
    description: '因兼具肉桂、丁香、肉豆蔻香味而得名，牙买加熏鸡的灵魂香料。'
  },
  {
    id: 'fenugreek',
    name: '葫芦巴',
    alias: ['胡芦巴'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'mediterranean', to: 'india', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['india', 'turkey', 'ethiopia', 'china', 'argentina'],
    description: '印度咖喱的重要成分，种子和叶子都可食用。'
  },
  {
    id: 'asafoetida',
    name: '阿魏',
    alias: ['兴渠'],
    category: 'spice',
    origin: { location: 'iran', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'iran', to: 'india', time: { display: '古代' } }
    ],
    currentRegions: ['iran', 'afghanistan', 'india'],
    description: '气味强烈的香料，印度素食者用来替代洋葱大蒜的调味。'
  },
  {
    id: 'sumac',
    name: '漆树果',
    alias: ['苏木'],
    category: 'spice',
    origin: { location: 'middle-east', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '古代' } }
    ],
    currentRegions: ['iran', 'turkey', 'syria', 'lebanon'],
    description: '中东菜常用的酸味香料，柠檬引入前地中海地区的主要酸味来源。'
  },
  {
    id: 'nigella',
    name: '黑种草',
    alias: ['黑孜然'],
    category: 'spice',
    origin: { location: 'middle-east', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'middle-east', to: 'india', time: { display: '古代' } }
    ],
    currentRegions: ['india', 'egypt', 'turkey', 'syria', 'iran'],
    description: '印度五香粉的成分之一，印度馕饼上常见的黑色种子。'
  },
  {
    id: 'tarragon',
    name: '龙蒿',
    alias: ['艾蒿'],
    category: 'spice',
    origin: { location: 'central-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'central-asia', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['france', 'usa', 'russia', 'spain'],
    description: '法国菜的经典香草，法式蛋黄酱的重要成分。'
  },
  {
    id: 'oregano',
    name: '牛至',
    alias: ['披萨草'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['turkey', 'greece', 'mexico', 'italy', 'spain'],
    description: '意大利和希腊菜的灵魂香草，披萨和番茄酱的经典调味。'
  },
  {
    id: 'basil',
    name: '罗勒',
    alias: ['九层塔', '金不换'],
    category: 'spice',
    origin: { location: 'india', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'india', to: 'mediterranean', time: { display: '古代' } },
      { from: 'asia', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['italy', 'thailand', 'egypt', 'usa', 'india'],
    description: '意大利青酱和泰式料理的灵魂，神圣罗勒在印度教中是圣草。'
  },
  {
    id: 'thyme',
    name: '百里香',
    alias: ['麝香草'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['spain', 'france', 'morocco', 'egypt', 'usa'],
    description: '法国普罗旺斯香草的代表，与迷迭香是地中海菜的经典组合。'
  },
  {
    id: 'rosemary',
    name: '迷迭香',
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } },
      { from: 'europe', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['spain', 'morocco', 'usa', 'france', 'uk'],
    description: '地中海烤肉的经典香草，象征记忆和忠诚。'
  },
  {
    id: 'sage',
    name: '鼠尾草',
    alias: ['洋苏草'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['albania', 'usa', 'uk', 'germany', 'france'],
    description: '意大利黄油鼠尾草酱的主角，感恩节火鸡填料的经典香草。'
  },
  {
    id: 'mint',
    name: '薄荷',
    alias: ['银丹草'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'asia', time: { display: '古代' } },
      { from: 'europe', to: 'americas', time: { display: '17世纪' } }
    ],
    currentRegions: ['usa', 'india', 'china', 'morocco', 'spain'],
    description: '清凉香草的代表，摩洛哥薄荷茶和莫吉托的灵魂。'
  },
  {
    id: 'dill',
    name: '莳萝',
    alias: ['洋茴香'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'northern-europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['india', 'pakistan', 'egypt', 'usa', 'russia'],
    description: '北欧菜和俄罗斯菜的经典香草，腌黄瓜的传统调味。'
  },
  {
    id: 'parsley',
    name: '欧芹',
    alias: ['洋香菜', '巴西利'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mediterranean', to: 'europe', time: { display: '罗马时代' } }
    ],
    currentRegions: ['usa', 'italy', 'germany', 'france', 'israel'],
    description: '西餐最常用的装饰香草，平叶和卷叶两种各有用途。'
  },
  {
    id: 'cilantro',
    name: '芫荽叶',
    alias: ['香菜叶'],
    category: 'spice',
    origin: { location: 'mediterranean', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mediterranean', to: 'asia', time: { display: '汉代' } },
      { from: 'europe', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['india', 'mexico', 'china', 'thailand', 'usa'],
    description: '芫荽的叶子部分，与种子风味完全不同，是亚洲和拉美菜的重要香草。'
  },
  {
    id: 'lemongrass',
    name: '香茅',
    alias: ['柠檬草'],
    category: 'spice',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '古代' } },
      { from: 'asia', to: 'americas', time: { display: '19世纪' } }
    ],
    currentRegions: ['india', 'thailand', 'guatemala', 'indonesia', 'china'],
    description: '泰国冬阴功汤的灵魂，柠檬香味的热带香草。'
  },
  {
    id: 'galangal',
    name: '南姜',
    alias: ['高良姜'],
    category: 'spice',
    origin: { location: 'southeast-asia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '古代' } },
      { from: 'asia', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['indonesia', 'thailand', 'china', 'india'],
    description: '生姜的近亲，泰国和印尼菜的重要香料，味道比生姜更强烈。'
  },
  {
    id: 'kaffir-lime',
    name: '箭叶橙',
    alias: ['泰国青柠'],
    category: 'spice',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [],
    currentRegions: ['thailand', 'indonesia', 'malaysia', 'laos', 'cambodia'],
    description: '泰国菜的标志性香料，叶子比果实更常用，冬阴功汤必备。'
  },
  {
    id: 'pandan',
    name: '班兰叶',
    alias: ['香兰叶'],
    category: 'spice',
    origin: { location: 'southeast-asia', time: { year: -2000, display: '公元前2000年' } },
    spreads: [],
    currentRegions: ['indonesia', 'malaysia', 'thailand', 'vietnam', 'philippines'],
    description: '东南亚的天然香精和绿色染料，班兰蛋糕和椰浆饭的香气来源。'
  },

  // ==================== 更多坚果和种子 ====================
  {
    id: 'brazil-nut',
    name: '巴西坚果',
    category: 'nut',
    origin: { location: 'amazon', time: { year: -3000, display: '公元前3000年' } },
    spreads: [],
    currentRegions: ['bolivia', 'brazil', 'peru'],
    description: '亚马逊雨林特产，只能野生采集无法人工种植，富含硒元素。'
  },
  {
    id: 'coconut-meat',
    name: '椰肉',
    alias: ['椰子肉'],
    category: 'nut',
    origin: { location: 'southeast-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'pacific', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['indonesia', 'philippines', 'india', 'sri-lanka', 'brazil'],
    description: '椰子的果肉部分，可鲜食或制成椰干、椰丝、椰奶。'
  },
  {
    id: 'betel-nut',
    name: '槟榔',
    category: 'nut',
    origin: { location: 'southeast-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'southeast-asia', to: 'india', time: { display: '公元前2000年' } },
      { from: 'asia', to: 'pacific', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['india', 'bangladesh', 'indonesia', 'myanmar', 'taiwan'],
    description: '亚洲传统嚼食品，与蒌叶一起咀嚼，有成瘾性，已知致癌物。'
  },
  {
    id: 'ginkgo-nut',
    name: '白果',
    alias: ['银杏果'],
    category: 'nut',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '唐代' } },
      { from: 'asia', to: 'europe', time: { display: '18世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'usa'],
    description: '银杏树的种子，中国传统食材和药材，需去毒后食用。'
  },
  {
    id: 'lotus-seed',
    name: '莲子',
    category: 'nut',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'india', time: { display: '古代' } },
      { from: 'asia', to: 'egypt', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['china', 'japan', 'india', 'korea', 'vietnam'],
    description: '荷花的种子，莲子羹和月饼莲蓉馅的原料。'
  },
  {
    id: 'sunflower-seed',
    name: '葵花籽',
    alias: ['瓜子'],
    category: 'nut',
    origin: { location: 'north-america', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'north-america', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'russia', time: { display: '18世纪' } }
    ],
    currentRegions: ['ukraine', 'russia', 'argentina', 'china', 'usa'],
    description: '北美原住民的传统食物，俄罗斯人最爱的零食，中国人春节必备。'
  },
  {
    id: 'pumpkin-seed',
    name: '南瓜籽',
    alias: ['白瓜子'],
    category: 'nut',
    origin: { location: 'mesoamerica', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'mesoamerica', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'india', 'russia', 'usa', 'mexico'],
    description: '墨西哥摩尔酱的重要成分，奥地利南瓜籽油是珍贵食材。'
  },
  {
    id: 'watermelon-seed',
    name: '西瓜籽',
    category: 'nut',
    origin: { location: 'africa', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'africa', to: 'middle-east', time: { display: '古代' } },
      { from: 'middle-east', to: 'china', time: { display: '宋代' } }
    ],
    currentRegions: ['china', 'egypt', 'sudan', 'nigeria'],
    description: '中国传统零食，春节必备的瓜子之一。'
  },
  {
    id: 'chia',
    name: '奇亚籽',
    alias: ['芡欧鼠尾草籽'],
    category: 'nut',
    origin: { location: 'mesoamerica', time: { year: -3500, display: '公元前3500年' } },
    spreads: [
      { from: 'mesoamerica', to: 'world', time: { display: '21世纪' } }
    ],
    currentRegions: ['mexico', 'argentina', 'bolivia', 'australia', 'usa'],
    description: '阿兹特克人的超级食物，富含Omega-3和纤维，现代健康食品明星。'
  },
  {
    id: 'flaxseed',
    name: '亚麻籽',
    category: 'nut',
    origin: { location: 'fertile-crescent', time: { year: -8000, display: '公元前8000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'europe', time: { display: '公元前4000年' } }
    ],
    currentRegions: ['canada', 'kazakhstan', 'russia', 'china', 'usa'],
    description: '最古老的作物之一，亚麻籽油富含Omega-3，是健康食品。'
  },
  {
    id: 'hemp-seed',
    name: '火麻仁',
    alias: ['大麻籽'],
    category: 'nut',
    origin: { location: 'central-asia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'central-asia', to: 'china', time: { display: '公元前2000年' } }
    ],
    currentRegions: ['china', 'canada', 'france', 'chile'],
    description: '工业大麻的种子，不含致幻成分，是完整蛋白质来源。'
  },

  // ==================== 更多饮料作物 ====================
  {
    id: 'guarana',
    name: '瓜拉纳',
    category: 'beverage',
    origin: { location: 'amazon', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'amazon', to: 'world', time: { display: '20世纪' } }
    ],
    currentRegions: ['brazil'],
    description: '亚马逊原住民的提神饮料，咖啡因含量是咖啡的两倍，巴西国民饮料的原料。'
  },
  {
    id: 'cola-nut',
    name: '可乐果',
    category: 'beverage',
    origin: { location: 'west-africa', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'west-africa', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['nigeria', 'ivory-coast', 'cameroon', 'ghana'],
    description: '可口可乐最初配方的成分之一，西非传统的提神嚼食品。'
  },
  {
    id: 'acai',
    name: '巴西莓',
    alias: ['阿萨伊'],
    category: 'beverage',
    origin: { location: 'amazon', time: { year: -1000, display: '公元前1000年' } },
    spreads: [
      { from: 'amazon', to: 'world', time: { display: '21世纪' } }
    ],
    currentRegions: ['brazil'],
    description: '亚马逊棕榈的果实，富含抗氧化物，巴西莓碗是流行的健康食品。'
  },
  {
    id: 'rooibos',
    name: '路易波士茶',
    alias: ['南非红茶'],
    category: 'beverage',
    origin: { location: 'south-africa', time: { year: 1700, display: '18世纪' } },
    spreads: [
      { from: 'south-africa', to: 'europe', time: { display: '20世纪' } }
    ],
    currentRegions: ['south-africa'],
    description: '南非特有植物，不含咖啡因的草本茶，仅在开普敦地区生长。'
  },
  {
    id: 'hibiscus',
    name: '洛神花',
    alias: ['玫瑰茄'],
    category: 'beverage',
    origin: { location: 'west-africa', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'africa', to: 'asia', time: { display: '17世纪' } },
      { from: 'africa', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['china', 'thailand', 'mexico', 'egypt', 'sudan'],
    description: '酸甜的花茶原料，墨西哥阿瓜弗雷斯卡和埃及卡尔卡德茶的主料。'
  },
  {
    id: 'chamomile',
    name: '洋甘菊',
    category: 'beverage',
    origin: { location: 'europe', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'europe', to: 'americas', time: { display: '17世纪' } }
    ],
    currentRegions: ['egypt', 'argentina', 'germany', 'hungary'],
    description: '最古老的草药之一，洋甘菊茶有助于睡眠和放松。'
  },

  // ==================== 其他重要作物 ====================
  {
    id: 'cotton',
    name: '棉花',
    category: 'other',
    origin: { location: 'india', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '公元前1000年' } },
      { from: 'americas', to: 'usa', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'india', 'usa', 'brazil', 'pakistan'],
    description: '世界上最重要的纤维作物，美国南方的棉花与奴隶制历史紧密相连。'
  },
  {
    id: 'tobacco',
    name: '烟草',
    category: 'other',
    origin: { location: 'mesoamerica', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'americas', to: 'europe', time: { display: '16世纪' } },
      { from: 'europe', to: 'asia', time: { display: '17世纪' } }
    ],
    currentRegions: ['china', 'brazil', 'india', 'usa', 'indonesia'],
    description: '美洲原住民的神圣植物，传入旧世界后成为全球性作物，有严重健康危害。'
  },
  {
    id: 'rubber',
    name: '橡胶',
    category: 'other',
    origin: { location: 'amazon', time: { year: -1600, display: '公元前1600年' } },
    spreads: [
      { from: 'amazon', to: 'southeast-asia', time: { year: 1876, display: '1876年' }, via: '英国人走私种子' }
    ],
    currentRegions: ['thailand', 'indonesia', 'vietnam', 'india', 'china'],
    description: '改变世界的工业原料，亚马逊橡胶热潮曾造成残酷的殖民剥削。'
  },
  {
    id: 'indigo',
    name: '靛蓝',
    alias: ['板蓝'],
    category: 'other',
    origin: { location: 'india', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '古代' } },
      { from: 'asia', to: 'americas', time: { display: '17世纪' } }
    ],
    currentRegions: ['india', 'china', 'bangladesh', 'el-salvador'],
    description: '最古老的染料之一，牛仔布的传统染料，合成靛蓝发明前曾是重要贸易商品。'
  },
  {
    id: 'henna',
    name: '指甲花',
    alias: ['散沫花'],
    category: 'other',
    origin: { location: 'middle-east', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'middle-east', to: 'india', time: { display: '古代' } },
      { from: 'asia', to: 'africa', time: { display: '古代' } }
    ],
    currentRegions: ['india', 'egypt', 'morocco', 'sudan', 'pakistan'],
    description: '传统的头发和皮肤染料，印度婚礼上的彩绘艺术（梅亨迪）的原料。'
  },
  {
    id: 'opium-poppy',
    name: '罂粟',
    category: 'other',
    origin: { location: 'mediterranean', time: { year: -5000, display: '公元前5000年' } },
    spreads: [
      { from: 'mediterranean', to: 'asia', time: { display: '古代' } }
    ],
    currentRegions: ['afghanistan', 'myanmar', 'india', 'turkey', 'spain'],
    description: '鸦片和吗啡的来源，罂粟籽（不含毒品成分）是欧洲面包的传统配料。'
  },
  {
    id: 'aloe-vera',
    name: '芦荟',
    category: 'other',
    origin: { location: 'arabian-peninsula', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '公元前1000年' } },
      { from: 'europe', to: 'americas', time: { display: '16世纪' } }
    ],
    currentRegions: ['dominican-republic', 'mexico', 'china', 'thailand', 'usa'],
    description: '古埃及人称为"不朽之植物"，现广泛用于护肤品和健康饮品。'
  },
  {
    id: 'ginseng',
    name: '人参',
    alias: ['高丽参', '西洋参'],
    category: 'other',
    origin: { location: 'china', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '古代' } }
    ],
    currentRegions: ['china', 'south-korea', 'usa', 'canada'],
    description: '东亚传统的珍贵药材，"百草之王"，野山参极为稀有珍贵。'
  }
];
