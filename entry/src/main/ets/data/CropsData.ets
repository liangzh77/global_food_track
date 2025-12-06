import { Crop } from '../models/DataModels';

export const CROPS_DATA: Crop[] = [
  // 谷物
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
    currentRegions: ['china', 'india', 'russia'],
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

  // 蔬菜
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
    currentRegions: ['china', 'india', 'mexico', 'thailand', 'korea'],
    description: '彻底改变亚洲饮食的美洲作物，川菜、湘菜、泰国菜、韩国菜的灵魂。'
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

  // 水果
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

  // 豆类和坚果
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
    currentRegions: ['china', 'india', 'usa', 'argentina'],
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
    currentRegions: ['india', 'australia', 'turkey', 'pakistan'],
    description: '鹰嘴豆泥（hummus）的原料，中东和南亚的重要蛋白质来源。'
  },

  // 饮料作物
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
    currentRegions: ['brazil', 'indonesia', 'ghana'],
    description: '阿兹特克人的神圣饮料，巧克力的原料，西非现为世界最大产地。'
  },

  // 香料
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
    currentRegions: ['india', 'china', 'indonesia', 'nepal'],
    description: '亚洲烹饪的灵魂调料，也是重要的药用植物，姜茶、姜饼广受欢迎。'
  },

  // 油料和糖料
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
  }
];
