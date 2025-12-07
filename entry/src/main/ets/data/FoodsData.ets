import { Food } from '../models/DataModels';

export const FOODS_DATA: Food[] = [
  // ========== 主食 ==========
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
    currentRegions: ['china', 'japan', 'korea', 'india', 'southeast-asia'],
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
    currentRegions: ['mexico', 'usa', 'south-america'],
    description: '中美洲文明的主食，是墨西哥塔可、卷饼的基础。'
  },
  {
    id: 'congee',
    name: '粥',
    alias: ['稀饭', '白粥'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -2500, display: '公元前2500年左右' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '唐代' } },
      { from: 'china', to: 'southeast-asia', time: { display: '宋代' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'vietnam', 'thailand'],
    description: '中国传统主食，煮至米粒糊化成粥状，广东皮蛋瘦肉粥、潮汕白粥各有特色。'
  },
  {
    id: 'mantou',
    name: '馒头',
    alias: ['馍'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '三国时期（约220年）' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '唐代' } }
    ],
    currentRegions: ['china'],
    description: '相传诸葛亮发明，中国北方的主食，蒸制的发酵面食。'
  },
  {
    id: 'baozi',
    name: '包子',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '宋代（约960年）' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '明代' } },
      { from: 'china', to: 'southeast-asia', time: { display: '清代' } }
    ],
    currentRegions: ['china', 'japan', 'taiwan', 'singapore'],
    description: '中国传统面点，有肉馅和甜馅之分，狗不理包子、南翔小笼包闻名遐迩。'
  },
  {
    id: 'roti',
    name: '印度烤饼',
    alias: ['烙饼', '薄饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'india', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '中世纪' } },
      { from: 'india', to: 'caribbean', time: { display: '19世纪' }, via: '印度移民' }
    ],
    currentRegions: ['india', 'pakistan', 'malaysia', 'singapore', 'caribbean'],
    description: '南亚的基本主食，无发酵的全麦烤饼，搭配咖喱食用。'
  },
  {
    id: 'naan',
    name: '馕',
    alias: ['印度馕'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'central-asia', time: { year: -1300, display: '公元前1300年' } },
    spreads: [
      { from: 'central-asia', to: 'india', time: { display: '莫卧儿时期' } },
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'pakistan', 'iran', 'uk', 'china'],
    description: '泥炉烤制的发酵面饼，新疆馕和印度馕同源，是丝路文化交流的见证。'
  },
  {
    id: 'pita',
    name: '皮塔饼',
    alias: ['口袋饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'middle-east', time: { year: -2500, display: '公元前2500年' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '古代' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['middle-east', 'greece', 'turkey', 'usa'],
    description: '中东传统面饼，烤制时形成空腔，可以填入各种馅料，是沙瓦尔玛和法拉费尔的载体。'
  },
  {
    id: 'couscous',
    name: '古斯古斯',
    alias: ['北非小米'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'morocco', time: { display: '公元7世纪' } },
    spreads: [
      { from: 'morocco', to: 'france', time: { display: '20世纪' }, via: '移民' }
    ],
    currentRegions: ['morocco', 'algeria', 'tunisia', 'france'],
    description: '北非传统主食，蒸制的粗麦粉粒，联合国教科文组织非物质文化遗产。'
  },
  {
    id: 'polenta',
    name: '玉米糊',
    alias: ['波伦塔'],
    category: 'staple',
    ingredients: ['corn'],
    origin: { location: 'italy', time: { display: '16世纪后' } },
    spreads: [],
    currentRegions: ['italy', 'austria', 'switzerland'],
    description: '意大利北部传统食物，玉米传入欧洲后取代了古罗马的谷物糊。'
  },
  {
    id: 'risotto',
    name: '意大利烩饭',
    alias: ['意式炖饭'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'italy', time: { display: '14世纪' } },
    spreads: [],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利北部的米食传统，用高汤慢煮至奶油状，米兰烩饭用藏红花调色。'
  },
  {
    id: 'paella',
    name: '西班牙海鲜饭',
    alias: ['帕埃利亚'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'spain', time: { display: '15世纪' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'south-america'],
    description: '瓦伦西亚的传统菜肴，阿拉伯人带来的稻米与地中海海鲜结合的产物。'
  },
  {
    id: 'biryani',
    name: '印度香饭',
    alias: ['比尔亚尼'],
    category: 'staple',
    ingredients: ['rice', 'cumin', 'cinnamon', 'cardamom'],
    origin: { location: 'india', time: { display: '莫卧儿时期（16世纪）' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '近代' } },
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east', 'uk'],
    description: '波斯烹饪与印度香料的结合，海德拉巴、勒克瑙各有流派，印度节庆必备。'
  },
  {
    id: 'soba',
    name: '荞麦面',
    alias: ['日本荞麦面'],
    category: 'staple',
    ingredients: ['buckwheat'],
    origin: { location: 'japan', time: { display: '江户时代（约1700年）' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本传统面食，荞麦粉制作，冷食热食皆宜，跨年吃荞麦面是日本习俗。'
  },
  {
    id: 'udon',
    name: '乌冬面',
    alias: ['乌龙面'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '奈良时代（8世纪）' } },
    spreads: [],
    currentRegions: ['japan', 'korea'],
    description: '由中国传入的粗面条，�的赞岐乌冬最为著名，口感弹韧。'
  },
  {
    id: 'pho',
    name: '越南河粉',
    alias: ['河粉'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'vietnam', time: { display: '20世纪初' } },
    spreads: [
      { from: 'vietnam', to: 'usa', time: { display: '1970年代' }, via: '越南难民' },
      { from: 'vietnam', to: 'france', time: { display: '20世纪' } }
    ],
    currentRegions: ['vietnam', 'usa', 'france', 'australia'],
    description: '越南国民美食，米粉配牛肉汤，法国殖民与中国移民文化交融的产物。'
  },
  {
    id: 'pad-thai',
    name: '泰式炒河粉',
    alias: ['泰式炒粿条'],
    category: 'staple',
    ingredients: ['rice', 'peanut'],
    origin: { location: 'thailand', time: { display: '1930年代' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1970年代' } }
    ],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国政府推广的国民料理，融合中式炒面与泰式风味，是泰国软实力代表。'
  },

  // ========== 菜肴 ==========
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
    ingredients: ['turmeric', 'cumin', 'coriander', 'chili', 'ginger', 'garlic'],
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
    id: 'tacos',
    name: '塔可',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '古代墨西哥' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥传统食物，玉米饼包裹各种馅料，塔可贝尔将其快餐化推向全球。'
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
    id: 'mapo-tofu',
    name: '麻婆豆腐',
    category: 'dish',
    ingredients: ['soybean', 'chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { year: 1862, display: '1862年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'japan'],
    description: '四川成都陈麻婆创制，川菜代表作，麻辣鲜香烫的典范。'
  },
  {
    id: 'kung-pao-chicken',
    name: '宫保鸡丁',
    alias: ['宫爆鸡丁'],
    category: 'dish',
    ingredients: ['peanut', 'chili'],
    origin: { location: 'china', time: { display: '清代（约1860年）' } },
    spreads: [
      { from: 'china', to: 'usa', time: { display: '20世纪' }, via: '中餐馆' }
    ],
    currentRegions: ['china', 'usa'],
    description: '以清代四川总督丁宝桢命名，美式中餐的代表菜，全球知名度最高的川菜。'
  },
  {
    id: 'peking-duck',
    name: '北京烤鸭',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '明代（约1400年）' } },
    spreads: [
      { from: 'china', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'usa', 'europe'],
    description: '中国国宴菜，全聚德和便宜坊两大流派，配薄饼、葱丝、甜面酱食用。'
  },
  {
    id: 'dim-sum',
    name: '点心',
    alias: ['粤式点心'],
    category: 'dish',
    ingredients: ['wheat', 'rice'],
    origin: { location: 'china', time: { display: '唐代（约700年）' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '19世纪' } },
      { from: 'china', to: 'usa', time: { display: '19世纪' }, via: '粤籍移民' }
    ],
    currentRegions: ['china', 'hong kong', 'usa', 'singapore', 'malaysia'],
    description: '广东饮茶文化的精髓，虾饺、烧卖、叉烧包等小吃配茶点，遍布全球唐人街。'
  },
  {
    id: 'spring-roll',
    name: '春卷',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '东晋（约300年）' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '明清时期' } },
      { from: 'southeast-asia', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'vietnam', 'thailand', 'usa'],
    description: '立春食俗的产物，越南春卷、泰国春卷各有特色，美式中餐必备。'
  },
  {
    id: 'hot-pot',
    name: '火锅',
    category: 'dish',
    ingredients: ['chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { display: '三国时期' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '明代' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'thailand'],
    description: '中国的共食文化代表，重庆麻辣火锅、潮汕牛肉火锅、日式涮涮锅各具特色。'
  },
  {
    id: 'ramen',
    name: '拉面',
    alias: ['日式拉面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '明治时代（约1900年）' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '1980年代' } },
      { from: 'japan', to: 'asia', time: { display: '20世纪末' } }
    ],
    currentRegions: ['japan', 'usa', 'china', 'korea'],
    description: '从中国传入演变而来，博多豚骨、札幌味噌、东京酱油各有特色，成为日本国民美食。'
  },
  {
    id: 'tempura',
    name: '天妇罗',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '16世纪' } },
    spreads: [],
    currentRegions: ['japan', 'usa'],
    description: '葡萄牙传教士带来的油炸技法与日本料理结合，天妇罗海老是代表。'
  },
  {
    id: 'teriyaki',
    name: '照烧',
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '17世纪' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪中期' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '酱油、味醂、糖制成照烧汁，是日式西餐化的代表，在美国广受欢迎。'
  },
  {
    id: 'sashimi',
    name: '刺身',
    alias: ['生鱼片'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'japan', time: { display: '平安时代（约800年）' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa', 'korea'],
    description: '日本料理的精髓，对食材新鲜度要求极高，金枪鱼、三文鱼为上品。'
  },
  {
    id: 'bibimbap',
    name: '拌饭',
    alias: ['石锅拌饭'],
    category: 'dish',
    ingredients: ['rice', 'sesame', 'chili'],
    origin: { location: 'korea', time: { display: '朝鲜时代' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '2000年代' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国代表性料理，米饭配各色蔬菜和辣酱拌匀食用，全州拌饭最有名。'
  },
  {
    id: 'bulgogi',
    name: '烤肉',
    alias: ['韩式烤肉'],
    category: 'dish',
    ingredients: ['soybean', 'sesame', 'pear'],
    origin: { location: 'korea', time: { display: '高句丽时期' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['korea', 'usa', 'japan'],
    description: '腌制牛肉烤制，韩国饮食文化象征，韩流带动全球韩国烤肉热潮。'
  },
  {
    id: 'tom-yum',
    name: '冬阴功汤',
    alias: ['酸辣虾汤'],
    category: 'dish',
    ingredients: ['chili', 'lemon', 'ginger'],
    origin: { location: 'thailand', time: { display: '近代' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1980年代' } }
    ],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国国汤，酸辣鲜香，香茅、南姜、青柠叶是灵魂配料。'
  },
  {
    id: 'green-curry',
    name: '绿咖喱',
    alias: ['泰式绿咖喱'],
    category: 'dish',
    ingredients: ['chili', 'coconut', 'ginger'],
    origin: { location: 'thailand', time: { display: '20世纪初' } },
    spreads: [],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国咖喱代表，用青辣椒制成，配椰浆烹制，比红咖喱更辣。'
  },
  {
    id: 'satay',
    name: '沙爹',
    alias: ['沙嗲'],
    category: 'dish',
    ingredients: ['peanut', 'turmeric', 'cumin'],
    origin: { location: 'indonesia', time: { display: '19世纪' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '19世纪' } },
      { from: 'indonesia', to: 'singapore', time: { display: '20世纪' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'singapore', 'thailand'],
    description: '东南亚烤串，花生酱蘸料是灵魂，爪哇商人沿街叫卖的产物。'
  },
  {
    id: 'nasi-goreng',
    name: '印尼炒饭',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'indonesia', time: { display: '近代' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '20世纪' }, via: '殖民关系' }
    ],
    currentRegions: ['indonesia', 'malaysia', 'netherlands'],
    description: '印尼国菜，甜酱油调味是特色，被列入非物质文化遗产。'
  },
  {
    id: 'laksa',
    name: '叻沙',
    category: 'dish',
    ingredients: ['rice', 'coconut', 'chili'],
    origin: { location: 'malaysia', time: { display: '娘惹文化时期' } },
    spreads: [
      { from: 'malaysia', to: 'singapore', time: { display: '近代' } }
    ],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来与华人文化融合的产物，椰浆咖喱汤底，槟城虾面叻沙与加东叻沙各有拥趸。'
  },
  {
    id: 'poke',
    name: '波奇碗',
    alias: ['夏威夷鱼生饭'],
    category: 'dish',
    ingredients: ['rice', 'sesame', 'soybean'],
    origin: { location: 'usa', time: { display: '传统夏威夷' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '2010年代' } }
    ],
    currentRegions: ['usa', 'europe', 'australia'],
    description: '夏威夷传统生鱼丁，融合日本影响，成为全球健康饮食潮流。'
  },
  {
    id: 'fish-and-chips',
    name: '炸鱼薯条',
    category: 'dish',
    ingredients: ['potato', 'wheat'],
    origin: { location: 'uk', time: { year: 1860, display: '1860年代' } },
    spreads: [
      { from: 'uk', to: 'australia', time: { display: '19世纪' } },
      { from: 'uk', to: 'new-zealand', time: { display: '19世纪' } }
    ],
    currentRegions: ['uk', 'ireland', 'australia', 'new-zealand'],
    description: '英国国民美食，犹太移民带来的炸鱼与比利时/法国薯条的结合。'
  },
  {
    id: 'shepherd-pie',
    name: '牧羊人派',
    alias: ['农舍派'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'uk', time: { display: '18世纪' } },
    spreads: [
      { from: 'uk', to: 'ireland', time: { display: '18世纪' } }
    ],
    currentRegions: ['uk', 'ireland'],
    description: '英国传统菜，肉馅配土豆泥顶层烤制，羊肉版叫牧羊人派，牛肉版叫农舍派。'
  },
  {
    id: 'roast-beef',
    name: '烤牛肉',
    alias: ['英式烤肉'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'uk', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['uk'],
    description: '英国周日烤肉传统的核心，配约克郡布丁和烤蔬菜。'
  },
  {
    id: 'steak-frites',
    name: '牛排薯条',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'france', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['france', 'belgium'],
    description: '法国小酒馆经典，煎牛排配炸薯条，巴黎最受欢迎的平民美食。'
  },
  {
    id: 'coq-au-vin',
    name: '红酒炖鸡',
    category: 'dish',
    ingredients: ['grape'],
    origin: { location: 'france', time: { display: '勃艮第地区传统' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典乡村菜，用勃艮第红酒慢炖，朱莉亚·柴尔德将其推广到美国。'
  },
  {
    id: 'ratatouille',
    name: '普罗旺斯杂烩',
    alias: ['杂菜煲'],
    category: 'dish',
    ingredients: ['tomato', 'eggplant', 'zucchini', 'onion', 'garlic', 'olive'],
    origin: { location: 'france', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['france'],
    description: '普罗旺斯农民菜，新世界蔬菜与地中海橄榄油的结合，皮克斯电影让其闻名全球。'
  },
  {
    id: 'croissant',
    name: '羊角面包',
    alias: ['可颂'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { year: 1683, display: '1683年' } },
    spreads: [
      { from: 'austria', to: 'france', time: { display: '19世纪' } },
      { from: 'france', to: 'europe', time: { display: '20世纪' } }
    ],
    currentRegions: ['france', 'europe', 'usa'],
    description: '维也纳起源的月牙面包，法国将其改良为层层酥皮的经典早餐。'
  },
  {
    id: 'schnitzel',
    name: '炸肉排',
    alias: ['维也纳炸猪排'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '19世纪' } },
    spreads: [
      { from: 'austria', to: 'germany', time: { display: '19世纪' } }
    ],
    currentRegions: ['austria', 'germany'],
    description: '奥地利国菜，意大利米兰炸肉排的变体，裹面包屑油炸。'
  },
  {
    id: 'bratwurst',
    name: '德国香肠',
    alias: ['烤肠'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'germany', time: { display: '14世纪' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪' }, via: '德国移民' }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国有数百种香肠，纽伦堡、图林根各有特色，啤酒节必备。'
  },
  {
    id: 'pastrami',
    name: '烟熏牛肉',
    alias: ['熏牛肉'],
    category: 'dish',
    ingredients: ['pepper-black', 'coriander'],
    origin: { location: 'romania', time: { display: '19世纪' } },
    spreads: [
      { from: 'romania', to: 'usa', time: { display: '19世纪末' }, via: '犹太移民' }
    ],
    currentRegions: ['usa'],
    description: '罗马尼亚犹太移民带到纽约，卡茨熟食店的招牌，纽约三明治文化代表。'
  },
  {
    id: 'gyros',
    name: '希腊烤肉',
    alias: ['旋转烤肉'],
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'onion'],
    origin: { location: 'greece', time: { display: '20世纪' } },
    spreads: [
      { from: 'greece', to: 'usa', time: { display: '1970年代' } }
    ],
    currentRegions: ['greece', 'usa'],
    description: '土耳其旋转烤肉的希腊版本，配皮塔饼和酸奶酱，是地中海快餐代表。'
  },
  {
    id: 'falafel',
    name: '法拉费尔',
    alias: ['炸豆丸子'],
    category: 'dish',
    ingredients: ['chickpea', 'broad-bean'],
    origin: { location: 'egypt', time: { display: '古代' } },
    spreads: [
      { from: 'egypt', to: 'middle-east', time: { display: '中世纪' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['egypt', 'israel', 'lebanon', 'usa'],
    description: '中东素食代表，鹰嘴豆泥炸制，夹皮塔饼配酱汁，以色列国民美食。'
  },
  {
    id: 'hummus',
    name: '鹰嘴豆泥',
    category: 'dish',
    ingredients: ['chickpea', 'sesame', 'olive', 'garlic', 'lemon'],
    origin: { location: 'middle-east', time: { display: '13世纪' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '中世纪' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['middle-east', 'europe', 'usa'],
    description: '中东的经典蘸酱，搭配皮塔饼食用，如今成为全球健康食品。'
  },
  {
    id: 'shawarma',
    name: '沙瓦尔玛',
    alias: ['中东卷饼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'turkey', time: { display: '19世纪' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '20世纪' } },
      { from: 'middle-east', to: 'europe', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'germany', 'uk'],
    description: '土耳其发明的旋转烤肉，德国的土耳其烤肉（Döner）是其变体。'
  },
  {
    id: 'kebab',
    name: '烤肉串',
    alias: ['卡巴布'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'turkey', time: { display: '古代' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '古代' } },
      { from: 'middle-east', to: 'india', time: { display: '中世纪' } }
    ],
    currentRegions: ['turkey', 'iran', 'india', 'pakistan', 'uk'],
    description: '中东和中亚的烧烤传统，印度的坦都里烤鸡是其演变。'
  },
  {
    id: 'tandoori-chicken',
    name: '坦都里烤鸡',
    category: 'dish',
    ingredients: ['chili', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '1947年' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '1960年代' } }
    ],
    currentRegions: ['india', 'pakistan', 'uk'],
    description: '旁遮普菜，泥炉高温烤制，英国最受欢迎的印度菜之一。'
  },
  {
    id: 'butter-chicken',
    name: '黄油鸡',
    alias: ['奶油咖喱鸡'],
    category: 'dish',
    ingredients: ['tomato', 'chili', 'ginger', 'garlic'],
    origin: { location: 'india', time: { year: 1950, display: '1950年代' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '1970年代' } }
    ],
    currentRegions: ['india', 'uk', 'usa', 'canada'],
    description: '德里Moti Mahal餐厅发明，番茄奶油咖喱汁，全球最受欢迎的印度菜。'
  },
  {
    id: 'samosa',
    name: '萨摩萨',
    alias: ['咖喱角'],
    category: 'dish',
    ingredients: ['wheat', 'potato', 'cumin'],
    origin: { location: 'central-asia', time: { display: '10世纪' } },
    spreads: [
      { from: 'central-asia', to: 'india', time: { display: '13世纪' } },
      { from: 'india', to: 'africa', time: { display: '近代' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east', 'africa', 'uk'],
    description: '中亚起源的三角炸饺，印度版配土豆馅，是最普及的印度小吃。'
  },
  {
    id: 'dal',
    name: '豆咖喱',
    alias: ['扁豆糊'],
    category: 'dish',
    ingredients: ['lentil', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'pakistan', 'nepal', 'bangladesh'],
    description: '印度次大陆的日常主食，各种扁豆炖煮配米饭或烤饼，素食蛋白质来源。'
  },
  {
    id: 'injera',
    name: '英吉拉',
    category: 'dish',
    ingredients: ['teff'],
    origin: { location: 'ethiopia', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['ethiopia', 'eritrea'],
    description: '埃塞俄比亚的海绵饼，苔麸发酵制成，用手撕饼蘸酱汁吃。'
  },
  {
    id: 'tagine',
    name: '塔吉锅',
    category: 'dish',
    ingredients: ['cumin', 'cinnamon', 'ginger'],
    origin: { location: 'morocco', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['morocco', 'algeria', 'tunisia'],
    description: '北非传统炖菜，用圆锥形陶锅慢炖，甜咸结合是特色。'
  },
  {
    id: 'jollof-rice',
    name: '朱洛夫饭',
    category: 'dish',
    ingredients: ['rice', 'tomato', 'chili'],
    origin: { location: 'west-africa', time: { display: '14世纪' } },
    spreads: [],
    currentRegions: ['nigeria', 'ghana', 'senegal'],
    description: '西非最著名的菜肴，番茄红油饭，尼日利亚和加纳争论谁的更正宗。'
  },
  {
    id: 'ceviche',
    name: '柠汁腌鱼',
    alias: ['酸橘汁腌鱼'],
    category: 'dish',
    ingredients: ['lemon', 'chili', 'onion'],
    origin: { location: 'peru', time: { display: '古代' } },
    spreads: [
      { from: 'peru', to: 'mexico', time: { display: '殖民时期' } }
    ],
    currentRegions: ['peru', 'ecuador', 'mexico'],
    description: '秘鲁国菜，新鲜鱼肉用柠檬汁"烹熟"，联合国非物质文化遗产。'
  },
  {
    id: 'empanada',
    name: '馅饼',
    alias: ['恩潘纳达'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'argentina', 'chile', 'colombia'],
    description: '西班牙传入拉美的半月形馅饼，阿根廷版最有名，各地馅料不同。'
  },
  {
    id: 'arepa',
    name: '玉米饼',
    alias: ['阿雷帕'],
    category: 'dish',
    ingredients: ['corn'],
    origin: { location: 'colombia', time: { display: '前哥伦布时期' } },
    spreads: [],
    currentRegions: ['venezuela', 'colombia'],
    description: '委内瑞拉和哥伦比亚的玉米饼，可夹馅或配菜，是当地早餐主食。'
  },
  {
    id: 'feijoada',
    name: '黑豆炖肉',
    category: 'dish',
    ingredients: ['black-bean'],
    origin: { location: 'brazil', time: { display: '殖民时期' } },
    spreads: [],
    currentRegions: ['brazil', 'portugal'],
    description: '巴西国菜，黑豆炖各种猪肉部位，周六午餐传统。'
  },
  {
    id: 'churrasco',
    name: '巴西烤肉',
    category: 'dish',
    ingredients: [],
    origin: { location: 'brazil', time: { display: '18世纪' } },
    spreads: [
      { from: 'brazil', to: 'usa', time: { display: '1990年代' } }
    ],
    currentRegions: ['brazil', 'argentina', 'usa'],
    description: '南美高乔牧人的烧烤传统，巴西烤肉店将各种肉串桌边服务推向全球。'
  },
  {
    id: 'poutine',
    name: '肉汁奶酪薯条',
    alias: ['普丁'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'canada', time: { year: 1957, display: '1957年' } },
    spreads: [],
    currentRegions: ['canada'],
    description: '魁北克发明的国民美食，薯条配奶酪凝块和肉汁，加拿大文化符号。'
  },
  {
    id: 'jambalaya',
    name: '什锦饭',
    category: 'dish',
    ingredients: ['rice', 'tomato', 'chili'],
    origin: { location: 'usa', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '路易斯安那克里奥尔菜，西班牙海鲜饭与非洲烹饪的融合，新奥尔良特色。'
  },
  {
    id: 'gumbo',
    name: '秋葵浓汤',
    category: 'dish',
    ingredients: ['rice', 'okra'],
    origin: { location: 'usa', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '路易斯安那代表菜，非洲、法国、西班牙文化融合的产物，秋葵或秋葵粉增稠。'
  },
  {
    id: 'bbq-ribs',
    name: '烧烤肋排',
    alias: ['美式烤肋排'],
    category: 'dish',
    ingredients: ['tomato'],
    origin: { location: 'usa', time: { display: '17世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国烧烤文化代表，德州、堪萨斯城、孟菲斯、卡罗来纳各有流派。'
  },
  {
    id: 'fried-chicken',
    name: '炸鸡',
    alias: ['美式炸鸡'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪' } },
    spreads: [
      { from: 'usa', to: 'asia', time: { display: '20世纪后期' }, via: '肯德基' }
    ],
    currentRegions: ['usa', 'korea', 'japan'],
    description: '美国南方菜，苏格兰移民与非裔美国人烹饪传统的结合，肯德基将其全球化。'
  },
  {
    id: 'clam-chowder',
    name: '蛤蜊浓汤',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '新英格兰代表菜，奶油汤底配蛤蜊土豆，波士顿特色。'
  },
  {
    id: 'hot-dog',
    name: '热狗',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪末' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '德国移民带来的法兰克福香肠夹面包，成为美国棒球场和街头美食符号。'
  },
  {
    id: 'buffalo-wings',
    name: '水牛城鸡翅',
    alias: ['辣鸡翅'],
    category: 'dish',
    ingredients: ['chili'],
    origin: { location: 'usa', time: { year: 1964, display: '1964年' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '纽约州水牛城发明，炸鸡翅配辣酱和蓝纹奶酪，美国酒吧文化代表。'
  },
  {
    id: 'blt-sandwich',
    name: 'BLT三明治',
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'usa', time: { display: '20世纪初' } },
    spreads: [],
    currentRegions: ['usa', 'uk'],
    description: '培根、生菜、番茄三明治，美国经典，简单食材的完美组合。'
  },
  {
    id: 'club-sandwich',
    name: '总会三明治',
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'usa', time: { display: '19世纪末' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '美国俱乐部的三层三明治，火鸡、培根、生菜、番茄、蛋黄酱的组合。'
  },
  {
    id: 'mac-and-cheese',
    name: '芝士通心粉',
    alias: ['奶酪意面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['usa', 'uk', 'canada'],
    description: '美国家庭经典，通心粉配奶酪酱，Kraft速食版成为美国文化符号。'
  },
  {
    id: 'meat-pie',
    name: '肉馅饼',
    alias: ['澳式肉派'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'australia', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['australia', 'new-zealand'],
    description: '澳大利亚国民小吃，酥皮包裹肉馅，配番茄酱，球赛必备。'
  },
  {
    id: 'vegemite-toast',
    name: 'Vegemite吐司',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'australia', time: { year: 1922, display: '1922年' } },
    spreads: [],
    currentRegions: ['australia'],
    description: '澳大利亚特有的酵母酱抹吐司，爱恨分明的早餐，澳洲文化认同的一部分。'
  },
  {
    id: 'pavlova',
    name: '帕夫洛娃',
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'new-zealand', time: { display: '1920年代' } },
    spreads: [],
    currentRegions: ['australia', 'new-zealand'],
    description: '以俄罗斯芭蕾舞者命名的蛋白霜甜点，澳新两国争论发源地。'
  },

  // ========== 腌渍发酵 ==========
  {
    id: 'kimchi',
    name: '泡菜',
    alias: ['韩式泡菜'],
    category: 'preserved',
    ingredients: ['cabbage', 'chili', 'garlic', 'ginger'],
    origin: { location: 'korea', time: { display: '三国时代（约公元前37年）' } },
    spreads: [
      { from: 'korea', to: 'japan', time: { display: '20世纪' } },
      { from: 'korea', to: 'usa', time: { display: '1980年代' }, via: '韩国移民' }
    ],
    currentRegions: ['korea', 'japan', 'china', 'usa'],
    description: '韩国的国民食品，辣白菜是16世纪辣椒传入后的产物，之前的泡菜不辣。'
  },
  {
    id: 'sauerkraut',
    name: '酸菜',
    alias: ['德国酸菜'],
    category: 'preserved',
    ingredients: ['cabbage'],
    origin: { location: 'china', time: { display: '古代' } },
    spreads: [
      { from: 'china', to: 'europe', time: { display: '中世纪' } }
    ],
    currentRegions: ['germany', 'austria', 'poland', 'france'],
    description: '发酵白菜，可能由蒙古人传入欧洲，德国版配香肠，法国阿尔萨斯版是名菜。'
  },
  {
    id: 'miso',
    name: '味噌',
    category: 'preserved',
    ingredients: ['soybean', 'rice'],
    origin: { location: 'japan', time: { display: '奈良时代（8世纪）' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的发酵大豆酱，味噌汤是日本人的灵魂，白味噌、赤味噌各有风味。'
  },
  {
    id: 'natto',
    name: '纳豆',
    category: 'preserved',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '平安时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的发酵大豆，粘稠拉丝、气味强烈，爱恨分明的健康食品。'
  },
  {
    id: 'tempeh',
    name: '天贝',
    category: 'preserved',
    ingredients: ['soybean'],
    origin: { location: 'indonesia', time: { display: '数百年前' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '20世纪' } },
      { from: 'indonesia', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['indonesia', 'netherlands', 'usa'],
    description: '印尼的发酵大豆饼，菌丝将豆子绑在一起，比豆腐更有嚼劲的植物蛋白。'
  },
  {
    id: 'pickles',
    name: '腌黄瓜',
    alias: ['酸黄瓜'],
    category: 'preserved',
    ingredients: ['cucumber'],
    origin: { location: 'mesopotamia', time: { year: -2400, display: '公元前2400年' } },
    spreads: [
      { from: 'mesopotamia', to: 'europe', time: { display: '古代' } }
    ],
    currentRegions: ['usa', 'germany', 'russia', 'poland'],
    description: '人类最古老的保存食品之一，美国汉堡三明治的标配。'
  },

  // ========== 小吃 ==========
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
  {
    id: 'chips',
    name: '薯片',
    alias: ['洋芋片'],
    category: 'snack',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { year: 1853, display: '1853年' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '20世纪' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '纽约萨拉托加泉发明，据说是为了报复抱怨薯条太厚的顾客。'
  },
  {
    id: 'popcorn',
    name: '爆米花',
    category: 'snack',
    ingredients: ['corn'],
    origin: { location: 'mesoamerica', time: { year: -3600, display: '公元前3600年' } },
    spreads: [
      { from: 'mesoamerica', to: 'north-america', time: { display: '古代' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '美洲原住民的传统，美国将其与电影院绑定，成为观影标配。'
  },
  {
    id: 'nachos',
    name: '墨西哥玉米片',
    alias: ['纳乔'],
    category: 'snack',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { year: 1943, display: '1943年' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '1970年代' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥边境小镇发明，炸玉米片配奶酪和辣椒，美国体育赛事小吃。'
  },
  {
    id: 'pretzel',
    name: '椒盐卷饼',
    alias: ['普雷结'],
    category: 'snack',
    ingredients: ['wheat'],
    origin: { location: 'germany', time: { display: '中世纪' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '18世纪' }, via: '德国移民' }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国修道院发明的面包，美国版是软的大号版，德国版是脆的小型版。'
  },
  {
    id: 'onion-rings',
    name: '洋葱圈',
    category: 'snack',
    ingredients: ['onion', 'wheat'],
    origin: { location: 'usa', time: { display: '20世纪初' } },
    spreads: [],
    currentRegions: ['usa', 'uk'],
    description: '美国发明的油炸小吃，是汉堡薯条之外的快餐配菜选择。'
  },
  {
    id: 'edamame',
    name: '毛豆',
    category: 'snack',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '古代' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '古代' } }
    ],
    currentRegions: ['japan', 'china', 'usa'],
    description: '未成熟大豆，日式居酒屋标配，如今是全球健康零食。'
  },

  // ========== 甜点 ==========
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
    id: 'ice-cream',
    name: '冰淇淋',
    alias: ['雪糕'],
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'china', time: { display: '唐代（约700年）' } },
    spreads: [
      { from: 'china', to: 'italy', time: { display: '13世纪' }, via: '马可·波罗?' },
      { from: 'italy', to: 'france', time: { display: '16世纪' } }
    ],
    currentRegions: ['usa', 'italy', 'europe', 'asia'],
    description: '中国的冰酪可能是源头，意大利的Gelato和美国的工业冰淇淋各有特色。'
  },
  {
    id: 'tiramisu',
    name: '提拉米苏',
    category: 'dessert',
    ingredients: ['coffee', 'cacao'],
    origin: { location: 'italy', time: { display: '20世纪60年代' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代' } }
    ],
    currentRegions: ['italy', 'usa', 'europe', 'asia'],
    description: '威尼托大区发明的咖啡甜点，意大利语意为"带我走"，成为全球最知名甜点。'
  },
  {
    id: 'cheesecake',
    name: '芝士蛋糕',
    alias: ['奶酪蛋糕'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'greece', time: { display: '古希腊' } },
    spreads: [
      { from: 'greece', to: 'rome', time: { display: '古罗马' } },
      { from: 'europe', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['usa', 'japan', 'europe'],
    description: '古希腊奥运选手的食物，纽约芝士蛋糕和日式轻芝士各有风格。'
  },
  {
    id: 'crepe',
    name: '可丽饼',
    alias: ['法式薄饼'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '布列塔尼地区传统' } },
    spreads: [
      { from: 'france', to: 'japan', time: { display: '20世纪' } }
    ],
    currentRegions: ['france', 'japan'],
    description: '布列塔尼的荞麦咸薄饼演变出的小麦甜薄饼，巴黎街头和日本原宿的人气小吃。'
  },
  {
    id: 'macaron',
    name: '马卡龙',
    category: 'dessert',
    ingredients: ['almond', 'sugarcane'],
    origin: { location: 'france', time: { display: '16世纪' } },
    spreads: [
      { from: 'france', to: 'japan', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['france', 'japan', 'usa'],
    description: '意大利传入法国，Ladurée将其改良为夹心版，成为巴黎甜点的象征。'
  },
  {
    id: 'baklava',
    name: '果仁蜜饼',
    category: 'dessert',
    ingredients: ['pistachio', 'walnut'],
    origin: { location: 'turkey', time: { display: '奥斯曼帝国时期' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '奥斯曼时期' } },
      { from: 'turkey', to: 'greece', time: { display: '奥斯曼时期' } }
    ],
    currentRegions: ['turkey', 'greece', 'middle-east'],
    description: '层层酥皮夹坚果淋蜂蜜，土耳其和希腊都声称原创，中东各国皆有版本。'
  },
  {
    id: 'mochi',
    name: '麻糬',
    alias: ['糯米糍'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '奈良时代' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本传统糯米点心，新年必吃镜饼，冰淇淋麻糬是现代变体。'
  },
  {
    id: 'dango',
    name: '团子',
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本糯米丸子串，三色团子最有名，赏樱必备甜点。'
  },
  {
    id: 'dorayaki',
    name: '铜锣烧',
    category: 'dessert',
    ingredients: ['wheat', 'red-bean'],
    origin: { location: 'japan', time: { display: '大正时代（1914年）' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '红豆馅夹两片松饼，因哆啦A梦而闻名全球。'
  },
  {
    id: 'taiyaki',
    name: '�的�的烧',
    category: 'dessert',
    ingredients: ['wheat', 'red-bean'],
    origin: { location: 'japan', time: { year: 1909, display: '1909年' } },
    spreads: [
      { from: 'japan', to: 'korea', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'korea'],
    description: '鱼形红豆饼，日本街头小吃代表，韩国版叫붕어빵。'
  },
  {
    id: 'mooncake',
    name: '月饼',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '唐代' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'vietnam', 'singapore', 'malaysia'],
    description: '中秋节传统食品，广式、苏式、潮式各有特色，五仁和蛋黄莲蓉是经典口味。'
  },
  {
    id: 'tangyuan',
    name: '汤圆',
    alias: ['元宵'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '宋代' } },
    spreads: [],
    currentRegions: ['china', 'taiwan'],
    description: '元宵节传统食品，糯米团子包甜馅，象征团圆。'
  },
  {
    id: 'egg-tart',
    name: '蛋挞',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'portugal', time: { display: '18世纪' } },
    spreads: [
      { from: 'portugal', to: 'china', time: { display: '19世纪' }, via: '澳门' },
      { from: 'china', to: 'hong kong', time: { display: '20世纪' } }
    ],
    currentRegions: ['portugal', 'china', 'hong kong', 'macau'],
    description: '葡萄牙修道院的发明，澳门葡挞和港式蛋挞是变体。'
  },
  {
    id: 'churros',
    name: '吉事果',
    alias: ['西班牙油条'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'mexico', 'south-america'],
    description: '西班牙的油炸条，配热巧克力蘸食，拉美各国也很流行。'
  },
  {
    id: 'flan',
    name: '焦糖布丁',
    alias: ['烤布蕾'],
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'spain', time: { display: '罗马时期' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } },
      { from: 'spain', to: 'philippines', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'mexico', 'philippines', 'south-america'],
    description: '罗马人发明的蛋奶布丁，西班牙和拉美的经典甜点。'
  },
  {
    id: 'tres-leches',
    name: '三奶蛋糕',
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'mexico', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['mexico', 'nicaragua', 'south-america'],
    description: '用三种奶（炼乳、淡奶、鲜奶油）浸透的湿润蛋糕，拉美甜点代表。'
  },
  {
    id: 'gulab-jamun',
    name: '印度甜球',
    category: 'dessert',
    ingredients: ['sugarcane', 'cardamom'],
    origin: { location: 'india', time: { display: '中世纪' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '莫卧儿时期' } }
    ],
    currentRegions: ['india', 'pakistan', 'nepal', 'bangladesh'],
    description: '奶粉面团炸制后浸糖浆，印度最受欢迎的甜点，节日必备。'
  },
  {
    id: 'jalebi',
    name: '印度甜卷',
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'middle-east', time: { display: '中世纪' } },
    spreads: [
      { from: 'middle-east', to: 'india', time: { display: '中世纪' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east'],
    description: '螺旋状炸面圈浸糖浆，来自波斯的甜点，印度街头常见。'
  },
  {
    id: 'brownie',
    name: '布朗尼',
    category: 'dessert',
    ingredients: ['cacao', 'wheat', 'sugarcane'],
    origin: { location: 'usa', time: { year: 1893, display: '1893年' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '芝加哥世博会发明的巧克力方块蛋糕，湿润浓郁是特点。'
  },
  {
    id: 'cookie',
    name: '曲奇',
    alias: ['饼干'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '17世纪荷兰移民' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '荷兰语"koekje"（小蛋糕）演变而来，巧克力豆曲奇是美国发明。'
  },
  {
    id: 'donut',
    name: '甜甜圈',
    alias: ['炸面圈'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '19世纪' } },
    spreads: [
      { from: 'usa', to: 'asia', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['usa', 'japan', 'korea'],
    description: '荷兰移民带来的油炸糕点演变，美国警察与甜甜圈的关联是文化梗。'
  },
  {
    id: 'pancake',
    name: '煎饼',
    alias: ['薄烤饼'],
    category: 'dessert',
    ingredients: ['wheat', 'maple'],
    origin: { location: 'usa', time: { display: '殖民时期' } },
    spreads: [],
    currentRegions: ['usa', 'canada'],
    description: '美式早餐的代表，配枫糖浆和黄油，是美国家庭周末早餐传统。'
  },
  {
    id: 'waffle',
    name: '华夫饼',
    alias: ['格子饼'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'belgium', time: { display: '中世纪' } },
    spreads: [
      { from: 'belgium', to: 'usa', time: { display: '1962年世博会' } }
    ],
    currentRegions: ['belgium', 'usa'],
    description: '比利时的两种华夫（布鲁塞尔和列日）都很有名，美国发展出早餐华夫。'
  },
  {
    id: 'apple-pie',
    name: '苹果派',
    category: 'dessert',
    ingredients: ['apple', 'wheat', 'cinnamon', 'sugarcane'],
    origin: { location: 'uk', time: { display: '中世纪' } },
    spreads: [
      { from: 'uk', to: 'usa', time: { display: '殖民时期' } }
    ],
    currentRegions: ['usa', 'uk'],
    description: '英国传统甜点，"美国如苹果派"的说法让其成为美国文化符号。'
  },
  {
    id: 'pumpkin-pie',
    name: '南瓜派',
    category: 'dessert',
    ingredients: ['pumpkin', 'wheat', 'cinnamon', 'sugarcane'],
    origin: { location: 'usa', time: { display: '17世纪' } },
    spreads: [],
    currentRegions: ['usa', 'canada'],
    description: '美国感恩节传统甜点，南瓜泥配香料的经典组合。'
  },
  {
    id: 'pecan-pie',
    name: '山核桃派',
    category: 'dessert',
    ingredients: ['pecan', 'wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国南方的传统甜点，糖浆和山核桃的甜蜜组合。'
  },

  // ========== 饮品 ==========
  {
    id: 'beer',
    name: '啤酒',
    category: 'beverage',
    ingredients: ['barley', 'hop'],
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
  {
    id: 'espresso',
    name: '意式浓缩',
    alias: ['浓缩咖啡'],
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { year: 1884, display: '1884年' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '20世纪后期' } }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利发明的高压萃取咖啡，是拿铁、卡布奇诺等的基础。'
  },
  {
    id: 'cappuccino',
    name: '卡布奇诺',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '20世纪初' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代' } }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '浓缩咖啡配奶泡，名字来自嘉布遣会修士棕色袍子，意大利早餐的选择。'
  },
  {
    id: 'latte',
    name: '拿铁',
    alias: ['咖啡拿铁'],
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '20世纪' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代' }, via: '星巴克' }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '意大利语"牛奶咖啡"，浓缩咖啡加大量蒸奶，星巴克的主打产品。'
  },
  {
    id: 'bubble-tea',
    name: '珍珠奶茶',
    alias: ['波霸奶茶'],
    category: 'beverage',
    ingredients: ['tea', 'tapioca'],
    origin: { location: 'taiwan', time: { year: 1980, display: '1980年代' } },
    spreads: [
      { from: 'taiwan', to: 'asia', time: { display: '1990年代' } },
      { from: 'asia', to: 'usa', time: { display: '2000年代' } }
    ],
    currentRegions: ['taiwan', 'china', 'japan', 'usa', 'europe'],
    description: '台湾发明的奶茶加粉圆，成为全球年轻人的时尚饮品，带动亚洲奶茶热潮。'
  },
  {
    id: 'matcha-latte',
    name: '抹茶拿铁',
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'japan', time: { display: '现代' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '2000年代' } }
    ],
    currentRegions: ['japan', 'usa', 'europe'],
    description: '日本抹茶与西式拿铁的结合，星巴克将其推向全球。'
  },
  {
    id: 'chai',
    name: '印度奶茶',
    alias: ['玛萨拉茶'],
    category: 'beverage',
    ingredients: ['tea', 'cinnamon', 'cardamom', 'ginger', 'clove'],
    origin: { location: 'india', time: { display: '英国殖民时期' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪' } },
      { from: 'india', to: 'usa', time: { display: '1990年代' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '印度的香料奶茶，用红茶配多种香料煮制，街头茶摊的灵魂。'
  },
  {
    id: 'sake',
    name: '清酒',
    alias: ['日本酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '奈良时代（约700年）' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '日本的国酒，米酿造的酒，冷饮热饮皆宜，寿司的绝配。'
  },
  {
    id: 'soju',
    name: '烧酒',
    alias: ['韩国烧酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'korea', time: { display: '13世纪' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国国民酒，蒸馏酒，绿瓶真露是代表，韩国聚餐必备。'
  },
  {
    id: 'baijiu',
    name: '白酒',
    alias: ['中国白酒'],
    category: 'beverage',
    ingredients: ['sorghum', 'rice', 'wheat'],
    origin: { location: 'china', time: { display: '元代（约1300年）' } },
    spreads: [],
    currentRegions: ['china'],
    description: '中国的国酒，高度蒸馏酒，茅台、五粮液是顶级品牌，中国宴席必备。'
  },
  {
    id: 'whiskey',
    name: '威士忌',
    category: 'beverage',
    ingredients: ['barley'],
    origin: { location: 'ireland', time: { display: '12世纪' } },
    spreads: [
      { from: 'ireland', to: 'scotland', time: { display: '中世纪' } },
      { from: 'uk', to: 'usa', time: { display: '18世纪' } }
    ],
    currentRegions: ['scotland', 'ireland', 'usa', 'japan'],
    description: '蒸馏谷物酒，苏格兰威士忌、爱尔兰威士忌、波本各有特色，日本威士忌后起之秀。'
  },
  {
    id: 'vodka',
    name: '伏特加',
    category: 'beverage',
    ingredients: ['potato', 'wheat'],
    origin: { location: 'russia', time: { display: '14世纪' } },
    spreads: [
      { from: 'russia', to: 'europe', time: { display: '16世纪' } }
    ],
    currentRegions: ['russia', 'poland', 'usa'],
    description: '东欧的烈酒，几乎无色无味，是鸡尾酒的基础。'
  },
  {
    id: 'rum',
    name: '朗姆酒',
    category: 'beverage',
    ingredients: ['sugarcane'],
    origin: { location: 'caribbean', time: { display: '17世纪' } },
    spreads: [
      { from: 'caribbean', to: 'usa', time: { display: '18世纪' } }
    ],
    currentRegions: ['caribbean', 'usa'],
    description: '加勒比甘蔗蒸馏酒，海盗的传说饮品，莫吉托和朗姆可乐的基础。'
  },
  {
    id: 'tequila',
    name: '龙舌兰酒',
    alias: ['特基拉'],
    category: 'beverage',
    ingredients: ['agave'],
    origin: { location: 'mexico', time: { display: '16世纪' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥哈利斯科州特产，蓝色龙舌兰蒸馏，玛格丽塔的灵魂。'
  },
  {
    id: 'champagne',
    name: '香槟',
    alias: ['起泡酒'],
    category: 'beverage',
    ingredients: ['grape'],
    origin: { location: 'france', time: { display: '17世纪' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国香槟区的气泡酒，唐·培里侬修士改良，庆典的代名词。'
  },
  {
    id: 'sangria',
    name: '桑格利亚',
    alias: ['水果酒'],
    category: 'beverage',
    ingredients: ['grape', 'orange'],
    origin: { location: 'spain', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['spain', 'portugal'],
    description: '西班牙的水果红酒，夏日清凉饮品，加入各种水果和香料。'
  },
  {
    id: 'lassi',
    name: '拉西',
    alias: ['印度酸奶饮'],
    category: 'beverage',
    ingredients: ['mango'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度的酸奶饮品，芒果拉西最受欢迎，消暑解辣的好帮手。'
  },
  {
    id: 'horchata',
    name: '欧恰塔',
    alias: ['米浆'],
    category: 'beverage',
    ingredients: ['rice', 'cinnamon'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [
      { from: 'spain', to: 'mexico', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'mexico'],
    description: '西班牙用杏仁做，墨西哥用大米做的甜饮，肉桂调味。'
  },
  {
    id: 'kombucha',
    name: '康普茶',
    alias: ['红茶菌'],
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'china', time: { display: '公元前220年左右' } },
    spreads: [
      { from: 'china', to: 'russia', time: { display: '20世纪初' } },
      { from: 'russia', to: 'usa', time: { display: '1990年代' } }
    ],
    currentRegions: ['usa', 'europe'],
    description: '发酵茶饮，据说秦始皇时期发明，如今是西方健康饮品潮流。'
  },
  {
    id: 'smoothie',
    name: '冰沙',
    alias: ['果昔'],
    category: 'beverage',
    ingredients: ['banana', 'strawberry'],
    origin: { location: 'usa', time: { display: '1960年代' } },
    spreads: [],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '美国健康食品店发明的混合果饮，如今是全球健身人群的选择。'
  },
  {
    id: 'hot-chocolate',
    name: '热巧克力',
    alias: ['可可'],
    category: 'beverage',
    ingredients: ['cacao', 'sugarcane'],
    origin: { location: 'mesoamerica', time: { display: '玛雅时期' } },
    spreads: [
      { from: 'mesoamerica', to: 'spain', time: { display: '16世纪' } },
      { from: 'spain', to: 'europe', time: { display: '17世纪' } }
    ],
    currentRegions: ['europe', 'usa'],
    description: '玛雅人的神圣饮料，西班牙人加糖改良，冬日暖身饮品。'
  },
  {
    id: 'lemonade',
    name: '柠檬水',
    alias: ['柠檬汁'],
    category: 'beverage',
    ingredients: ['lemon', 'sugarcane'],
    origin: { location: 'egypt', time: { display: '中世纪' } },
    spreads: [
      { from: 'egypt', to: 'europe', time: { display: '中世纪' } },
      { from: 'europe', to: 'usa', time: { display: '17世纪' } }
    ],
    currentRegions: ['usa', 'europe', 'middle-east'],
    description: '简单的柠檬糖水，美国孩子卖柠檬水是创业精神的象征。'
  },
  {
    id: 'cider',
    name: '苹果酒',
    alias: ['西打'],
    category: 'beverage',
    ingredients: ['apple'],
    origin: { location: 'uk', time: { display: '古代' } },
    spreads: [
      { from: 'uk', to: 'usa', time: { display: '殖民时期' } }
    ],
    currentRegions: ['uk', 'france', 'usa'],
    description: '发酵苹果汁，英国和法国诺曼底是传统产区，美国有无酒精版。'
  },
  {
    id: 'ginger-beer',
    name: '姜汁啤酒',
    alias: ['姜汁汽水'],
    category: 'beverage',
    ingredients: ['ginger'],
    origin: { location: 'uk', time: { display: '18世纪' } },
    spreads: [
      { from: 'uk', to: 'caribbean', time: { display: '18世纪' } }
    ],
    currentRegions: ['uk', 'caribbean', 'usa'],
    description: '英国发明的姜味发酵饮料，莫斯科骡子鸡尾酒的材料。'
  },

  // ========== 调味品 ==========
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
    ingredients: ['tomato', 'sugarcane'],
    origin: { location: 'usa', time: { year: 1876, display: '1876年' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '19世纪末' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '亨氏番茄酱定义了现代番茄酱，薯条和汉堡的经典搭配。'
  },
  {
    id: 'mayonnaise',
    name: '蛋黄酱',
    alias: ['美乃滋'],
    category: 'condiment',
    ingredients: ['olive'],
    origin: { location: 'spain', time: { year: 1756, display: '1756年' } },
    spreads: [
      { from: 'spain', to: 'france', time: { display: '18世纪' } }
    ],
    currentRegions: ['usa', 'europe', 'japan'],
    description: '法国厨师在梅诺卡岛发明，日本丘比蛋黄酱是独特变体。'
  },
  {
    id: 'mustard',
    name: '芥末酱',
    alias: ['黄芥末'],
    category: 'condiment',
    ingredients: ['mustard'],
    origin: { location: 'france', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['france', 'germany', 'usa'],
    description: '第戎芥末最有名，美国黄芥末配热狗，德国芥末配香肠。'
  },
  {
    id: 'wasabi',
    name: '山葵',
    alias: ['日本芥末'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'japan', time: { display: '飞鸟时代（约600年）' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本特有的调味料，新鲜山葵价格昂贵，大部分是辣根染色的替代品。'
  },
  {
    id: 'sriracha',
    name: '是拉差辣酱',
    category: 'condiment',
    ingredients: ['chili', 'garlic'],
    origin: { location: 'thailand', time: { display: '1930年代' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1980年代' }, via: '越南华裔' }
    ],
    currentRegions: ['usa', 'thailand'],
    description: '泰国发明，越南华裔在美国生产的汇丰公司版本风靡全球。'
  },
  {
    id: 'tabasco',
    name: '塔巴斯科辣酱',
    category: 'condiment',
    ingredients: ['chili'],
    origin: { location: 'usa', time: { year: 1868, display: '1868年' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '路易斯安那州发明的发酵辣酱，小瓶装的全球辣酱标准。'
  },
  {
    id: 'fish-sauce',
    name: '鱼露',
    alias: ['鱼酱'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'vietnam', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['vietnam', 'thailand', 'philippines'],
    description: '东南亚的灵魂调味料，发酵鱼提取，是越南和泰国菜的基础。'
  },
  {
    id: 'oyster-sauce',
    name: '蚝油',
    category: 'condiment',
    ingredients: [],
    origin: { location: 'china', time: { year: 1888, display: '1888年' } },
    spreads: [],
    currentRegions: ['china', 'southeast-asia'],
    description: '广东李锦记创始人李锦裳发明，粤菜和东南亚菜的常用调味料。'
  },
  {
    id: 'hoisin-sauce',
    name: '海鲜酱',
    alias: ['甜面酱'],
    category: 'condiment',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['china', 'vietnam'],
    description: '甜咸的酱料，北京烤鸭和越南河粉的配料。'
  },
  {
    id: 'tahini',
    name: '芝麻酱',
    category: 'condiment',
    ingredients: ['sesame'],
    origin: { location: 'middle-east', time: { display: '古代' } },
    spreads: [
      { from: 'middle-east', to: 'china', time: { display: '古代' } }
    ],
    currentRegions: ['middle-east', 'china', 'greece'],
    description: '中东的芝麻酱是鹰嘴豆泥的成分，中国的芝麻酱配麻酱面。'
  },
  {
    id: 'pesto',
    name: '青酱',
    alias: ['罗勒酱'],
    category: 'condiment',
    ingredients: ['olive', 'pine-nut', 'garlic'],
    origin: { location: 'italy', time: { display: '16世纪' } },
    spreads: [],
    currentRegions: ['italy', 'usa'],
    description: '热那亚的特产，罗勒、松子、帕尔马干酪、橄榄油的组合。'
  },
  {
    id: 'chimichurri',
    name: '阿根廷青酱',
    category: 'condiment',
    ingredients: ['olive', 'garlic', 'chili'],
    origin: { location: 'argentina', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['argentina', 'uruguay'],
    description: '阿根廷烤肉的绝配，香芹、大蒜、橄榄油的组合。'
  },
  {
    id: 'worcestershire-sauce',
    name: '伍斯特酱',
    alias: ['辣酱油'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'uk', time: { year: 1838, display: '1838年' } },
    spreads: [],
    currentRegions: ['uk', 'usa'],
    description: '英国伍斯特郡发明的发酵酱汁，血腥玛丽鸡尾酒的成分。'
  },
  {
    id: 'gochujang',
    name: '辣椒酱',
    alias: ['韩式辣酱'],
    category: 'condiment',
    ingredients: ['chili', 'rice', 'soybean'],
    origin: { location: 'korea', time: { display: '朝鲜时代（16世纪后）' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '2010年代' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国的发酵辣椒酱，甜辣咸鲜，拌饭和烤肉必备，韩流带动全球流行。'
  },
  {
    id: 'sambal',
    name: '参巴酱',
    alias: ['叁巴酱'],
    category: 'condiment',
    ingredients: ['chili', 'garlic'],
    origin: { location: 'indonesia', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['indonesia', 'malaysia', 'singapore'],
    description: '东南亚的辣椒酱，种类繁多，马来和印尼菜的基础调味。'
  },
  {
    id: 'harissa',
    name: '哈里萨辣酱',
    category: 'condiment',
    ingredients: ['chili', 'cumin', 'coriander', 'caraway'],
    origin: { location: 'tunisia', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['tunisia', 'morocco', 'algeria'],
    description: '北非的辣椒酱，配古斯古斯和塔吉锅，是马格里布菜的标志。'
  },
  {
    id: 'chutney',
    name: '酸辣酱',
    alias: ['印度酱'],
    category: 'condiment',
    ingredients: ['mango', 'chili', 'ginger'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '殖民时期' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '印度的果酱/酱料，芒果酸辣酱最有名，配咖喱和萨摩萨。'
  },
  {
    id: 'tzatziki',
    name: '酸奶黄瓜酱',
    category: 'condiment',
    ingredients: ['cucumber', 'garlic'],
    origin: { location: 'greece', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['greece', 'turkey'],
    description: '希腊的酸奶酱，配希腊烤肉和皮塔饼，土耳其版叫cacık。'
  },
  {
    id: 'aioli',
    name: '蒜泥蛋黄酱',
    category: 'condiment',
    ingredients: ['garlic', 'olive'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['spain', 'france'],
    description: '普罗旺斯和加泰罗尼亚的蒜味蛋黄酱，配海鲜和蔬菜。'
  },
  {
    id: 'teriyaki-sauce',
    name: '照烧酱',
    category: 'condiment',
    ingredients: ['soybean', 'ginger'],
    origin: { location: 'japan', time: { display: '17世纪' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '酱油、味醂、糖的组合，是日式西餐化的调味基础。'
  },
  {
    id: 'ponzu',
    name: '柚子醋',
    category: 'condiment',
    ingredients: ['soybean', 'lemon'],
    origin: { location: 'japan', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '柑橘汁加酱油的组合，配刺身、火锅的蘸料。'
  },
  {
    id: 'mirin',
    name: '味醂',
    alias: ['米霖'],
    category: 'condiment',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '战国时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的甜味料酒，照烧酱和各种日式调味的基础。'
  },
  {
    id: 'vinegar',
    name: '醋',
    category: 'condiment',
    ingredients: [],
    origin: { location: 'mesopotamia', time: { year: -3000, display: '公元前3000年' } },
    spreads: [],
    currentRegions: ['china', 'italy', 'france', 'japan'],
    description: '人类最古老的调味料之一，山西陈醋、意大利香醋、日本米醋各有特色。'
  },
  {
    id: 'balsamic-vinegar',
    name: '香醋',
    alias: ['意大利香醋'],
    category: 'condiment',
    ingredients: ['grape'],
    origin: { location: 'italy', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['italy'],
    description: '摩德纳和雷焦艾米利亚的特产，陈年香醋是意大利美食的瑰宝。'
  },

  // ========== 更多中国菜 ==========
  {
    id: 'zhajiangmian',
    name: '炸酱面',
    category: 'dish',
    ingredients: ['wheat', 'soybean'],
    origin: { location: 'china', time: { display: '清代' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'korea'],
    description: '北京传统面食，肉丁炸酱拌面，传入韩国后演变为韩式炸酱面。'
  },
  {
    id: 'lanzhou-lamian',
    name: '兰州拉面',
    alias: ['牛肉面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '清代嘉庆年间' } },
    spreads: [],
    currentRegions: ['china'],
    description: '甘肃兰州的传统面食，一清二白三红四绿五黄，中国面食的代表。'
  },
  {
    id: 'xiaolongbao',
    name: '小笼包',
    alias: ['汤包'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '清代同治年间' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '20世纪' } },
      { from: 'china', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['china', 'taiwan', 'japan', 'usa'],
    description: '上海南翔的传统点心，皮薄汁多，鼎泰丰使其闻名世界。'
  },
  {
    id: 'char-siu',
    name: '叉烧',
    alias: ['蜜汁叉烧'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'china', time: { display: '清代' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'malaysia', 'singapore'],
    description: '广东烧腊的代表，蜜汁叉烧色泽红亮，是叉烧包的灵魂。'
  },
  {
    id: 'zongzi',
    name: '粽子',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '春秋战国' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '奈良时代' } },
      { from: 'china', to: 'southeast-asia', time: { display: '宋代' } }
    ],
    currentRegions: ['china', 'japan', 'vietnam', 'malaysia'],
    description: '端午节传统食物，相传纪念屈原，南北方口味迥异。'
  },
  {
    id: 'malatang',
    name: '麻辣烫',
    category: 'dish',
    ingredients: ['chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { display: '近代' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '21世纪' } }
    ],
    currentRegions: ['china', 'korea'],
    description: '四川街头小吃，源于船工的简易火锅，现已风靡亚洲。'
  },
  {
    id: 'jianbing',
    name: '煎饼果子',
    alias: ['煎饼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '天津传统早点，薄饼卷油条配酱料，中国最受欢迎的街头早餐。'
  },
  {
    id: 'youtiao',
    name: '油条',
    alias: ['油炸鬼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '宋代' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'vietnam', 'malaysia', 'thailand'],
    description: '中国传统早点，相传为讽刺秦桧而作，配豆浆或粥食用。'
  },
  {
    id: 'baijiu',
    name: '白酒',
    alias: ['烧酒'],
    category: 'beverage',
    ingredients: ['sorghum', 'rice'],
    origin: { location: 'china', time: { display: '元代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '中国传统蒸馏酒，茅台、五粮液是其代表，世界三大蒸馏酒之一。'
  },
  {
    id: 'huangjiu',
    name: '黄酒',
    alias: ['绍兴酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '古代' } }
    ],
    currentRegions: ['china', 'japan'],
    description: '中国最古老的酒类，绍兴黄酒闻名天下，日本清酒由此演变。'
  },
  {
    id: 'luosifen',
    name: '螺蛳粉',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '1980年代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '广西柳州特色小吃，以独特的"臭"味闻名，近年风靡全国。'
  },
  {
    id: 'tanghulu',
    name: '糖葫芦',
    alias: ['冰糖葫芦'],
    category: 'snack',
    ingredients: ['hawthorn'],
    origin: { location: 'china', time: { display: '宋代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '北方传统小吃，山楂裹糖，是中国冬季街头的标志性食物。'
  },
  {
    id: 'stinky-tofu',
    name: '臭豆腐',
    category: 'snack',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '清代' } },
    spreads: [
      { from: 'china', to: 'taiwan', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'taiwan'],
    description: '长沙和台湾的特色小吃，闻着臭吃着香的发酵豆制品。'
  },
  {
    id: 'hot-dry-noodles',
    name: '热干面',
    alias: ['芝麻酱面'],
    category: 'dish',
    ingredients: ['wheat', 'sesame'],
    origin: { location: 'china', time: { display: '20世纪30年代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '武汉传统早点，芝麻酱拌面，中国五大名面之一。'
  },
  {
    id: 'biangbiang-noodles',
    name: '油泼面',
    alias: ['BiangBiang面'],
    category: 'dish',
    ingredients: ['wheat', 'chili'],
    origin: { location: 'china', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['china'],
    description: '陕西关中面食，宽如裤带的手工面，热油泼辣椒面。'
  },
  {
    id: 'wonton',
    name: '馄饨',
    alias: ['云吞', '抄手'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '汉代' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'malaysia', 'singapore', 'indonesia'],
    description: '中国传统面食，广东叫云吞，四川叫抄手，各地风味各异。'
  },

  // ========== 更多日本料理 ==========
  {
    id: 'tonkatsu',
    name: '炸猪排',
    alias: ['豚カツ'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '明治时代' } },
    spreads: [
      { from: 'japan', to: 'korea', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'korea', 'taiwan'],
    description: '日式西洋料理的代表，裹面包糠油炸的猪排配卷心菜。'
  },
  {
    id: 'okonomiyaki',
    name: '大阪烧',
    alias: ['御好烧'],
    category: 'dish',
    ingredients: ['wheat', 'cabbage'],
    origin: { location: 'japan', time: { display: '昭和时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '大阪的代表性小吃，面糊混合蔬菜在铁板上煎烤。'
  },
  {
    id: 'takoyaki',
    name: '章鱼烧',
    alias: ['たこ焼き'],
    category: 'snack',
    ingredients: ['wheat', 'octopus'],
    origin: { location: 'japan', time: { display: '1935年' } },
    spreads: [
      { from: 'japan', to: 'taiwan', time: { display: '近代' } }
    ],
    currentRegions: ['japan', 'taiwan'],
    description: '大阪发明的街头小吃，圆形面糊球包裹章鱼块。'
  },
  {
    id: 'gyudon',
    name: '牛丼',
    alias: ['牛肉饭'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '明治时代' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa', 'china'],
    description: '日本快餐的代表，吉野家使其风靡全球。'
  },
  {
    id: 'oyakodon',
    name: '亲子丼',
    category: 'dish',
    ingredients: ['rice', 'chicken'],
    origin: { location: 'japan', time: { display: '明治时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '鸡肉和鸡蛋盖饭，亲子之名来自鸡与蛋的关系。'
  },
  {
    id: 'katsudon',
    name: '炸猪排饭',
    alias: ['カツ丼'],
    category: 'dish',
    ingredients: ['rice', 'wheat'],
    origin: { location: 'japan', time: { display: '大正时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '炸猪排配蛋汁盖饭，日本学生考试前的幸运食物。'
  },
  {
    id: 'yakitori',
    name: '烤鸡串',
    alias: ['焼き鳥'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式烤鸡肉串，居酒屋的常见料理。'
  },
  {
    id: 'unagi',
    name: '鳗鱼饭',
    alias: ['蒲烧鳗鱼'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '江户时代' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '日本夏季的传统美食，土用丑日必吃鳗鱼补体力。'
  },
  {
    id: 'shabu-shabu',
    name: '涮涮锅',
    alias: ['しゃぶしゃぶ'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'japan', time: { display: '20世纪' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '日式火锅，薄肉片在热汤中涮几下即食。'
  },
  {
    id: 'sukiyaki',
    name: '寿喜烧',
    alias: ['すき焼き'],
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '明治时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式牛肉锅，甜酱油底料，明治维新后牛肉解禁的产物。'
  },
  {
    id: 'tamagoyaki',
    name: '玉子烧',
    alias: ['日式蛋卷'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式煎蛋卷，便当和寿司的常见配料。'
  },
  {
    id: 'chawanmushi',
    name: '茶碗蒸',
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代' } },
    spreads: [
      { from: 'japan', to: 'taiwan', time: { display: '日治时期' } }
    ],
    currentRegions: ['japan', 'taiwan'],
    description: '日式蒸蛋，滑嫩的蛋液中加入各种配料。'
  },
  {
    id: 'onigiri',
    name: '饭团',
    alias: ['御握り'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '平安时代' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本便携主食，三角形饭团包裹各种馅料，便利店的热销商品。'
  },
  {
    id: 'ochazuke',
    name: '茶泡饭',
    alias: ['お茶漬け'],
    category: 'dish',
    ingredients: ['rice', 'tea'],
    origin: { location: 'japan', time: { display: '江户时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的简易餐食，热茶或高汤浇在米饭上，配腌菜或烤鱼。'
  },

  // ========== 更多韩国料理 ==========
  {
    id: 'samgyeopsal',
    name: '五花肉',
    alias: ['삼겹살'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'korea', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国烤肉的代表，烤五花肉配生菜和蒜。'
  },
  {
    id: 'japchae',
    name: '杂菜',
    alias: ['잡채'],
    category: 'dish',
    ingredients: ['sweet-potato'],
    origin: { location: 'korea', time: { display: '朝鲜时代' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国宴席菜，红薯粉丝炒蔬菜和肉丝。'
  },
  {
    id: 'sundubu-jjigae',
    name: '嫩豆腐汤',
    alias: ['순두부찌개'],
    category: 'dish',
    ingredients: ['soybean', 'chili'],
    origin: { location: 'korea', time: { display: '近代' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国豆腐汤，嫩豆腐配辣酱和海鲜，美国韩餐厅的招牌。'
  },
  {
    id: 'tteokbokki',
    name: '炒年糕',
    alias: ['떡볶이'],
    category: 'dish',
    ingredients: ['rice', 'chili'],
    origin: { location: 'korea', time: { display: '朝鲜时代' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国街头小吃，年糕条配辣酱，现代版加入面条和芝士。'
  },
  {
    id: 'kimbap',
    name: '紫菜包饭',
    alias: ['김밥'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'korea', time: { display: '20世纪' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩式饭卷，与日本寿司相似但用麻油调味，是野餐和便当的常见食物。'
  },
  {
    id: 'jjajangmyeon',
    name: '韩式炸酱面',
    alias: ['짜장면'],
    category: 'dish',
    ingredients: ['wheat', 'soybean'],
    origin: { location: 'korea', time: { display: '1905年' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '中国炸酱面的韩国变体，用黑酱炒制，韩国外卖的经典。'
  },
  {
    id: 'chimaek',
    name: '炸鸡啤酒',
    alias: ['치맥'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'korea', time: { display: '1970年代' } },
    spreads: [
      { from: 'korea', to: 'china', time: { display: '21世纪' } }
    ],
    currentRegions: ['korea', 'china'],
    description: '韩式炸鸡配啤酒，韩剧文化输出的标志性美食。'
  },
  {
    id: 'naengmyeon',
    name: '冷面',
    alias: ['냉면'],
    category: 'dish',
    ingredients: ['buckwheat'],
    origin: { location: 'korea', time: { display: '朝鲜时代' } },
    spreads: [
      { from: 'korea', to: 'china', time: { display: '20世纪' } }
    ],
    currentRegions: ['korea', 'china'],
    description: '韩国冷面，分平壤冷面和咸兴冷面两派，延边冷面是中国变体。'
  },

  // ========== 更多东南亚菜 ==========
  {
    id: 'nasi-goreng',
    name: '印尼炒饭',
    alias: ['椰香炒饭'],
    category: 'dish',
    ingredients: ['rice', 'chili'],
    origin: { location: 'indonesia', time: { display: '近代' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '殖民时期' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'netherlands'],
    description: '印尼国菜，甜酱油炒饭配煎蛋，荷兰也很流行。'
  },
  {
    id: 'satay',
    name: '沙爹',
    alias: ['沙嗲'],
    category: 'dish',
    ingredients: ['peanut', 'turmeric'],
    origin: { location: 'indonesia', time: { display: '19世纪' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '近代' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'singapore', 'thailand'],
    description: '东南亚烤肉串，配花生酱蘸料，可能受中东烤肉影响。'
  },
  {
    id: 'rendang',
    name: '仁当',
    alias: ['干咖喱'],
    category: 'dish',
    ingredients: ['coconut', 'chili', 'turmeric'],
    origin: { location: 'indonesia', time: { display: '古代' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '近代' } }
    ],
    currentRegions: ['indonesia', 'malaysia'],
    description: '印尼苏门答腊的传统菜，慢炖至汁干的咖喱牛肉，曾被评为世界最美味的食物。'
  },
  {
    id: 'bun-cha',
    name: '烤肉米粉',
    alias: ['Bún chả'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'vietnam', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['vietnam'],
    description: '河内特色，烤肉配米粉和蘸料，奥巴马访越时品尝使其闻名。'
  },
  {
    id: 'banh-xeo',
    name: '越南煎饼',
    alias: ['Bánh xèo'],
    category: 'dish',
    ingredients: ['rice', 'turmeric'],
    origin: { location: 'vietnam', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['vietnam'],
    description: '越南黄色脆饼，姜黄粉调色，包裹豆芽和肉类。'
  },
  {
    id: 'gado-gado',
    name: '加多加多',
    category: 'dish',
    ingredients: ['peanut'],
    origin: { location: 'indonesia', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['indonesia'],
    description: '印尼蔬菜沙拉，花生酱淋各种蔬菜和豆腐。'
  },
  {
    id: 'mee-goreng',
    name: '马来炒面',
    category: 'dish',
    ingredients: ['wheat', 'chili'],
    origin: { location: 'malaysia', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore', 'indonesia'],
    description: '马来西亚炒面，印度穆斯林的创造，用辣酱和番茄酱调味。'
  },
  {
    id: 'roti-canai',
    name: '印度煎饼',
    alias: ['印度飞饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'malaysia', time: { display: '19世纪' } },
    spreads: [
      { from: 'india', to: 'malaysia', time: { display: '19世纪' }, via: '印度移民' }
    ],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来西亚早餐，印度移民带来的扁平面饼，配咖喱蘸酱。'
  },
  {
    id: 'nasi-lemak',
    name: '椰浆饭',
    category: 'dish',
    ingredients: ['rice', 'coconut'],
    origin: { location: 'malaysia', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来西亚国菜，椰浆煮饭配江鱼仔、花生和参巴酱。'
  },
  {
    id: 'char-kway-teow',
    name: '炒粿条',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'malaysia', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '槟城著名小吃，宽米粉配血蛤和腊肠大火快炒。'
  },
  {
    id: 'hainanese-chicken-rice',
    name: '海南鸡饭',
    category: 'dish',
    ingredients: ['rice', 'chicken'],
    origin: { location: 'china', time: { display: '近代' } },
    spreads: [
      { from: 'china', to: 'singapore', time: { display: '20世纪' } }
    ],
    currentRegions: ['singapore', 'malaysia', 'china'],
    description: '海南移民带到南洋的鸡饭，新加坡将其发扬光大成为国菜。'
  },
  {
    id: 'chili-crab',
    name: '辣椒螃蟹',
    category: 'dish',
    ingredients: ['chili'],
    origin: { location: 'singapore', time: { display: '1950年代' } },
    spreads: [],
    currentRegions: ['singapore'],
    description: '新加坡国菜，番茄辣椒酱焖螃蟹，配馒头蘸酱汁。'
  },
  {
    id: 'bak-kut-teh',
    name: '肉骨茶',
    category: 'dish',
    ingredients: ['garlic', 'sichuan-pepper'],
    origin: { location: 'malaysia', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '福建移民创造的药材炖排骨汤，有新马两种流派。'
  },

  // ========== 更多印度菜 ==========
  {
    id: 'biryani',
    name: '印度香饭',
    alias: ['比尔亚尼'],
    category: 'dish',
    ingredients: ['rice', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '莫卧儿时期' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '近代' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east'],
    description: '印度最著名的米饭料理，莫卧儿宫廷美食，海得拉巴和勒克瑙风格最有名。'
  },
  {
    id: 'butter-chicken',
    name: '黄油鸡',
    alias: ['奶油鸡'],
    category: 'dish',
    ingredients: ['tomato', 'ginger'],
    origin: { location: 'india', time: { display: '1950年代' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '德里Moti Mahal餐厅发明，奶油番茄酱配坦杜里鸡，全球最受欢迎的印度菜。'
  },
  {
    id: 'palak-paneer',
    name: '菠菜奶酪',
    category: 'dish',
    ingredients: ['spinach'],
    origin: { location: 'india', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['india'],
    description: '北印度素食名菜，菠菜泥配印度奶酪块。'
  },
  {
    id: 'dal',
    name: '豆泥糊',
    alias: ['达尔'],
    category: 'dish',
    ingredients: ['lentil', 'cumin', 'turmeric'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'pakistan', 'nepal'],
    description: '印度日常主食，各种扁豆煮成的糊，是蛋白质的主要来源。'
  },
  {
    id: 'dosa',
    name: '印度薄饼',
    alias: ['多萨'],
    category: 'staple',
    ingredients: ['rice', 'lentil'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'malaysia', 'singapore'],
    description: '南印度发酵米饼，脆薄如纸，配椰子酱和三巴酱。'
  },
  {
    id: 'idli',
    name: '蒸米糕',
    alias: ['伊德利'],
    category: 'staple',
    ingredients: ['rice', 'lentil'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'sri-lanka'],
    description: '南印度早餐，发酵米糊蒸成的白色软糕。'
  },
  {
    id: 'sambar',
    name: '桑巴尔',
    category: 'dish',
    ingredients: ['lentil', 'tamarind'],
    origin: { location: 'india', time: { display: '17世纪' } },
    spreads: [],
    currentRegions: ['india', 'sri-lanka'],
    description: '南印度扁豆蔬菜汤，罗望子调味，配多萨和伊德利。'
  },
  {
    id: 'korma',
    name: '科尔玛',
    category: 'dish',
    ingredients: ['coconut', 'almond'],
    origin: { location: 'india', time: { display: '莫卧儿时期' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '莫卧儿宫廷菜，奶油坚果酱炖肉，口味温和适合初尝印度菜者。'
  },
  {
    id: 'vindaloo',
    name: '温达卢',
    category: 'dish',
    ingredients: ['chili', 'vinegar'],
    origin: { location: 'india', time: { display: '葡萄牙殖民时期' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '果阿的葡印融合菜，醋和辣椒腌肉，以极辣闻名。'
  },
  {
    id: 'gulab-jamun',
    name: '甜球',
    alias: ['古拉布贾蒙'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'india', time: { display: '莫卧儿时期' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度甜点之王，奶球油炸后浸入玫瑰糖浆。'
  },
  {
    id: 'kheer',
    name: '印度米布丁',
    alias: ['克希尔'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度传统甜品，牛奶煮米配豆蔻和坚果。'
  },
  {
    id: 'lassi',
    name: '拉西',
    category: 'beverage',
    ingredients: ['mango'],
    origin: { location: 'india', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度酸奶饮料，芒果拉西最受欢迎，是消暑解辣的良品。'
  },
  {
    id: 'chai',
    name: '印度奶茶',
    alias: ['马萨拉茶'],
    category: 'beverage',
    ingredients: ['tea', 'ginger', 'cardamom'],
    origin: { location: 'india', time: { display: '英国殖民时期' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '印度香料奶茶，英国推广茶叶种植后与本土香料结合的产物。'
  },

  // ========== 更多中东菜 ==========
  {
    id: 'shawarma',
    name: '沙瓦尔玛',
    alias: ['中东烤肉'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'turkey', time: { display: '奥斯曼时期' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '19世纪' } },
      { from: 'middle-east', to: 'europe', time: { display: '20世纪' } }
    ],
    currentRegions: ['middle-east', 'europe', 'usa'],
    description: '旋转烤肉的中东变体，配皮塔饼和酱料，是街头快餐的代表。'
  },
  {
    id: 'falafel',
    name: '法拉费尔',
    alias: ['炸鹰嘴豆饼'],
    category: 'dish',
    ingredients: ['chickpea', 'cumin'],
    origin: { location: 'egypt', time: { display: '古代' } },
    spreads: [
      { from: 'egypt', to: 'middle-east', time: { display: '中世纪' } }
    ],
    currentRegions: ['middle-east', 'israel', 'europe'],
    description: '中东素食经典，炸鹰嘴豆球配皮塔饼和塔希尼酱。'
  },
  {
    id: 'baba-ganoush',
    name: '烤茄泥',
    alias: ['巴巴甘努什'],
    category: 'dish',
    ingredients: ['eggplant', 'sesame', 'garlic'],
    origin: { location: 'lebanon', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩烤茄泥，配芝麻酱和橄榄油，与皮塔饼同食。'
  },
  {
    id: 'tabbouleh',
    name: '塔布勒沙拉',
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'parsley'],
    origin: { location: 'lebanon', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩碎小麦沙拉，大量欧芹配番茄和薄荷，清新健康。'
  },
  {
    id: 'fattoush',
    name: '法图什沙拉',
    category: 'dish',
    ingredients: ['tomato', 'cucumber'],
    origin: { location: 'lebanon', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩面包沙拉，烤皮塔饼碎配新鲜蔬菜和酸橙汁。'
  },
  {
    id: 'kibbeh',
    name: '克贝',
    alias: ['肉丸'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'lebanon', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['lebanon', 'syria', 'iraq'],
    description: '黎凡特的碎小麦肉丸，生食、炸或烤各有风味。'
  },
  {
    id: 'mansaf',
    name: '曼萨夫',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'middle-east', time: { display: '贝都因传统' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '约旦国菜，羊肉配酸奶酱和米饭，贝都因人的待客之道。'
  },
  {
    id: 'baklava',
    name: '果仁蜜饼',
    alias: ['巴克拉瓦'],
    category: 'dessert',
    ingredients: ['pistachio', 'walnut'],
    origin: { location: 'turkey', time: { display: '奥斯曼时期' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '近代' } },
      { from: 'turkey', to: 'greece', time: { display: '近代' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'greece'],
    description: '中东甜点皇后，层层酥皮夹坚果淋蜂蜜，极度甜腻。'
  },
  {
    id: 'kunafa',
    name: '库纳法',
    alias: ['卡达伊夫'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'middle-east', time: { display: '奥斯曼时期' } },
    spreads: [],
    currentRegions: ['middle-east', 'turkey'],
    description: '中东芝士甜点，面丝包裹芝士烤制后淋糖浆，纳布卢斯版最有名。'
  },
  {
    id: 'turkish-coffee',
    name: '土耳其咖啡',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'turkey', time: { display: '16世纪' } },
    spreads: [
      { from: 'turkey', to: 'europe', time: { display: '17世纪' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'greece'],
    description: '细研咖啡粉煮制的浓咖啡，是咖啡传入欧洲的先驱。'
  },

  // ========== 更多欧洲菜 ==========
  {
    id: 'moussaka',
    name: '穆萨卡',
    category: 'dish',
    ingredients: ['eggplant', 'tomato'],
    origin: { location: 'greece', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['greece', 'turkey'],
    description: '希腊版千层面，茄子、肉末和白酱层层叠加烤制。'
  },
  {
    id: 'souvlaki',
    name: '苏夫拉基',
    alias: ['希腊烤肉串'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'greece', time: { display: '古代' } },
    spreads: [],
    currentRegions: ['greece'],
    description: '希腊烤肉串，配皮塔饼和酸奶酱，街头快餐的代表。'
  },
  {
    id: 'paella-valenciana',
    name: '瓦伦西亚海鲜饭',
    category: 'dish',
    ingredients: ['rice', 'saffron'],
    origin: { location: 'spain', time: { display: '15世纪' } },
    spreads: [],
    currentRegions: ['spain'],
    description: '西班牙最著名的米饭料理，用藏红花调色，传统版用兔肉和蜗牛。'
  },
  {
    id: 'gazpacho',
    name: '西班牙冷汤',
    alias: ['加斯帕乔'],
    category: 'dish',
    ingredients: ['tomato', 'cucumber', 'garlic'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['spain', 'portugal'],
    description: '安达卢西亚冷汤，番茄和蔬菜打成的冰凉浓汤，夏日消暑佳品。'
  },
  {
    id: 'churros',
    name: '吉拿棒',
    alias: ['西班牙油条'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'south-america', 'usa'],
    description: '西班牙传统甜点，条状面团油炸后蘸巧克力酱。'
  },
  {
    id: 'croissant',
    name: '可颂',
    alias: ['牛角包'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '17世纪' } },
    spreads: [
      { from: 'austria', to: 'france', time: { display: '19世纪' } }
    ],
    currentRegions: ['france', 'europe', 'usa'],
    description: '起源于维也纳的新月形酥皮面包，在法国发扬光大成为早餐标配。'
  },
  {
    id: 'baguette',
    name: '法棍',
    alias: ['法式长棍面包'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '19世纪' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '法国的象征，长条形硬皮面包，联合国非物质文化遗产。'
  },
  {
    id: 'quiche',
    name: '法式咸派',
    alias: ['洛林咸派'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '16世纪' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '洛林地区的蛋奶咸派，配培根和芝士，是法式料理的经典。'
  },
  {
    id: 'ratatouille',
    name: '普罗旺斯炖菜',
    alias: ['料理鼠王'],
    category: 'dish',
    ingredients: ['tomato', 'eggplant', 'zucchini'],
    origin: { location: 'france', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['france'],
    description: '普罗旺斯蔬菜炖菜，因皮克斯动画电影而闻名世界。'
  },
  {
    id: 'coq-au-vin',
    name: '红酒炖鸡',
    category: 'dish',
    ingredients: ['grape', 'mushroom'],
    origin: { location: 'france', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典家常菜，鸡肉用勃艮第红酒慢炖。'
  },
  {
    id: 'beef-bourguignon',
    name: '勃艮第红酒炖牛肉',
    category: 'dish',
    ingredients: ['grape', 'carrot', 'onion'],
    origin: { location: 'france', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典炖菜，牛肉用红酒慢炖数小时。'
  },
  {
    id: 'escargot',
    name: '法式蜗牛',
    category: 'dish',
    ingredients: ['garlic', 'parsley'],
    origin: { location: 'france', time: { display: '古罗马' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国前菜经典，蜗牛配蒜香欧芹黄油烤制。'
  },
  {
    id: 'schnitzel',
    name: '维也纳炸肉排',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '19世纪' } },
    spreads: [
      { from: 'austria', to: 'germany', time: { display: '近代' } }
    ],
    currentRegions: ['austria', 'germany'],
    description: '奥地利国菜，薄牛肉裹面包糠油炸，德国版常用猪肉。'
  },
  {
    id: 'bratwurst',
    name: '德国烤肠',
    category: 'dish',
    ingredients: [],
    origin: { location: 'germany', time: { display: '14世纪' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国香肠的代表，纽伦堡和图林根各有特色。'
  },
  {
    id: 'sauerkraut',
    name: '德国酸菜',
    category: 'preserved',
    ingredients: ['cabbage'],
    origin: { location: 'germany', time: { display: '中世纪' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['germany', 'usa', 'poland'],
    description: '发酵卷心菜，德国香肠的经典配菜，富含益生菌。'
  },
  {
    id: 'pierogi',
    name: '波兰饺子',
    category: 'dish',
    ingredients: ['wheat', 'potato'],
    origin: { location: 'poland', time: { display: '13世纪' } },
    spreads: [
      { from: 'poland', to: 'usa', time: { display: '19世纪' } }
    ],
    currentRegions: ['poland', 'usa'],
    description: '东欧饺子，有甜咸两种馅料，圣诞节传统食物。'
  },
  {
    id: 'borscht',
    name: '罗宋汤',
    alias: ['甜菜汤'],
    category: 'dish',
    ingredients: ['beet', 'cabbage'],
    origin: { location: 'russia', time: { display: '中世纪' } },
    spreads: [
      { from: 'russia', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['russia', 'ukraine', 'poland'],
    description: '东欧甜菜汤，鲜红色的酸甜汤品，配酸奶油。'
  },
  {
    id: 'beef-stroganoff',
    name: '俄式牛柳',
    alias: ['斯特罗加诺夫牛肉'],
    category: 'dish',
    ingredients: ['mushroom'],
    origin: { location: 'russia', time: { display: '19世纪' } },
    spreads: [
      { from: 'russia', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['russia', 'usa'],
    description: '俄国贵族菜肴，牛肉条配酸奶油蘑菇酱。'
  },
  {
    id: 'pelmeni',
    name: '俄罗斯饺子',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'russia', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['russia'],
    description: '西伯利亚起源的肉饺，冬季可冷冻保存数月。'
  },

  // ========== 更多美洲菜 ==========
  {
    id: 'tacos',
    name: '塔可',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '近代' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥国民美食，玉米饼包裹各种馅料，种类繁多。'
  },
  {
    id: 'burrito',
    name: '墨西哥卷',
    category: 'dish',
    ingredients: ['wheat', 'rice'],
    origin: { location: 'mexico', time: { display: '近代' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥大卷饼，面粉饼包裹米饭、豆泥和肉类。'
  },
  {
    id: 'guacamole',
    name: '牛油果酱',
    alias: ['鳄梨酱'],
    category: 'condiment',
    ingredients: ['avocado', 'tomato', 'chili'],
    origin: { location: 'mexico', time: { display: '阿兹特克时期' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥牛油果酱，阿兹特克人的发明，配玉米片食用。'
  },
  {
    id: 'pozole',
    name: '墨西哥玉米肉汤',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '阿兹特克时期' } },
    spreads: [],
    currentRegions: ['mexico'],
    description: '墨西哥传统汤品，玉米粒配猪肉，节日必备菜肴。'
  },
  {
    id: 'mole',
    name: '墨西哥酱',
    alias: ['莫莱酱'],
    category: 'condiment',
    ingredients: ['chili', 'chocolate'],
    origin: { location: 'mexico', time: { display: '殖民时期' } },
    spreads: [],
    currentRegions: ['mexico'],
    description: '墨西哥复合酱料，混合辣椒、巧克力等20多种食材，瓦哈卡黑酱最著名。'
  },
  {
    id: 'ceviche',
    name: '酸橘汁腌鱼',
    alias: ['塞维切'],
    category: 'dish',
    ingredients: ['lemon', 'chili'],
    origin: { location: 'peru', time: { display: '西班牙殖民前' } },
    spreads: [
      { from: 'peru', to: 'south-america', time: { display: '近代' } }
    ],
    currentRegions: ['peru', 'ecuador', 'mexico'],
    description: '秘鲁国菜，酸橘汁"烹饪"的生鱼，拉美沿海地区都有变体。'
  },
  {
    id: 'empanada',
    name: '馅饼',
    alias: ['恩帕纳达'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期' } }
    ],
    currentRegions: ['spain', 'argentina', 'chile'],
    description: '西班牙传到南美的馅饼，阿根廷和智利各有风格。'
  },
  {
    id: 'asado',
    name: '阿根廷烤肉',
    category: 'dish',
    ingredients: [],
    origin: { location: 'argentina', time: { display: '殖民时期' } },
    spreads: [],
    currentRegions: ['argentina', 'uruguay'],
    description: '阿根廷烤肉传统，潘帕斯牛仔的文化遗产，周末家庭聚会必备。'
  },
  {
    id: 'feijoada',
    name: '巴西黑豆饭',
    category: 'dish',
    ingredients: ['black-bean'],
    origin: { location: 'brazil', time: { display: '殖民时期' } },
    spreads: [],
    currentRegions: ['brazil'],
    description: '巴西国菜，黑豆炖猪肉配米饭，源自奴隶的食物。'
  },
  {
    id: 'poutine',
    name: '肉汁奶酪薯条',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'canada', time: { display: '1950年代' } },
    spreads: [],
    currentRegions: ['canada'],
    description: '魁北克的发明，薯条配奶酪块和肉汁，加拿大国民美食。'
  },
  {
    id: 'clam-chowder',
    name: '蛤蜊浓汤',
    alias: ['新英格兰浓汤'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '新英格兰奶油蛤蜊汤，旧金山酸面包碗盛装的版本最有名。'
  },
  {
    id: 'bbq-ribs',
    name: '美式烤肋排',
    category: 'dish',
    ingredients: [],
    origin: { location: 'usa', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国南方烧烤的代表，德州、堪萨斯城各有流派。'
  },
  {
    id: 'buffalo-wings',
    name: '水牛城鸡翅',
    category: 'dish',
    ingredients: ['chicken', 'chili'],
    origin: { location: 'usa', time: { display: '1964年' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '纽约水牛城的发明，辣酱炸鸡翅配蓝纹芝士酱。'
  },
  {
    id: 'mac-and-cheese',
    name: '芝士通心粉',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '18世纪' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国经典舒适食物，杰斐逊总统从欧洲带回的食谱。'
  },

  // ========== 更多甜点 ==========
  {
    id: 'tiramisu',
    name: '提拉米苏',
    category: 'dessert',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '1960年代' } },
    spreads: [],
    currentRegions: ['italy', 'europe', 'usa'],
    description: '意大利甜点明星，咖啡浸泡的手指饼干配马斯卡彭奶酪。'
  },
  {
    id: 'creme-brulee',
    name: '焦糖布丁',
    alias: ['法式焦糖布蕾'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'france', time: { display: '17世纪' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '法式经典甜点，香草蛋奶冻上覆焦糖脆层。'
  },
  {
    id: 'panna-cotta',
    name: '意式奶冻',
    alias: ['奶油布丁'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'italy', time: { display: '近代' } },
    spreads: [],
    currentRegions: ['italy'],
    description: '皮埃蒙特的甜点，奶油凝冻配水果酱或焦糖。'
  },
  {
    id: 'cheesecake',
    name: '芝士蛋糕',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'greece', time: { display: '古代' } },
    spreads: [
      { from: 'greece', to: 'usa', time: { display: '近代' } }
    ],
    currentRegions: ['usa', 'japan', 'europe'],
    description: '起源于古希腊，纽约芝士蛋糕和日式轻芝士蛋糕各有特色。'
  },
  {
    id: 'macaron',
    name: '马卡龙',
    category: 'dessert',
    ingredients: ['almond'],
    origin: { location: 'france', time: { display: '16世纪' } },
    spreads: [],
    currentRegions: ['france', 'japan'],
    description: '法式夹心饼干，拉杜丽和皮埃尔·埃尔梅使其成为奢侈品。'
  },
  {
    id: 'crepe',
    name: '法式薄饼',
    alias: ['可丽饼'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '中世纪' } },
    spreads: [],
    currentRegions: ['france', 'japan'],
    description: '布列塔尼的传统，薄如纸的煎饼可配甜或咸馅料。'
  },
  {
    id: 'gelato',
    name: '意式冰淇淋',
    category: 'dessert',
    ingredients: [],
    origin: { location: 'italy', time: { display: '文艺复兴' } },
    spreads: [],
    currentRegions: ['italy', 'europe'],
    description: '意大利冰淇淋，比美式冰淇淋更致密绵滑，脂肪含量更低。'
  },
  {
    id: 'mochi',
    name: '麻糬',
    alias: ['年糕'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '古代' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本糯米甜点，新年必备食物，麻糬冰淇淋风靡全球。'
  },
  {
    id: 'dorayaki',
    name: '铜锣烧',
    category: 'dessert',
    ingredients: ['wheat', 'adzuki-bean'],
    origin: { location: 'japan', time: { display: '大正时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本和菓子，两片松饼夹红豆馅，哆啦A梦的最爱。'
  },
  {
    id: 'tangyuan',
    name: '汤圆',
    alias: ['元宵'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '宋代' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代' } }
    ],
    currentRegions: ['china', 'taiwan', 'southeast-asia'],
    description: '元宵节传统食物，糯米团子包芝麻或花生馅。'
  },
  {
    id: 'egg-tart',
    name: '蛋挞',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'portugal', time: { display: '中世纪' } },
    spreads: [
      { from: 'portugal', to: 'china', time: { display: '殖民时期' } }
    ],
    currentRegions: ['portugal', 'china', 'malaysia'],
    description: '葡式蛋挞传入澳门后改良，港式蛋挞自成一派。'
  },
  {
    id: 'shaved-ice',
    name: '刨冰',
    alias: ['绵绵冰'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'china', time: { display: '唐代' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '平安时代' } }
    ],
    currentRegions: ['taiwan', 'japan', 'korea'],
    description: '亚洲夏季甜品，台湾芒果冰、日本刨冰、韩国红豆冰各有特色。'
  }
];
