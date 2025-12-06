import { Food } from '../models/DataModels';

export const FOODS_DATA: Food[] = [
  // 主食
  {
    id: 'bread',
    name: '面包',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'egypt', time: { year: -4000, display: '公元前4000年左右' } },
    spreads: [
      { from: 'egypt', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'europe', to: 'north-america', time: { display: '16世纪' } }
    ],
    currentRegions: ['europe', 'north-america', 'middle-east', 'australia'],
    description: '西方文明的主食，古埃及人发明了发酵面包，不同地区发展出法棍、吐司等多种形式。'
  },
  {
    id: 'noodles',
    name: '面条',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年左右' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '9世纪' }, via: '遣唐使' },
      { from: 'asia', to: 'europe', time: { display: '13世纪' }, via: '丝绸之路' }
    ],
    currentRegions: ['china', 'japan', 'italy', 'korea', 'vietnam'],
    description: '中国发明的主食，青海喇家遗址发现4000年前的面条，传遍全球发展出拉面、乌冬、意面等。'
  },
  {
    id: 'rice-cooked',
    name: '米饭',
    alias: ['白饭'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -7000, display: '公元前7000年' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元前2000年' } },
      { from: 'china', to: 'japan', time: { display: '公元前300年' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'india'],
    description: '亚洲最基本的主食形式，养活全球一半以上人口。'
  },
  {
    id: 'dumpling',
    name: '饺子',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '东汉末年（约公元200年）' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '唐代' } },
      { from: 'china', to: 'russia', time: { display: '中世纪' } }
    ],
    currentRegions: ['china', 'korea', 'japan', 'russia', 'poland'],
    description: '张仲景发明的食物，中国春节传统美食，传播形成饺子、锅贴、俄罗斯饺子等变体。'
  },
  {
    id: 'tortilla',
    name: '玉米饼',
    alias: ['塔可饼'],
    category: 'staple',
    ingredients: ['corn'],
    origin: { location: 'mesoamerica', time: { year: -3000, display: '公元前3000年' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '中美洲文明的主食，是墨西哥塔可、卷饼的基础。'
  },

  // 菜肴
  {
    id: 'pizza',
    name: '披萨',
    alias: ['比萨'],
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'olive'],
    origin: { location: 'italy', time: { year: 1889, display: '1889年' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '19世纪末' }, via: '意大利移民' },
      { from: 'usa', to: 'asia', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['italy', 'usa', 'europe', 'asia'],
    description: '那不勒斯的玛格丽塔披萨以意大利王后命名，美国将其发扬光大为全球快餐。'
  },
  {
    id: 'pasta',
    name: '意大利面',
    alias: ['意面'],
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'italy', time: { display: '13世纪左右' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '19世纪' }, via: '意大利移民' }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利的代表性主食，配合番茄酱是16世纪后番茄传入意大利的结果。'
  },
  {
    id: 'sushi',
    name: '寿司',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '江户时代（约1800年）' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '1960年代' }, via: '日本移民' },
      { from: 'usa', to: 'europe', time: { display: '1980年代' } }
    ],
    currentRegions: ['japan', 'usa', 'europe', 'asia'],
    description: '现代握寿司起源于江户（东京），是日本料理的代表，全球高端餐饮符号。'
  },
  {
    id: 'curry',
    name: '咖喱',
    category: 'dish',
    ingredients: ['chili', 'ginger', 'garlic'],
    origin: { location: 'india', time: { display: '约公元前2000年' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '18世纪' }, via: '英国东印度公司' },
      { from: 'india', to: 'japan', time: { year: 1868, display: '1868年' }, via: '英国海军' }
    ],
    currentRegions: ['india', 'uk', 'japan', 'thailand', 'malaysia'],
    description: '印度次大陆的烹饪传统，不同地区发展出印度咖喱、日式咖喱、泰式咖喱等变体。'
  },
  {
    id: 'hamburger',
    name: '汉堡包',
    alias: ['汉堡'],
    category: 'dish',
    ingredients: ['wheat', 'potato', 'tomato', 'onion'],
    origin: { location: 'usa', time: { display: '19世纪末' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '20世纪中期' } },
      { from: 'usa', to: 'asia', time: { display: '1970年代' }, via: '麦当劳等快餐连锁' }
    ],
    currentRegions: ['usa', 'europe', 'asia', 'australia'],
    description: '美国快餐文化的代表，麦当劳将其推广到全球，成为全球化的象征。'
  },
  {
    id: 'fried-rice',
    name: '炒饭',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '隋代（约600年）' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '宋元时期' } },
      { from: 'china', to: 'usa', time: { display: '19世纪' }, via: '中国移民' }
    ],
    currentRegions: ['china', 'southeast-asia', 'usa'],
    description: '扬州炒饭最为著名，各地发展出泰式炒饭、印尼炒饭等变体。'
  },
  {
    id: 'kimchi',
    name: '泡菜',
    alias: ['韩式泡菜'],
    category: 'preserved',
    ingredients: ['cabbage', 'chili', 'garlic'],
    origin: { location: 'korea', time: { display: '三国时代（约公元前37年）' } },
    spreads: [
      { from: 'korea', to: 'japan', time: { display: '20世纪' } },
      { from: 'korea', to: 'usa', time: { display: '1980年代' }, via: '韩国移民' }
    ],
    currentRegions: ['korea', 'japan', 'china', 'usa'],
    description: '韩国的国民食品，辣白菜是16世纪辣椒传入后的产物，之前的泡菜不辣。'
  },
  {
    id: 'tacos',
    name: '塔可',
    category: 'dish',
    ingredients: ['corn'],
    origin: { location: 'mexico', time: { display: '古代墨西哥' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥传统食物，玉米饼包裹各种馅料，塔可贝尔将其快餐化推向全球。'
  },
  {
    id: 'french-fries',
    name: '薯条',
    alias: ['炸薯条'],
    category: 'snack',
    ingredients: ['potato'],
    origin: { location: 'belgium', time: { display: '17世纪' } },
    spreads: [
      { from: 'belgium', to: 'france', time: { display: '18世纪' } },
      { from: 'usa', to: 'europe', time: { display: '20世纪' }, via: '快餐连锁' }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '起源有争议，比利时和法国都声称发明，美国快餐业使其风靡全球。'
  },

  // 饮品
  {
    id: 'beer',
    name: '啤酒',
    category: 'beverage',
    ingredients: ['barley', 'wheat'],
    origin: { location: 'mesopotamia', time: { year: -4000, display: '公元前4000年' } },
    spreads: [
      { from: 'mesopotamia', to: 'egypt', time: { display: '公元前3000年' } },
      { from: 'middle-east', to: 'europe', time: { display: '公元前1000年' } }
    ],
    currentRegions: ['germany', 'usa', 'china', 'brazil', 'uk'],
    description: '人类最古老的酒精饮料之一，苏美尔人留下了最早的啤酒配方，德国啤酒纯净法影响深远。'
  },
  {
    id: 'wine',
    name: '葡萄酒',
    alias: ['红酒'],
    category: 'beverage',
    ingredients: ['grape'],
    origin: { location: 'fertile-crescent', time: { year: -6000, display: '公元前6000年' } },
    spreads: [
      { from: 'fertile-crescent', to: 'mediterranean', time: { display: '公元前2000年' } },
      { from: 'italy', to: 'france', time: { display: '公元前600年' } }
    ],
    currentRegions: ['france', 'italy', 'spain', 'usa', 'argentina'],
    description: '与地中海文明紧密相连的饮料，法国波尔多和勃艮第是葡萄酒的圣地。'
  },
  {
    id: 'tea-drink',
    name: '茶饮',
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'china', time: { year: -2700, display: '公元前2700年左右' } },
    spreads: [
      { from: 'china', to: 'japan', time: { year: 805, display: '805年' } },
      { from: 'china', to: 'uk', time: { year: 1662, display: '1662年' } }
    ],
    currentRegions: ['china', 'india', 'uk', 'japan', 'turkey'],
    description: '中国神农发现茶叶，发展出绿茶、红茶、乌龙茶等，英国下午茶和日本茶道是文化高峰。'
  },
  {
    id: 'coffee-drink',
    name: '咖啡饮品',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'ethiopia', time: { display: '15世纪' } },
    spreads: [
      { from: 'ethiopia', to: 'middle-east', time: { display: '15世纪' } },
      { from: 'middle-east', to: 'europe', time: { year: 1615, display: '1615年' } }
    ],
    currentRegions: ['usa', 'europe', 'brazil', 'japan', 'korea'],
    description: '从阿拉伯咖啡馆到意式浓缩咖啡再到星巴克，咖啡文化不断演变。'
  },

  // 调味品和其他
  {
    id: 'soy-sauce',
    name: '酱油',
    category: 'condiment',
    ingredients: ['soybean', 'wheat'],
    origin: { location: 'china', time: { display: '西汉（约公元前200年）' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '7世纪' }, via: '遣唐使' },
      { from: 'japan', to: 'europe', time: { display: '17世纪' }, via: '荷兰商人' }
    ],
    currentRegions: ['china', 'japan', 'korea', 'usa'],
    description: '东亚烹饪的灵魂调味料，日本万字酱油和中国生抽老抽各有特色。'
  },
  {
    id: 'ketchup',
    name: '番茄酱',
    alias: ['茄汁'],
    category: 'condiment',
    ingredients: ['tomato'],
    origin: { location: 'usa', time: { year: 1876, display: '1876年' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '19世纪末' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '亨氏番茄酱定义了现代番茄酱，薯条和汉堡的经典搭配。'
  },
  {
    id: 'tofu',
    name: '豆腐',
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '西汉（约公元前160年）' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '奈良时代（8世纪）' } },
      { from: 'asia', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'usa'],
    description: '相传淮南王刘安发明，东亚素食蛋白质的主要来源，如今成为全球健康食品。'
  },
  {
    id: 'chocolate',
    name: '巧克力',
    category: 'dessert',
    ingredients: ['cacao', 'sugarcane'],
    origin: { location: 'switzerland', time: { year: 1847, display: '1847年' } },
    spreads: [
      { from: 'europe', to: 'usa', time: { display: '19世纪' } },
      { from: 'europe', to: 'asia', time: { display: '20世纪' } }
    ],
    currentRegions: ['switzerland', 'belgium', 'usa', 'germany', 'japan'],
    description: '瑞士人发明了现代固体巧克力，瑞士和比利时巧克力是高品质的代名词。'
  },
  {
    id: 'hummus',
    name: '鹰嘴豆泥',
    category: 'dish',
    ingredients: ['chickpea', 'sesame', 'olive', 'garlic'],
    origin: { location: 'middle-east', time: { display: '13世纪' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '中世纪' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['middle-east', 'europe', 'usa'],
    description: '中东的经典蘸酱，搭配皮塔饼食用，如今成为全球健康食品。'
  }
];
