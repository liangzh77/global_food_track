import { Food } from '../models/DataModels';

export const FOODS_DATA: Food[] = [
  // ========== 主食 ==========
  {
    id: 'bread',
    name: '面包',
    nameEn: 'Bread',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'egypt', time: { year: -4000, display: '公元前4000年左右', displayEn: '4000 BCE' } },
    spreads: [
      { from: 'egypt', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'europe', to: 'north-america', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['europe', 'north-america', 'middle-east', 'australia'],
    description: '西方文明的主食，古埃及人发明了发酵面包，不同地区发展出法棍、吐司等多种形式。',
    descriptionEn: 'One of the oldest processed foods, originating from ancient Egypt and spread worldwide through various cultures.'
  },
  {
    id: 'noodles',
    name: '面条',
    nameEn: 'Noodles',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年左右', displayEn: '2000 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '9世纪', displayEn: '9th century' }, via: '遣唐使', viaEn: 'Japanese envoys to Tang China' },
      { from: 'asia', to: 'europe', time: { display: '13世纪', displayEn: '13th century' }, via: '丝绸之路', viaEn: 'Silk Road' }
    ],
    currentRegions: ['china', 'japan', 'italy', 'korea', 'vietnam'],
    description: '中国发明的主食，青海喇家遗址发现4000年前的面条，传遍全球发展出拉面、乌冬、意面等。',
    descriptionEn: 'Long thin strips of dough, originated in China and became a staple across Asia.'
  },
  {
    id: 'rice-cooked',
    name: '米饭',
    nameEn: 'Cooked Rice',
    alias: ['白饭'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -7000, display: '公元前7000年', displayEn: '7000 BCE' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'china', to: 'japan', time: { display: '公元前300年', displayEn: '300 BCE' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'india', 'southeast-asia'],
    description: '亚洲最基本的主食形式，养活全球一半以上人口。',
    descriptionEn: 'Steamed or boiled rice, the staple food for half of the world\'s population.'
  },
  {
    id: 'dumpling',
    name: '饺子',
    nameEn: 'Dumpling',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '东汉末年（约公元200年）', displayEn: '200 CE' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '唐代', displayEn: 'Tang Dynasty' } },
      { from: 'china', to: 'russia', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['china', 'korea', 'japan', 'russia', 'poland'],
    description: '张仲景发明的食物，中国春节传统美食，传播形成饺子、锅贴、俄罗斯饺子等变体。',
    descriptionEn: 'Dough wrapped around filling, a traditional Chinese food that spread along the Silk Road.'
  },
  {
    id: 'tortilla',
    name: '玉米饼',
    nameEn: 'Tortilla',
    alias: ['塔可饼'],
    category: 'staple',
    ingredients: ['corn'],
    origin: { location: 'mesoamerica', time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['mexico', 'usa', 'south-america'],
    description: '中美洲文明的主食，是墨西哥塔可、卷饼的基础。',
    descriptionEn: 'Thin flatbread made from corn or wheat, central to Mexican cuisine.'
  },
  {
    id: 'congee',
    name: '粥',
    nameEn: 'Congee',
    alias: ['稀饭', '白粥'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -2500, display: '公元前2500年左右', displayEn: '2500 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '唐代', displayEn: 'Tang Dynasty' } },
      { from: 'china', to: 'southeast-asia', time: { display: '宋代', displayEn: 'Song Dynasty' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'vietnam', 'thailand'],
    description: '中国传统主食，煮至米粒糊化成粥状，广东皮蛋瘦肉粥、潮汕白粥各有特色。',
    descriptionEn: 'Rice porridge, a comfort food across East and Southeast Asia.'
  },
  {
    id: 'mantou',
    name: '馒头',
    nameEn: 'Steamed Bun',
    alias: ['馍'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '三国时期（约220年）', displayEn: 'Three Kingdoms period (around 220)' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '唐代', displayEn: 'Tang Dynasty' } }
    ],
    currentRegions: ['china'],
    description: '相传诸葛亮发明，中国北方的主食，蒸制的发酵面食。',
    descriptionEn: 'Chinese steamed bread, a staple in northern China since the Three Kingdoms period.'
  },
  {
    id: 'baozi',
    name: '包子',
    nameEn: 'Baozi',
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '宋代（约960年）', displayEn: 'Song Dynasty (around 960)' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '明代', displayEn: 'Ming Dynasty' } },
      { from: 'china', to: 'southeast-asia', time: { display: '清代', displayEn: 'Qing Dynasty' } }
    ],
    currentRegions: ['china', 'japan', 'taiwan', 'singapore'],
    description: '中国传统面点，有肉馅和甜馅之分，狗不理包子、南翔小笼包闻名遐迩。',
    descriptionEn: 'Filled Chinese steamed bun, popular throughout China and beyond.'
  },
  {
    id: 'roti',
    name: '印度烤饼',
    nameEn: 'Roti',
    alias: ['烙饼', '薄饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'india', time: { year: -2500, display: '公元前2500年', displayEn: '2500 BCE' } },
    spreads: [
      { from: 'india', to: 'southeast-asia', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'india', to: 'caribbean', time: { display: '19世纪', displayEn: '19th century' }, via: '印度移民', viaEn: 'Indian immigrants' }
    ],
    currentRegions: ['india', 'pakistan', 'malaysia', 'singapore', 'caribbean'],
    description: '南亚的基本主食，无发酵的全麦烤饼，搭配咖喱食用。',
    descriptionEn: 'Indian flatbread, a staple across South Asia and the Caribbean.'
  },
  {
    id: 'naan',
    name: '馕',
    nameEn: 'Naan',
    alias: ['印度馕'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'central-asia', time: { year: -1300, display: '公元前1300年', displayEn: '1300 BCE' } },
    spreads: [
      { from: 'central-asia', to: 'india', time: { display: '莫卧儿时期', displayEn: 'Mughal period' } },
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'pakistan', 'iran', 'uk', 'china'],
    description: '泥炉烤制的发酵面饼，新疆馕和印度馕同源，是丝路文化交流的见证。',
    descriptionEn: 'Leavened flatbread, popular in Central and South Asian cuisines.'
  },
  {
    id: 'pita',
    name: '皮塔饼',
    nameEn: 'Pita',
    alias: ['口袋饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'middle-east', time: { year: -2500, display: '公元前2500年', displayEn: '2500 BCE' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '古代', displayEn: 'Ancient times' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['middle-east', 'greece', 'turkey', 'usa'],
    description: '中东传统面饼，烤制时形成空腔，可以填入各种馅料，是沙瓦尔玛和法拉费尔的载体。',
    descriptionEn: 'Round pocket bread from the Middle East, perfect for wrapping fillings.'
  },
  {
    id: 'couscous',
    name: '古斯古斯',
    nameEn: 'Couscous',
    alias: ['北非小米'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'morocco', time: { display: '公元7世纪', displayEn: '7th century' } },
    spreads: [
      { from: 'morocco', to: 'france', time: { display: '20世纪', displayEn: '20th century' }, via: '移民', viaEn: 'Immigrants' }
    ],
    currentRegions: ['morocco', 'algeria', 'tunisia', 'france'],
    description: '北非传统主食，蒸制的粗麦粉粒，联合国教科文组织非物质文化遗产。',
    descriptionEn: 'Steamed semolina granules, the national dish of several North African countries.'
  },
  {
    id: 'polenta',
    name: '玉米糊',
    nameEn: 'Polenta',
    alias: ['波伦塔'],
    category: 'staple',
    ingredients: ['corn'],
    origin: { location: 'italy', time: { display: '16世纪后', displayEn: '16th century' } },
    spreads: [],
    currentRegions: ['italy', 'austria', 'switzerland'],
    description: '意大利北部传统食物，玉米传入欧洲后取代了古罗马的谷物糊。',
    descriptionEn: 'Italian cornmeal porridge, introduced after Columbus brought corn from the Americas.'
  },
  {
    id: 'risotto',
    name: '意大利烩饭',
    nameEn: 'Risotto',
    alias: ['意式炖饭'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'italy', time: { display: '14世纪', displayEn: '14th century' } },
    spreads: [],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利北部的米食传统，用高汤慢煮至奶油状，米兰烩饭用藏红花调色。',
    descriptionEn: 'Creamy Italian rice dish cooked with broth, a specialty of Northern Italy.'
  },
  {
    id: 'paella',
    name: '西班牙海鲜饭',
    nameEn: 'Paella',
    alias: ['帕埃利亚'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'spain', time: { display: '15世纪', displayEn: '15th century' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'south-america'],
    description: '瓦伦西亚的传统菜肴，阿拉伯人带来的稻米与地中海海鲜结合的产物。',
    descriptionEn: 'Spanish rice dish with saffron, seafood, and meats, originating from Valencia.'
  },
  {
    id: 'biryani',
    name: '印度香饭',
    nameEn: 'Biryani',
    alias: ['比尔亚尼'],
    category: 'staple',
    ingredients: ['rice', 'cumin', 'cinnamon', 'cardamom'],
    origin: { location: 'india', time: { display: '莫卧儿时期（16世纪）', displayEn: '16th century' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '近代', displayEn: 'Modern era' } },
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east', 'uk'],
    description: '波斯烹饪与印度香料的结合，海德拉巴、勒克瑙各有流派，印度节庆必备。',
    descriptionEn: 'Spiced rice dish with meat, a Mughal royal cuisine staple.'
  },
  {
    id: 'soba',
    name: '荞麦面',
    nameEn: 'Soba',
    alias: ['日本荞麦面'],
    category: 'staple',
    ingredients: ['buckwheat'],
    origin: { location: 'japan', time: { display: '江户时代（约1700年）', displayEn: 'Edo period (around 1700)' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本传统面食，荞麦粉制作，冷食热食皆宜，跨年吃荞麦面是日本习俗。',
    descriptionEn: 'Japanese buckwheat noodles, popular since the Edo period.'
  },
  {
    id: 'udon',
    name: '乌冬面',
    nameEn: 'Udon',
    alias: ['乌龙面'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '奈良时代（8世纪）', displayEn: '8th century' } },
    spreads: [],
    currentRegions: ['japan', 'korea'],
    description: '由中国传入的粗面条，�的赞岐乌冬最为著名，口感弹韧。',
    descriptionEn: 'Thick wheat noodles, a Japanese comfort food.'
  },
  {
    id: 'pho',
    name: '越南河粉',
    nameEn: 'Pho',
    alias: ['河粉'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'vietnam', time: { display: '20世纪初', displayEn: 'early 20th century' } },
    spreads: [
      { from: 'vietnam', to: 'usa', time: { display: '1970年代', displayEn: '1970s' }, via: '越南难民', viaEn: '越南难民' },
      { from: 'vietnam', to: 'france', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['vietnam', 'usa', 'france', 'australia'],
    description: '越南国民美食，米粉配牛肉汤，法国殖民与中国移民文化交融的产物。',
    descriptionEn: 'Vietnamese rice noodle soup with beef or chicken broth.'
  },
  {
    id: 'pad-thai',
    name: '泰式炒河粉',
    nameEn: 'Pad Thai',
    alias: ['泰式炒粿条'],
    category: 'staple',
    ingredients: ['rice', 'peanut'],
    origin: { location: 'thailand', time: { display: '1930年代', displayEn: '1930s' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1970年代', displayEn: '1970s' } }
    ],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国政府推广的国民料理，融合中式炒面与泰式风味，是泰国软实力代表。',
    descriptionEn: 'Thai stir-fried rice noodles, a national dish of Thailand.'
  },

  // ========== 菜肴 ==========
  {
    id: 'pizza',
    name: '披萨',
    nameEn: 'Pizza',
    alias: ['比萨'],
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'olive'],
    origin: { location: 'italy', time: { year: 1889, display: '1889年', displayEn: '1889' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '19世纪末', displayEn: 'late 19th century' }, via: '意大利移民', viaEn: 'Italian immigrants' },
      { from: 'usa', to: 'asia', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['italy', 'usa', 'europe', 'asia'],
    description: '那不勒斯的玛格丽塔披萨以意大利王后命名，美国将其发扬光大为全球快餐。',
    descriptionEn: 'Italian flatbread with toppings, now a global favorite.'
  },
  {
    id: 'pasta',
    name: '意大利面',
    nameEn: 'Pasta',
    alias: ['意面'],
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'italy', time: { display: '13世纪左右', displayEn: '13th century' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '19世纪', displayEn: '19th century' }, via: '意大利移民', viaEn: 'Italian immigrants' }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利的代表性主食，配合番茄酱是16世纪后番茄传入意大利的结果。',
    descriptionEn: 'Italian wheat-based noodles in various shapes and sauces.'
  },
  {
    id: 'sushi',
    name: '寿司',
    nameEn: 'Sushi',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '江户时代（约1800年）', displayEn: 'Edo period (around 1800)' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '1960年代', displayEn: '1960s' }, via: '日本移民', viaEn: 'Japanese immigrants' },
      { from: 'usa', to: 'europe', time: { display: '1980年代', displayEn: '1980s' } }
    ],
    currentRegions: ['japan', 'usa', 'europe', 'asia'],
    description: '现代握寿司起源于江户（东京），是日本料理的代表，全球高端餐饮符号。',
    descriptionEn: 'Japanese vinegared rice with seafood, a global culinary icon.'
  },
  {
    id: 'curry',
    name: '咖喱',
    nameEn: 'Curry',
    category: 'dish',
    ingredients: ['turmeric', 'cumin', 'coriander', 'chili', 'ginger', 'garlic'],
    origin: { location: 'india', time: { display: '约公元前2000年', displayEn: '2000 BCE' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '18世纪', displayEn: '18th century' }, via: '英国东印度公司', viaEn: '英国东印度公司' },
      { from: 'india', to: 'japan', time: { year: 1868, display: '1868年', displayEn: '1868' }, via: '英国海军', viaEn: '英国海军' }
    ],
    currentRegions: ['india', 'uk', 'japan', 'thailand', 'malaysia'],
    description: '印度次大陆的烹饪传统，不同地区发展出印度咖喱、日式咖喱、泰式咖喱等变体。',
    descriptionEn: 'Spiced sauce dishes, varying across Indian, Thai, and Japanese cuisines.'
  },
  {
    id: 'hamburger',
    name: '汉堡包',
    nameEn: 'Hamburger',
    alias: ['汉堡'],
    category: 'dish',
    ingredients: ['wheat', 'potato', 'tomato', 'onion'],
    origin: { location: 'usa', time: { display: '19世纪末', displayEn: 'late 19th century' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '20世纪中期', displayEn: 'mid 20th century' } },
      { from: 'usa', to: 'asia', time: { display: '1970年代', displayEn: '1970s' }, via: '麦当劳等快餐连锁', viaEn: '麦当劳等快餐连锁' }
    ],
    currentRegions: ['usa', 'europe', 'asia', 'australia'],
    description: '美国快餐文化的代表，麦当劳将其推广到全球，成为全球化的象征。',
    descriptionEn: 'Ground meat patty in a bun, an American fast food icon.'
  },
  {
    id: 'fried-rice',
    name: '炒饭',
    nameEn: 'Fried Rice',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '隋代（约600年）', displayEn: 'Sui Dynasty (around 600)' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '宋元时期', displayEn: 'Song-Yuan period' } },
      { from: 'china', to: 'usa', time: { display: '19世纪', displayEn: '19th century' }, via: '中国移民', viaEn: 'Chinese immigrants' }
    ],
    currentRegions: ['china', 'southeast-asia', 'usa'],
    description: '扬州炒饭最为著名，各地发展出泰式炒饭、印尼炒饭等变体。',
    descriptionEn: 'Wok-fried rice with ingredients, popular across East and Southeast Asia.'
  },
  {
    id: 'tacos',
    name: '塔可',
    nameEn: 'Tacos',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '古代墨西哥', displayEn: 'Ancient times墨西哥' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥传统食物，玉米饼包裹各种馅料，塔可贝尔将其快餐化推向全球。',
    descriptionEn: 'Mexican corn tortilla filled with various ingredients.'
  },
  {
    id: 'tofu',
    name: '豆腐',
    nameEn: 'Tofu',
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '西汉（约公元前160年）', displayEn: '160 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '奈良时代（8世纪）', displayEn: '8th century' } },
      { from: 'asia', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'usa'],
    description: '相传淮南王刘安发明，东亚素食蛋白质的主要来源，如今成为全球健康食品。',
    descriptionEn: 'Soybean curd, originated in China and essential to East Asian cuisines.'
  },
  {
    id: 'mapo-tofu',
    name: '麻婆豆腐',
    nameEn: 'Mapo Tofu',
    category: 'dish',
    ingredients: ['soybean', 'chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { year: 1862, display: '1862年', displayEn: '1862' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['china', 'japan'],
    description: '四川成都陈麻婆创制，川菜代表作，麻辣鲜香烫的典范。',
    descriptionEn: 'Sichuan spicy tofu dish with minced pork and Doubanjiang.'
  },
  {
    id: 'kung-pao-chicken',
    name: '宫保鸡丁',
    nameEn: 'Kung Pao Chicken',
    alias: ['宫爆鸡丁'],
    category: 'dish',
    ingredients: ['peanut', 'chili'],
    origin: { location: 'china', time: { display: '清代（约1860年）', displayEn: 'Qing Dynasty (around 1860)' } },
    spreads: [
      { from: 'china', to: 'usa', time: { display: '20世纪', displayEn: '20th century' }, via: '中餐馆', viaEn: '中餐馆' }
    ],
    currentRegions: ['china', 'usa'],
    description: '以清代四川总督丁宝桢命名，美式中餐的代表菜，全球知名度最高的川菜。',
    descriptionEn: 'Classic Sichuan stir-fry with chicken, peanuts, and chilies.'
  },
  {
    id: 'peking-duck',
    name: '北京烤鸭',
    nameEn: 'Peking Duck',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '明代（约1400年）', displayEn: 'Ming Dynasty (around 1400)' } },
    spreads: [
      { from: 'china', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['china', 'usa', 'europe'],
    description: '中国国宴菜，全聚德和便宜坊两大流派，配薄饼、葱丝、甜面酱食用。',
    descriptionEn: 'Beijing roasted duck with crispy skin, a Chinese imperial dish.'
  },
  {
    id: 'dim-sum',
    name: '点心',
    nameEn: 'Dim Sum',
    alias: ['粤式点心'],
    category: 'dish',
    ingredients: ['wheat', 'rice'],
    origin: { location: 'china', time: { display: '唐代（约700年）', displayEn: 'Tang Dynasty (around 700)' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'china', to: 'usa', time: { display: '19世纪', displayEn: '19th century' }, via: '粤籍移民', viaEn: 'Cantonese immigrants' }
    ],
    currentRegions: ['china', 'hong kong', 'usa', 'singapore', 'malaysia'],
    description: '广东饮茶文化的精髓，虾饺、烧卖、叉烧包等小吃配茶点，遍布全球唐人街。',
    descriptionEn: 'Cantonese small dishes served with tea, a Hong Kong tradition.'
  },
  {
    id: 'spring-roll',
    name: '春卷',
    nameEn: 'Spring Roll',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '东晋（约300年）', displayEn: 'Eastern Jin Dynasty (around 300)' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '明清时期', displayEn: 'Ming-Qing period' } },
      { from: 'southeast-asia', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['china', 'vietnam', 'thailand', 'usa'],
    description: '立春食俗的产物，越南春卷、泰国春卷各有特色，美式中餐必备。',
    descriptionEn: 'Crispy rolled appetizer with vegetables or meat filling.'
  },
  {
    id: 'hot-pot',
    name: '火锅',
    nameEn: 'Hot Pot',
    category: 'dish',
    ingredients: ['chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { display: '三国时期', displayEn: 'Three Kingdoms period' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '明代', displayEn: 'Ming Dynasty' } }
    ],
    currentRegions: ['china', 'japan', 'korea', 'thailand'],
    description: '中国的共食文化代表，重庆麻辣火锅、潮汕牛肉火锅、日式涮涮锅各具特色。',
    descriptionEn: 'Communal dining with simmering broth, popular across East Asia.'
  },
  {
    id: 'ramen',
    name: '拉面',
    nameEn: 'Ramen',
    alias: ['日式拉面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '明治时代（约1900年）', displayEn: 'Meiji era (around 1900)' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '1980年代', displayEn: '1980s' } },
      { from: 'japan', to: 'asia', time: { display: '20世纪末', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'china', 'korea'],
    description: '从中国传入演变而来，博多豚骨、札幌味噌、东京酱油各有特色，成为日本国民美食。',
    descriptionEn: 'Japanese wheat noodles in flavorful broth, adapted from Chinese origins.'
  },
  {
    id: 'tempura',
    name: '天妇罗',
    nameEn: 'Tempura',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [],
    currentRegions: ['japan', 'usa'],
    description: '葡萄牙传教士带来的油炸技法与日本料理结合，天妇罗海老是代表。',
    descriptionEn: 'Japanese battered and deep-fried seafood and vegetables.'
  },
  {
    id: 'teriyaki',
    name: '照烧',
    nameEn: 'Teriyaki',
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪中期', displayEn: 'mid 20th century' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '酱油、味醂、糖制成照烧汁，是日式西餐化的代表，在美国广受欢迎。',
    descriptionEn: 'Japanese grilling technique with sweet soy glaze.'
  },
  {
    id: 'sashimi',
    name: '刺身',
    nameEn: 'Sashimi',
    alias: ['生鱼片'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'japan', time: { display: '平安时代（约800年）', displayEn: 'Heian period (around 800)' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'korea'],
    description: '日本料理的精髓，对食材新鲜度要求极高，金枪鱼、三文鱼为上品。',
    descriptionEn: 'Fresh raw fish slices, a Japanese delicacy.'
  },
  {
    id: 'bibimbap',
    name: '拌饭',
    nameEn: 'Bibimbap',
    alias: ['石锅拌饭'],
    category: 'dish',
    ingredients: ['rice', 'sesame', 'chili'],
    origin: { location: 'korea', time: { display: '朝鲜时代', displayEn: 'Joseon Dynasty' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '2000年代', displayEn: '2000s' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国代表性料理，米饭配各色蔬菜和辣酱拌匀食用，全州拌饭最有名。',
    descriptionEn: 'Korean mixed rice bowl with vegetables, meat, and egg.'
  },
  {
    id: 'bulgogi',
    name: '烤肉',
    nameEn: 'Korean BBQ',
    alias: ['韩式烤肉'],
    category: 'dish',
    ingredients: ['soybean', 'sesame', 'pear'],
    origin: { location: 'korea', time: { display: '高句丽时期', displayEn: 'Goguryeo period' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['korea', 'usa', 'japan'],
    description: '腌制牛肉烤制，韩国饮食文化象征，韩流带动全球韩国烤肉热潮。',
    descriptionEn: 'Korean marinated grilled beef, sweet and savory.'
  },
  {
    id: 'tom-yum',
    name: '冬阴功汤',
    nameEn: 'Tom Yum',
    alias: ['酸辣虾汤'],
    category: 'dish',
    ingredients: ['chili', 'lemon', 'ginger'],
    origin: { location: 'thailand', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1980年代', displayEn: '1980s' } }
    ],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国国汤，酸辣鲜香，香茅、南姜、青柠叶是灵魂配料。',
    descriptionEn: 'Thai hot and sour soup with lemongrass and shrimp.'
  },
  {
    id: 'green-curry',
    name: '绿咖喱',
    nameEn: 'Green Curry',
    alias: ['泰式绿咖喱'],
    category: 'dish',
    ingredients: ['chili', 'coconut', 'ginger'],
    origin: { location: 'thailand', time: { display: '20世纪初', displayEn: 'early 20th century' } },
    spreads: [],
    currentRegions: ['thailand', 'usa', 'europe'],
    description: '泰国咖喱代表，用青辣椒制成，配椰浆烹制，比红咖喱更辣。',
    descriptionEn: 'Thai coconut-based curry with green chilies.'
  },
  {
    id: 'satay',
    name: '沙爹',
    nameEn: 'Satay',
    alias: ['沙嗲'],
    category: 'dish',
    ingredients: ['peanut', 'turmeric', 'cumin'],
    origin: { location: 'indonesia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'indonesia', to: 'singapore', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'singapore', 'thailand'],
    description: '东南亚烤串，花生酱蘸料是灵魂，爪哇商人沿街叫卖的产物。',
    descriptionEn: 'Southeast Asian grilled meat skewers with peanut sauce.'
  },
  {
    id: 'nasi-goreng',
    name: '印尼炒饭',
    nameEn: 'Nasi Goreng',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'indonesia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '20世纪', displayEn: '20th century' }, via: '殖民关系', viaEn: 'Colonization关系' }
    ],
    currentRegions: ['indonesia', 'malaysia', 'netherlands'],
    description: '印尼国菜，甜酱油调味是特色，被列入非物质文化遗产。',
    descriptionEn: 'Indonesian fried rice with sweet soy sauce and spices.'
  },
  {
    id: 'laksa',
    name: '叻沙',
    nameEn: 'Laksa',
    category: 'dish',
    ingredients: ['rice', 'coconut', 'chili'],
    origin: { location: 'malaysia', time: { display: '娘惹文化时期', displayEn: 'Peranakan period' } },
    spreads: [
      { from: 'malaysia', to: 'singapore', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来与华人文化融合的产物，椰浆咖喱汤底，槟城虾面叻沙与加东叻沙各有拥趸。',
    descriptionEn: 'Spicy noodle soup popular in Malaysia and Singapore.'
  },
  {
    id: 'poke',
    name: '波奇碗',
    nameEn: 'Poke Bowl',
    alias: ['夏威夷鱼生饭'],
    category: 'dish',
    ingredients: ['rice', 'sesame', 'soybean'],
    origin: { location: 'usa', time: { display: '传统夏威夷', displayEn: 'Traditional Hawaiian' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '2010年代', displayEn: '2010s' } }
    ],
    currentRegions: ['usa', 'europe', 'australia'],
    description: '夏威夷传统生鱼丁，融合日本影响，成为全球健康饮食潮流。',
    descriptionEn: 'Hawaiian raw fish salad bowl, now globally popular.'
  },
  {
    id: 'fish-and-chips',
    name: '炸鱼薯条',
    nameEn: 'Fish and Chips',
    category: 'dish',
    ingredients: ['potato', 'wheat'],
    origin: { location: 'uk', time: { year: 1860, display: '1860年代', displayEn: '1860s' } },
    spreads: [
      { from: 'uk', to: 'australia', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'uk', to: 'new-zealand', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['uk', 'ireland', 'australia', 'new-zealand'],
    description: '英国国民美食，犹太移民带来的炸鱼与比利时/法国薯条的结合。',
    descriptionEn: 'British fried fish with chips, a national comfort food.'
  },
  {
    id: 'shepherd-pie',
    name: '牧羊人派',
    nameEn: 'Shepherd\'s Pie',
    alias: ['农舍派'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'uk', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [
      { from: 'uk', to: 'ireland', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['uk', 'ireland'],
    description: '英国传统菜，肉馅配土豆泥顶层烤制，羊肉版叫牧羊人派，牛肉版叫农舍派。',
    descriptionEn: 'British meat pie topped with mashed potatoes.'
  },
  {
    id: 'roast-beef',
    name: '烤牛肉',
    nameEn: 'Roast Beef',
    alias: ['英式烤肉'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'uk', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['uk'],
    description: '英国周日烤肉传统的核心，配约克郡布丁和烤蔬菜。',
    descriptionEn: 'Traditional British Sunday roast centerpiece.'
  },
  {
    id: 'steak-frites',
    name: '牛排薯条',
    nameEn: 'Steak Frites',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'france', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['france', 'belgium'],
    description: '法国小酒馆经典，煎牛排配炸薯条，巴黎最受欢迎的平民美食。',
    descriptionEn: 'French bistro classic of steak with French fries.'
  },
  {
    id: 'coq-au-vin',
    name: '红酒炖鸡',
    nameEn: 'Coq au Vin',
    category: 'dish',
    ingredients: ['grape'],
    origin: { location: 'france', time: { display: '勃艮第地区传统', displayEn: 'Burgundian tradition' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典乡村菜，用勃艮第红酒慢炖，朱莉亚·柴尔德将其推广到美国。',
    descriptionEn: 'French braised chicken in red wine sauce.'
  },
  {
    id: 'ratatouille',
    name: '普罗旺斯杂烩',
    nameEn: 'Ratatouille',
    alias: ['杂菜煲'],
    category: 'dish',
    ingredients: ['tomato', 'eggplant', 'zucchini', 'onion', 'garlic', 'olive'],
    origin: { location: 'france', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['france'],
    description: '普罗旺斯农民菜，新世界蔬菜与地中海橄榄油的结合，皮克斯电影让其闻名全球。',
    descriptionEn: 'French Provençal stewed vegetable dish.'
  },
  {
    id: 'croissant',
    name: '羊角面包',
    nameEn: 'Croissant',
    alias: ['可颂'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { year: 1683, display: '1683年', displayEn: '1683' } },
    spreads: [
      { from: 'austria', to: 'france', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'france', to: 'europe', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['france', 'europe', 'usa'],
    description: '维也纳起源的月牙面包，法国将其改良为层层酥皮的经典早餐。',
    descriptionEn: 'French crescent-shaped flaky pastry, originally from Austria.'
  },
  {
    id: 'schnitzel',
    name: '炸肉排',
    nameEn: 'Schnitzel',
    alias: ['维也纳炸猪排'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'austria', to: 'germany', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['austria', 'germany'],
    description: '奥地利国菜，意大利米兰炸肉排的变体，裹面包屑油炸。',
    descriptionEn: 'Breaded and fried meat cutlet, Austrian and German classic.'
  },
  {
    id: 'bratwurst',
    name: '德国香肠',
    nameEn: 'Bratwurst',
    alias: ['烤肠'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'germany', time: { display: '14世纪', displayEn: '14th century' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪', displayEn: '19th century' }, via: '德国移民', viaEn: 'German immigrants' }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国有数百种香肠，纽伦堡、图林根各有特色，啤酒节必备。',
    descriptionEn: 'German grilled sausage, a beer garden staple.'
  },
  {
    id: 'pastrami',
    name: '烟熏牛肉',
    nameEn: 'Pastrami',
    alias: ['熏牛肉'],
    category: 'dish',
    ingredients: ['pepper-black', 'coriander'],
    origin: { location: 'romania', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'romania', to: 'usa', time: { display: '19世纪末', displayEn: 'late 19th century' }, via: '犹太移民', viaEn: 'Jewish immigrants' }
    ],
    currentRegions: ['usa'],
    description: '罗马尼亚犹太移民带到纽约，卡茨熟食店的招牌，纽约三明治文化代表。',
    descriptionEn: 'Smoked and seasoned beef, popularized in American delis.'
  },
  {
    id: 'gyros',
    name: '希腊烤肉',
    nameEn: 'Gyros',
    alias: ['旋转烤肉'],
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'onion'],
    origin: { location: 'greece', time: { display: '20世纪', displayEn: '20th century' } },
    spreads: [
      { from: 'greece', to: 'usa', time: { display: '1970年代', displayEn: '1970s' } }
    ],
    currentRegions: ['greece', 'usa'],
    description: '土耳其旋转烤肉的希腊版本，配皮塔饼和酸奶酱，是地中海快餐代表。',
    descriptionEn: 'Greek meat cooked on vertical rotisserie in pita.'
  },
  {
    id: 'falafel',
    name: '法拉费尔',
    nameEn: 'Falafel',
    alias: ['炸豆丸子'],
    category: 'dish',
    ingredients: ['chickpea', 'broad-bean'],
    origin: { location: 'egypt', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'egypt', to: 'middle-east', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['egypt', 'israel', 'lebanon', 'usa'],
    description: '中东素食代表，鹰嘴豆泥炸制，夹皮塔饼配酱汁，以色列国民美食。',
    descriptionEn: 'Middle Eastern deep-fried chickpea balls.'
  },
  {
    id: 'hummus',
    name: '鹰嘴豆泥',
    nameEn: 'Hummus',
    category: 'dish',
    ingredients: ['chickpea', 'sesame', 'olive', 'garlic', 'lemon'],
    origin: { location: 'middle-east', time: { display: '13世纪', displayEn: '13th century' } },
    spreads: [
      { from: 'middle-east', to: 'mediterranean', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'middle-east', to: 'usa', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['middle-east', 'europe', 'usa'],
    description: '中东的经典蘸酱，搭配皮塔饼食用，如今成为全球健康食品。',
    descriptionEn: 'Middle Eastern chickpea dip with tahini.'
  },
  {
    id: 'shawarma',
    name: '沙瓦尔玛',
    nameEn: 'Shawarma',
    alias: ['中东卷饼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'turkey', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '20世纪', displayEn: '20th century' } },
      { from: 'middle-east', to: 'europe', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'germany', 'uk'],
    description: '土耳其发明的旋转烤肉，德国的土耳其烤肉（Döner）是其变体。',
    descriptionEn: 'Middle Eastern meat cooked on a rotating spit.'
  },
  {
    id: 'kebab',
    name: '烤肉串',
    nameEn: 'Kebab',
    alias: ['卡巴布'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'turkey', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '古代', displayEn: 'Ancient times' } },
      { from: 'middle-east', to: 'india', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['turkey', 'iran', 'india', 'pakistan', 'uk'],
    description: '中东和中亚的烧烤传统，印度的坦都里烤鸡是其演变。',
    descriptionEn: 'Grilled meat on skewers, popular across the Middle East and beyond.'
  },
  {
    id: 'tandoori-chicken',
    name: '坦都里烤鸡',
    nameEn: 'Tandoori Chicken',
    category: 'dish',
    ingredients: ['chili', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '1947年', displayEn: '1947' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '1960年代', displayEn: '1960s' } }
    ],
    currentRegions: ['india', 'pakistan', 'uk'],
    description: '旁遮普菜，泥炉高温烤制，英国最受欢迎的印度菜之一。',
    descriptionEn: 'Indian chicken marinated in yogurt and spices, cooked in a tandoor.'
  },
  {
    id: 'butter-chicken',
    name: '黄油鸡',
    nameEn: 'Butter Chicken',
    alias: ['奶油咖喱鸡'],
    category: 'dish',
    ingredients: ['tomato', 'chili', 'ginger', 'garlic'],
    origin: { location: 'india', time: { year: 1950, display: '1950年代', displayEn: '1950s' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '1970年代', displayEn: '1970s' } }
    ],
    currentRegions: ['india', 'uk', 'usa', 'canada'],
    description: '德里Moti Mahal餐厅发明，番茄奶油咖喱汁，全球最受欢迎的印度菜。',
    descriptionEn: 'Creamy Indian tomato-based chicken curry.'
  },
  {
    id: 'samosa',
    name: '萨摩萨',
    nameEn: 'Samosa',
    alias: ['咖喱角'],
    category: 'dish',
    ingredients: ['wheat', 'potato', 'cumin'],
    origin: { location: 'central-asia', time: { display: '10世纪', displayEn: '10th century' } },
    spreads: [
      { from: 'central-asia', to: 'india', time: { display: '13世纪', displayEn: '13th century' } },
      { from: 'india', to: 'africa', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east', 'africa', 'uk'],
    description: '中亚起源的三角炸饺，印度版配土豆馅，是最普及的印度小吃。',
    descriptionEn: 'South Asian fried pastry with spiced filling.'
  },
  {
    id: 'dal',
    name: '豆咖喱',
    nameEn: 'Dal',
    alias: ['扁豆糊'],
    category: 'dish',
    ingredients: ['lentil', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'pakistan', 'nepal', 'bangladesh'],
    description: '印度次大陆的日常主食，各种扁豆炖煮配米饭或烤饼，素食蛋白质来源。',
    descriptionEn: 'South Asian lentil stew, a protein staple.'
  },
  {
    id: 'injera',
    name: '英吉拉',
    nameEn: 'Injera',
    category: 'dish',
    ingredients: ['teff'],
    origin: { location: 'ethiopia', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['ethiopia', 'eritrea'],
    description: '埃塞俄比亚的海绵饼，苔麸发酵制成，用手撕饼蘸酱汁吃。',
    descriptionEn: 'Ethiopian spongy flatbread made from teff flour.'
  },
  {
    id: 'tagine',
    name: '塔吉锅',
    nameEn: 'Tagine',
    category: 'dish',
    ingredients: ['cumin', 'cinnamon', 'ginger'],
    origin: { location: 'morocco', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['morocco', 'algeria', 'tunisia'],
    description: '北非传统炖菜，用圆锥形陶锅慢炖，甜咸结合是特色。',
    descriptionEn: 'North African slow-cooked stew named after its cooking vessel.'
  },
  {
    id: 'jollof-rice',
    name: '朱洛夫饭',
    nameEn: 'Jollof Rice',
    category: 'dish',
    ingredients: ['rice', 'tomato', 'chili'],
    origin: { location: 'west-africa', time: { display: '14世纪', displayEn: '14th century' } },
    spreads: [],
    currentRegions: ['nigeria', 'ghana', 'senegal'],
    description: '西非最著名的菜肴，番茄红油饭，尼日利亚和加纳争论谁的更正宗。',
    descriptionEn: 'West African one-pot rice dish with tomatoes and spices.'
  },
  {
    id: 'ceviche',
    name: '柠汁腌鱼',
    nameEn: 'Ceviche',
    alias: ['酸橘汁腌鱼'],
    category: 'dish',
    ingredients: ['lemon', 'chili', 'onion'],
    origin: { location: 'peru', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'peru', to: 'mexico', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['peru', 'ecuador', 'mexico'],
    description: '秘鲁国菜，新鲜鱼肉用柠檬汁"烹熟"，联合国非物质文化遗产。',
    descriptionEn: 'Latin American raw fish cured in citrus juice.'
  },
  {
    id: 'empanada',
    name: '馅饼',
    nameEn: 'Empanada',
    alias: ['恩潘纳达'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'argentina', 'chile', 'colombia'],
    description: '西班牙传入拉美的半月形馅饼，阿根廷版最有名，各地馅料不同。',
    descriptionEn: 'Spanish and Latin American stuffed pastry.'
  },
  {
    id: 'arepa',
    name: '玉米饼',
    nameEn: 'Tortilla',
    alias: ['阿雷帕'],
    category: 'dish',
    ingredients: ['corn'],
    origin: { location: 'colombia', time: { display: '前哥伦布时期', displayEn: 'Pre-Columbian era' } },
    spreads: [],
    currentRegions: ['venezuela', 'colombia'],
    description: '委内瑞拉和哥伦比亚的玉米饼，可夹馅或配菜，是当地早餐主食。',
    descriptionEn: 'Venezuelan and Colombian corn cake.'
  },
  {
    id: 'feijoada',
    name: '黑豆炖肉',
    nameEn: 'Feijoada',
    category: 'dish',
    ingredients: ['black-bean'],
    origin: { location: 'brazil', time: { display: '殖民时期', displayEn: 'Colonial period' } },
    spreads: [],
    currentRegions: ['brazil', 'portugal'],
    description: '巴西国菜，黑豆炖各种猪肉部位，周六午餐传统。',
    descriptionEn: 'Brazilian black bean stew with pork, the national dish.'
  },
  {
    id: 'churrasco',
    name: '巴西烤肉',
    nameEn: 'Churrasco',
    category: 'dish',
    ingredients: [],
    origin: { location: 'brazil', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [
      { from: 'brazil', to: 'usa', time: { display: '1990年代', displayEn: '1990s' } }
    ],
    currentRegions: ['brazil', 'argentina', 'usa'],
    description: '南美高乔牧人的烧烤传统，巴西烤肉店将各种肉串桌边服务推向全球。',
    descriptionEn: 'Brazilian barbecue-style grilled meat.'
  },
  {
    id: 'poutine',
    name: '肉汁奶酪薯条',
    nameEn: 'Poutine',
    alias: ['普丁'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'canada', time: { year: 1957, display: '1957年', displayEn: '1957' } },
    spreads: [],
    currentRegions: ['canada'],
    description: '魁北克发明的国民美食，薯条配奶酪凝块和肉汁，加拿大文化符号。',
    descriptionEn: 'Canadian fries with gravy and cheese curds.'
  },
  {
    id: 'jambalaya',
    name: '什锦饭',
    nameEn: 'Jambalaya',
    category: 'dish',
    ingredients: ['rice', 'tomato', 'chili'],
    origin: { location: 'usa', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '路易斯安那克里奥尔菜，西班牙海鲜饭与非洲烹饪的融合，新奥尔良特色。',
    descriptionEn: 'Louisiana Creole rice dish with meat and vegetables.'
  },
  {
    id: 'gumbo',
    name: '秋葵浓汤',
    nameEn: 'Gumbo',
    category: 'dish',
    ingredients: ['rice', 'okra'],
    origin: { location: 'usa', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '路易斯安那代表菜，非洲、法国、西班牙文化融合的产物，秋葵或秋葵粉增稠。',
    descriptionEn: 'Louisiana stew with okra and various proteins.'
  },
  {
    id: 'bbq-ribs',
    name: '烧烤肋排',
    nameEn: 'BBQ Ribs',
    alias: ['美式烤肋排'],
    category: 'dish',
    ingredients: ['tomato'],
    origin: { location: 'usa', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国烧烤文化代表，德州、堪萨斯城、孟菲斯、卡罗来纳各有流派。',
    descriptionEn: 'American slow-smoked pork ribs with barbecue sauce.'
  },
  {
    id: 'fried-chicken',
    name: '炸鸡',
    nameEn: 'Fried Chicken',
    alias: ['美式炸鸡'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'usa', to: 'asia', time: { display: '20世纪后期', displayEn: 'late 20th century' }, via: '肯德基', viaEn: 'KFC' }
    ],
    currentRegions: ['usa', 'korea', 'japan'],
    description: '美国南方菜，苏格兰移民与非裔美国人烹饪传统的结合，肯德基将其全球化。',
    descriptionEn: 'Southern American deep-fried breaded chicken.'
  },
  {
    id: 'clam-chowder',
    name: '蛤蜊浓汤',
    nameEn: 'Clam Chowder',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '新英格兰代表菜，奶油汤底配蛤蜊土豆，波士顿特色。',
    descriptionEn: 'American creamy soup with clams, from New England.'
  },
  {
    id: 'hot-dog',
    name: '热狗',
    nameEn: 'Hot Dog',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪末', displayEn: 'late 19th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '德国移民带来的法兰克福香肠夹面包，成为美国棒球场和街头美食符号。',
    descriptionEn: 'American sausage in a bun, a street food classic.'
  },
  {
    id: 'buffalo-wings',
    name: '水牛城鸡翅',
    nameEn: 'Buffalo Wings',
    alias: ['辣鸡翅'],
    category: 'dish',
    ingredients: ['chili'],
    origin: { location: 'usa', time: { year: 1964, display: '1964年', displayEn: '1964' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '纽约州水牛城发明，炸鸡翅配辣酱和蓝纹奶酪，美国酒吧文化代表。',
    descriptionEn: 'American spicy chicken wings from Buffalo, NY.'
  },
  {
    id: 'blt-sandwich',
    name: 'BLT三明治',
    nameEn: 'BLT Sandwich',
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'usa', time: { display: '20世纪初', displayEn: 'early 20th century' } },
    spreads: [],
    currentRegions: ['usa', 'uk'],
    description: '培根、生菜、番茄三明治，美国经典，简单食材的完美组合。',
    descriptionEn: 'American sandwich with bacon, lettuce, and tomato.'
  },
  {
    id: 'club-sandwich',
    name: '总会三明治',
    nameEn: 'Club Sandwich',
    category: 'dish',
    ingredients: ['wheat', 'tomato'],
    origin: { location: 'usa', time: { display: '19世纪末', displayEn: 'late 19th century' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '美国俱乐部的三层三明治，火鸡、培根、生菜、番茄、蛋黄酱的组合。',
    descriptionEn: 'Triple-decker sandwich with chicken, bacon, and vegetables.'
  },
  {
    id: 'mac-and-cheese',
    name: '芝士通心粉',
    nameEn: 'Mac and Cheese',
    alias: ['奶酪意面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['usa', 'uk', 'canada'],
    description: '美国家庭经典，通心粉配奶酪酱，Kraft速食版成为美国文化符号。',
    descriptionEn: 'American pasta with cheese sauce, a comfort food classic.'
  },
  {
    id: 'meat-pie',
    name: '肉馅饼',
    nameEn: 'Meat Pie',
    alias: ['澳式肉派'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'australia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['australia', 'new-zealand'],
    description: '澳大利亚国民小吃，酥皮包裹肉馅，配番茄酱，球赛必备。',
    descriptionEn: 'Australian savory pie with minced meat filling.'
  },
  {
    id: 'vegemite-toast',
    name: 'Vegemite吐司',
    nameEn: 'Vegemite Toast',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'australia', time: { year: 1922, display: '1922年', displayEn: '1922' } },
    spreads: [],
    currentRegions: ['australia'],
    description: '澳大利亚特有的酵母酱抹吐司，爱恨分明的早餐，澳洲文化认同的一部分。',
    descriptionEn: 'Australian toast spread with yeast extract paste.'
  },
  {
    id: 'pavlova',
    name: '帕夫洛娃',
    nameEn: 'Pavlova',
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'new-zealand', time: { display: '1920年代', displayEn: '1920s' } },
    spreads: [],
    currentRegions: ['australia', 'new-zealand'],
    description: '以俄罗斯芭蕾舞者命名的蛋白霜甜点，澳新两国争论发源地。',
    descriptionEn: 'Australian/New Zealand meringue dessert with cream and fruit.'
  },

  // ========== 腌渍发酵 ==========
  {
    id: 'kimchi',
    name: '泡菜',
    nameEn: 'Kimchi',
    alias: ['韩式泡菜'],
    category: 'preserved',
    ingredients: ['cabbage', 'chili', 'garlic', 'ginger'],
    origin: { location: 'korea', time: { display: '三国时代（约公元前37年）', displayEn: '37 BCE' } },
    spreads: [
      { from: 'korea', to: 'japan', time: { display: '20世纪', displayEn: '20th century' } },
      { from: 'korea', to: 'usa', time: { display: '1980年代', displayEn: '1980s' }, via: '韩国移民', viaEn: 'Korean immigrants' }
    ],
    currentRegions: ['korea', 'japan', 'china', 'usa'],
    description: '韩国的国民食品，辣白菜是16世纪辣椒传入后的产物，之前的泡菜不辣。',
    descriptionEn: 'Korean fermented vegetables, essential to Korean cuisine.'
  },
  {
    id: 'sauerkraut',
    name: '酸菜',
    nameEn: 'Sauerkraut',
    alias: ['德国酸菜'],
    category: 'preserved',
    ingredients: ['cabbage'],
    origin: { location: 'china', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'china', to: 'europe', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['germany', 'austria', 'poland', 'france'],
    description: '发酵白菜，可能由蒙古人传入欧洲，德国版配香肠，法国阿尔萨斯版是名菜。',
    descriptionEn: 'German fermented cabbage, a traditional side dish.'
  },
  {
    id: 'miso',
    name: '味噌',
    nameEn: 'Miso',
    category: 'preserved',
    ingredients: ['soybean', 'rice'],
    origin: { location: 'japan', time: { display: '奈良时代（8世纪）', displayEn: '8th century' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的发酵大豆酱，味噌汤是日本人的灵魂，白味噌、赤味噌各有风味。',
    descriptionEn: 'Japanese fermented soybean paste for soup and seasoning.'
  },
  {
    id: 'natto',
    name: '纳豆',
    nameEn: 'Natto',
    category: 'preserved',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '平安时代', displayEn: 'Heian period' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的发酵大豆，粘稠拉丝、气味强烈，爱恨分明的健康食品。',
    descriptionEn: 'Japanese fermented soybeans, an acquired taste.'
  },
  {
    id: 'tempeh',
    name: '天贝',
    nameEn: 'Tempeh',
    category: 'preserved',
    ingredients: ['soybean'],
    origin: { location: 'indonesia', time: { display: '数百年前', displayEn: '数百pre' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '20世纪', displayEn: '20th century' } },
      { from: 'indonesia', to: 'usa', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['indonesia', 'netherlands', 'usa'],
    description: '印尼的发酵大豆饼，菌丝将豆子绑在一起，比豆腐更有嚼劲的植物蛋白。',
    descriptionEn: 'Indonesian fermented soybean cake, high in protein.'
  },
  {
    id: 'pickles',
    name: '腌黄瓜',
    nameEn: 'Pickles',
    alias: ['酸黄瓜'],
    category: 'preserved',
    ingredients: ['cucumber'],
    origin: { location: 'mesopotamia', time: { year: -2400, display: '公元前2400年', displayEn: '2400 BCE' } },
    spreads: [
      { from: 'mesopotamia', to: 'europe', time: { display: '古代', displayEn: 'Ancient times' } }
    ],
    currentRegions: ['usa', 'germany', 'russia', 'poland'],
    description: '人类最古老的保存食品之一，美国汉堡三明治的标配。',
    descriptionEn: 'Cucumbers preserved in brine, popular worldwide.'
  },

  // ========== 小吃 ==========
  {
    id: 'french-fries',
    name: '薯条',
    nameEn: 'French Fries',
    alias: ['炸薯条'],
    category: 'snack',
    ingredients: ['potato'],
    origin: { location: 'belgium', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [
      { from: 'belgium', to: 'france', time: { display: '18世纪', displayEn: '18th century' } },
      { from: 'usa', to: 'europe', time: { display: '20世纪', displayEn: '20th century' }, via: '快餐连锁', viaEn: 'Fast food chains' }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '起源有争议，比利时和法国都声称发明，美国快餐业使其风靡全球。',
    descriptionEn: 'Deep-fried potato strips, a Belgian/French creation.'
  },
  {
    id: 'chips',
    name: '薯片',
    nameEn: 'Chips',
    alias: ['洋芋片'],
    category: 'snack',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { year: 1853, display: '1853年', displayEn: '1853' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '纽约萨拉托加泉发明，据说是为了报复抱怨薯条太厚的顾客。',
    descriptionEn: 'Thin crispy potato slices, a popular snack worldwide.'
  },
  {
    id: 'popcorn',
    name: '爆米花',
    nameEn: 'Popcorn',
    category: 'snack',
    ingredients: ['corn'],
    origin: { location: 'mesoamerica', time: { year: -3600, display: '公元前3600年', displayEn: '3600 BCE' } },
    spreads: [
      { from: 'mesoamerica', to: 'north-america', time: { display: '古代', displayEn: 'Ancient times' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '美洲原住民的传统，美国将其与电影院绑定，成为观影标配。'
  },
  {
    id: 'nachos',
    name: '墨西哥玉米片',
    nameEn: 'Nachos',
    alias: ['纳乔'],
    aliasEn: ['Nacho'],
    category: 'snack',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { year: 1943, display: '1943年', displayEn: '1943' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '1970年代', displayEn: '1970s' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥边境小镇发明，炸玉米片配奶酪和辣椒，美国体育赛事小吃。',
    descriptionEn: 'Invented in a Mexican border town, tortilla chips topped with cheese and peppers, popular at American sports events.'
  },
  {
    id: 'pretzel',
    name: '椒盐卷饼',
    nameEn: 'Pretzel',
    alias: ['普雷结'],
    category: 'snack',
    ingredients: ['wheat'],
    origin: { location: 'germany', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '18世纪', displayEn: '18th century' }, via: '德国移民', viaEn: 'German immigrants' }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国修道院发明的面包，美国版是软的大号版，德国版是脆的小型版。',
    descriptionEn: 'German twisted baked bread, often salted.'
  },
  {
    id: 'onion-rings',
    name: '洋葱圈',
    nameEn: 'Onion Rings',
    category: 'snack',
    ingredients: ['onion', 'wheat'],
    origin: { location: 'usa', time: { display: '20世纪初', displayEn: 'early 20th century' } },
    spreads: [],
    currentRegions: ['usa', 'uk'],
    description: '美国发明的油炸小吃，是汉堡薯条之外的快餐配菜选择。',
    descriptionEn: 'Deep-fried battered onion rings, an American appetizer.'
  },
  {
    id: 'edamame',
    name: '毛豆',
    nameEn: 'Edamame',
    category: 'snack',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '古代', displayEn: 'Ancient times' } }
    ],
    currentRegions: ['japan', 'china', 'usa'],
    description: '未成熟大豆，日式居酒屋标配，如今是全球健康零食。',
    descriptionEn: 'Japanese young soybeans, a healthy snack.'
  },

  // ========== 甜点 ==========
  {
    id: 'chocolate',
    name: '巧克力',
    nameEn: 'Chocolate',
    category: 'dessert',
    ingredients: ['cacao', 'sugarcane'],
    origin: { location: 'switzerland', time: { year: 1847, display: '1847年', displayEn: '1847' } },
    spreads: [
      { from: 'europe', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'europe', to: 'asia', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['switzerland', 'belgium', 'usa', 'germany', 'japan'],
    description: '瑞士人发明了现代固体巧克力，瑞士和比利时巧克力是高品质的代名词。',
    descriptionEn: 'Sweet made from cacao, originated in Mesoamerica.'
  },
  {
    id: 'ice-cream',
    name: '冰淇淋',
    nameEn: 'Ice Cream',
    alias: ['雪糕'],
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'china', time: { display: '唐代（约700年）', displayEn: 'Tang Dynasty (around 700)' } },
    spreads: [
      { from: 'china', to: 'italy', time: { display: '13世纪', displayEn: '13th century' }, via: '马可·波罗?', viaEn: 'Marco Polo?' },
      { from: 'italy', to: 'france', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['usa', 'italy', 'europe', 'asia'],
    description: '中国的冰酪可能是源头，意大利的Gelato和美国的工业冰淇淋各有特色。',
    descriptionEn: 'Frozen dairy dessert, evolved from ancient iced treats.'
  },
  {
    id: 'tiramisu',
    name: '提拉米苏',
    nameEn: 'Tiramisu',
    category: 'dessert',
    ingredients: ['coffee', 'cacao'],
    origin: { location: 'italy', time: { display: '20世纪60年代', displayEn: '20th century' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代', displayEn: '1980s' } }
    ],
    currentRegions: ['italy', 'usa', 'europe', 'asia'],
    description: '威尼托大区发明的咖啡甜点，意大利语意为"带我走"，成为全球最知名甜点。',
    descriptionEn: 'Italian coffee-flavored layered dessert.'
  },
  {
    id: 'cheesecake',
    name: '芝士蛋糕',
    nameEn: 'Cheesecake',
    alias: ['奶酪蛋糕'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'greece', time: { display: '古希腊', displayEn: 'Ancient Greece' } },
    spreads: [
      { from: 'greece', to: 'rome', time: { display: '古罗马', displayEn: 'Ancient Rome' } },
      { from: 'europe', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['usa', 'japan', 'europe'],
    description: '古希腊奥运选手的食物，纽约芝士蛋糕和日式轻芝士各有风格。',
    descriptionEn: 'Creamy cheese-based dessert on a crust.'
  },
  {
    id: 'crepe',
    name: '可丽饼',
    nameEn: 'Crepe',
    alias: ['法式薄饼'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '布列塔尼地区传统', displayEn: 'Breton tradition' } },
    spreads: [
      { from: 'france', to: 'japan', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['france', 'japan'],
    description: '布列塔尼的荞麦咸薄饼演变出的小麦甜薄饼，巴黎街头和日本原宿的人气小吃。',
    descriptionEn: 'Thin French pancake, sweet or savory.'
  },
  {
    id: 'macaron',
    name: '马卡龙',
    nameEn: 'Macaron',
    category: 'dessert',
    ingredients: ['almond', 'sugarcane'],
    origin: { location: 'france', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [
      { from: 'france', to: 'japan', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['france', 'japan', 'usa'],
    description: '意大利传入法国，Ladurée将其改良为夹心版，成为巴黎甜点的象征。',
    descriptionEn: 'French meringue sandwich cookie with filling.'
  },
  {
    id: 'baklava',
    name: '果仁蜜饼',
    nameEn: 'Baklava',
    category: 'dessert',
    ingredients: ['pistachio', 'walnut'],
    origin: { location: 'turkey', time: { display: '奥斯曼帝国时期', displayEn: 'Ottoman Empire period' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '奥斯曼时期', displayEn: 'Ottoman period' } },
      { from: 'turkey', to: 'greece', time: { display: '奥斯曼时期', displayEn: 'Ottoman period' } }
    ],
    currentRegions: ['turkey', 'greece', 'middle-east'],
    description: '层层酥皮夹坚果淋蜂蜜，土耳其和希腊都声称原创，中东各国皆有版本。',
    descriptionEn: 'Middle Eastern layered pastry with nuts and honey.'
  },
  {
    id: 'mochi',
    name: '麻糬',
    nameEn: 'Mochi',
    alias: ['糯米糍'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '奈良时代', displayEn: 'Nara period' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本传统糯米点心，新年必吃镜饼，冰淇淋麻糬是现代变体。',
    descriptionEn: 'Japanese glutinous rice cake, chewy texture.'
  },
  {
    id: 'dango',
    name: '团子',
    nameEn: 'Dango',
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本糯米丸子串，三色团子最有名，赏樱必备甜点。',
    descriptionEn: 'Japanese sweet rice dumplings on a skewer.'
  },
  {
    id: 'dorayaki',
    name: '铜锣烧',
    nameEn: 'Dorayaki',
    category: 'dessert',
    ingredients: ['wheat', 'red-bean'],
    origin: { location: 'japan', time: { display: '大正时代（1914年）', displayEn: 'Taisho era (1914)' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '红豆馅夹两片松饼，因哆啦A梦而闻名全球。'
  },
  {
    id: 'taiyaki',
    name: '鲷鱼烧',
    nameEn: 'Taiyaki',
    category: 'dessert',
    ingredients: ['wheat', 'red-bean'],
    origin: { location: 'japan', time: { year: 1909, display: '1909年', displayEn: '1909' } },
    spreads: [
      { from: 'japan', to: 'korea', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'korea'],
    description: '鱼形红豆饼，日本街头小吃代表，韩国版叫붕어빵。',
    descriptionEn: 'Fish-shaped red bean cake, a representative Japanese street snack. The Korean version is called bungeoppang.'
  },
  {
    id: 'mooncake',
    name: '月饼',
    nameEn: 'Mooncake',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '唐代', displayEn: 'Tang Dynasty' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'vietnam', 'singapore', 'malaysia'],
    description: '中秋节传统食品，广式、苏式、潮式各有特色，五仁和蛋黄莲蓉是经典口味。',
    descriptionEn: 'Chinese pastry for Mid-Autumn Festival.'
  },
  {
    id: 'tangyuan',
    name: '汤圆',
    nameEn: 'Tangyuan',
    alias: ['元宵'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '宋代', displayEn: 'Song Dynasty' } },
    spreads: [],
    currentRegions: ['china', 'taiwan'],
    description: '元宵节传统食品，糯米团子包甜馅，象征团圆。',
    descriptionEn: 'Chinese glutinous rice balls in sweet soup.'
  },
  {
    id: 'egg-tart',
    name: '蛋挞',
    nameEn: 'Egg Tart',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'portugal', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [
      { from: 'portugal', to: 'china', time: { display: '19世纪', displayEn: '19th century' }, via: '澳门', viaEn: 'Macau' },
      { from: 'china', to: 'hong kong', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['portugal', 'china', 'hong kong', 'macau'],
    description: '葡萄牙修道院的发明，澳门葡挞和港式蛋挞是变体。',
    descriptionEn: 'Portuguese custard tart adapted in Hong Kong and Macau.'
  },
  {
    id: 'churros',
    name: '吉事果',
    nameEn: 'Churros',
    alias: ['西班牙油条'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'mexico', 'south-america'],
    description: '西班牙的油炸条，配热巧克力蘸食，拉美各国也很流行。',
    descriptionEn: 'Spanish fried dough pastry, often with chocolate.'
  },
  {
    id: 'flan',
    name: '焦糖布丁',
    nameEn: 'Crème Brûlée',
    alias: ['烤布蕾'],
    category: 'dessert',
    ingredients: ['sugarcane'],
    origin: { location: 'spain', time: { display: '罗马时期', displayEn: 'Roman period' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } },
      { from: 'spain', to: 'philippines', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'mexico', 'philippines', 'south-america'],
    description: '罗马人发明的蛋奶布丁，西班牙和拉美的经典甜点。',
    descriptionEn: 'Spanish caramel custard dessert.'
  },
  {
    id: 'tres-leches',
    name: '三奶蛋糕',
    nameEn: 'Tres Leches Cake',
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'mexico', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['mexico', 'nicaragua', 'south-america'],
    description: '用三种奶（炼乳、淡奶、鲜奶油）浸透的湿润蛋糕，拉美甜点代表。',
    descriptionEn: 'Latin American sponge cake soaked in three milks.'
  },
  {
    id: 'gulab-jamun',
    name: '印度甜球',
    nameEn: 'Gulab Jamun',
    category: 'dessert',
    ingredients: ['sugarcane', 'cardamom'],
    origin: { location: 'india', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '莫卧儿时期', displayEn: 'Mughal period' } }
    ],
    currentRegions: ['india', 'pakistan', 'nepal', 'bangladesh'],
    description: '奶粉面团炸制后浸糖浆，印度最受欢迎的甜点，节日必备。',
    descriptionEn: 'Indian fried dough balls in sugar syrup.'
  },
  {
    id: 'jalebi',
    name: '印度甜卷',
    nameEn: 'Jalebi',
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'middle-east', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'middle-east', to: 'india', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east'],
    description: '螺旋状炸面圈浸糖浆，来自波斯的甜点，印度街头常见。',
    descriptionEn: 'Indian spiral-shaped sweet fried in syrup.'
  },
  {
    id: 'brownie',
    name: '布朗尼',
    nameEn: 'Brownie',
    category: 'dessert',
    ingredients: ['cacao', 'wheat', 'sugarcane'],
    origin: { location: 'usa', time: { year: 1893, display: '1893年', displayEn: '1893' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '芝加哥世博会发明的巧克力方块蛋糕，湿润浓郁是特点。',
    descriptionEn: 'American chocolate baked square, dense and fudgy.'
  },
  {
    id: 'cookie',
    name: '曲奇',
    nameEn: 'Cookie',
    alias: ['饼干'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '17世纪荷兰移民', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '荷兰语"koekje"（小蛋糕）演变而来，巧克力豆曲奇是美国发明。',
    descriptionEn: 'Small baked sweet treat, many varieties worldwide.'
  },
  {
    id: 'donut',
    name: '甜甜圈',
    nameEn: 'Donut',
    alias: ['炸面圈'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'usa', to: 'asia', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['usa', 'japan', 'korea'],
    description: '荷兰移民带来的油炸糕点演变，美国警察与甜甜圈的关联是文化梗。',
    descriptionEn: 'Fried sweet dough, ring-shaped or filled.'
  },
  {
    id: 'pancake',
    name: '煎饼',
    nameEn: 'Pancake',
    alias: ['薄烤饼'],
    category: 'dessert',
    ingredients: ['wheat', 'maple'],
    origin: { location: 'usa', time: { display: '殖民时期', displayEn: 'Colonial period' } },
    spreads: [],
    currentRegions: ['usa', 'canada'],
    description: '美式早餐的代表，配枫糖浆和黄油，是美国家庭周末早餐传统。',
    descriptionEn: 'Flat cake made from batter, breakfast staple.'
  },
  {
    id: 'waffle',
    name: '华夫饼',
    nameEn: 'Waffle',
    alias: ['格子饼'],
    category: 'dessert',
    ingredients: ['wheat', 'sugarcane'],
    origin: { location: 'belgium', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'belgium', to: 'usa', time: { display: '1962年世博会', displayEn: '1962 World Expo' } }
    ],
    currentRegions: ['belgium', 'usa'],
    description: '比利时的两种华夫（布鲁塞尔和列日）都很有名，美国发展出早餐华夫。',
    descriptionEn: 'Grid-patterned batter cake, Belgian origin.'
  },
  {
    id: 'apple-pie',
    name: '苹果派',
    nameEn: 'Apple Pie',
    category: 'dessert',
    ingredients: ['apple', 'wheat', 'cinnamon', 'sugarcane'],
    origin: { location: 'uk', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'uk', to: 'usa', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['usa', 'uk'],
    description: '英国传统甜点，"美国如苹果派"的说法让其成为美国文化符号。',
    descriptionEn: 'American classic dessert with spiced apple filling.'
  },
  {
    id: 'pumpkin-pie',
    name: '南瓜派',
    nameEn: 'Pumpkin Pie',
    category: 'dessert',
    ingredients: ['pumpkin', 'wheat', 'cinnamon', 'sugarcane'],
    origin: { location: 'usa', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['usa', 'canada'],
    description: '美国感恩节传统甜点，南瓜泥配香料的经典组合。',
    descriptionEn: 'American Thanksgiving dessert with spiced pumpkin.'
  },
  {
    id: 'pecan-pie',
    name: '山核桃派',
    nameEn: 'Pecan Pie',
    category: 'dessert',
    ingredients: ['pecan', 'wheat', 'sugarcane'],
    origin: { location: 'usa', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国南方的传统甜点，糖浆和山核桃的甜蜜组合。',
    descriptionEn: 'American Southern dessert with pecans in syrup.'
  },

  // ========== 饮品 ==========
  {
    id: 'beer',
    name: '啤酒',
    nameEn: 'Beer',
    category: 'beverage',
    ingredients: ['barley', 'hop'],
    origin: { location: 'mesopotamia', time: { year: -4000, display: '公元前4000年', displayEn: '4000 BCE' } },
    spreads: [
      { from: 'mesopotamia', to: 'egypt', time: { display: '公元前3000年', displayEn: '3000 BCE' } },
      { from: 'middle-east', to: 'europe', time: { display: '公元前1000年', displayEn: '1000 BCE' } }
    ],
    currentRegions: ['germany', 'usa', 'china', 'brazil', 'uk'],
    description: '人类最古老的酒精饮料之一，苏美尔人留下了最早的啤酒配方，德国啤酒纯净法影响深远。',
    descriptionEn: 'Fermented grain beverage, one of the oldest drinks.'
  },
  {
    id: 'wine',
    name: '葡萄酒',
    nameEn: 'Wine',
    alias: ['红酒'],
    category: 'beverage',
    ingredients: ['grape'],
    origin: { location: 'fertile-crescent', time: { year: -6000, display: '公元前6000年', displayEn: '6000 BCE' } },
    spreads: [
      { from: 'fertile-crescent', to: 'mediterranean', time: { display: '公元前2000年', displayEn: '2000 BCE' } },
      { from: 'italy', to: 'france', time: { display: '公元前600年', displayEn: '600 BCE' } }
    ],
    currentRegions: ['france', 'italy', 'spain', 'usa', 'argentina'],
    description: '与地中海文明紧密相连的饮料，法国波尔多和勃艮第是葡萄酒的圣地。',
    descriptionEn: 'Fermented grape beverage, ancient origins in Georgia.'
  },
  {
    id: 'tea-drink',
    name: '茶饮',
    nameEn: 'Tea',
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'china', time: { year: -2700, display: '公元前2700年左右', displayEn: '2700 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { year: 805, display: '805年', displayEn: '805' } },
      { from: 'china', to: 'uk', time: { year: 1662, display: '1662年', displayEn: '1662' } }
    ],
    currentRegions: ['china', 'india', 'uk', 'japan', 'turkey'],
    description: '中国神农发现茶叶，发展出绿茶、红茶、乌龙茶等，英国下午茶和日本茶道是文化高峰。',
    descriptionEn: 'Infused leaf beverage, originated in China.'
  },
  {
    id: 'coffee-drink',
    name: '咖啡饮品',
    nameEn: 'Coffee',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'ethiopia', time: { display: '15世纪', displayEn: '15th century' } },
    spreads: [
      { from: 'ethiopia', to: 'middle-east', time: { display: '15世纪', displayEn: '15th century' } },
      { from: 'middle-east', to: 'europe', time: { year: 1615, display: '1615年', displayEn: '1615' } }
    ],
    currentRegions: ['usa', 'europe', 'brazil', 'japan', 'korea'],
    description: '从阿拉伯咖啡馆到意式浓缩咖啡再到星巴克，咖啡文化不断演变。',
    descriptionEn: 'Brewed coffee beverage, Ethiopian origins.'
  },
  {
    id: 'espresso',
    name: '意式浓缩',
    nameEn: 'Espresso',
    alias: ['浓缩咖啡'],
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { year: 1884, display: '1884年', displayEn: '1884' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '20世纪后期', displayEn: 'late 20th century' } }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '意大利发明的高压萃取咖啡，是拿铁、卡布奇诺等的基础。',
    descriptionEn: 'Concentrated Italian coffee, base for many drinks.'
  },
  {
    id: 'cappuccino',
    name: '卡布奇诺',
    nameEn: 'Cappuccino',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '20世纪初', displayEn: 'early 20th century' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代', displayEn: '1980s' } }
    ],
    currentRegions: ['italy', 'usa', 'europe'],
    description: '浓缩咖啡配奶泡，名字来自嘉布遣会修士棕色袍子，意大利早餐的选择。',
    descriptionEn: 'Italian espresso with steamed milk foam.'
  },
  {
    id: 'latte',
    name: '拿铁',
    nameEn: 'Latte',
    alias: ['咖啡拿铁'],
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '20世纪', displayEn: '20th century' } },
    spreads: [
      { from: 'italy', to: 'usa', time: { display: '1980年代', displayEn: '1980s' }, via: '星巴克', viaEn: 'Starbucks' }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '意大利语"牛奶咖啡"，浓缩咖啡加大量蒸奶，星巴克的主打产品。',
    descriptionEn: 'Espresso with steamed milk, popular worldwide.'
  },
  {
    id: 'bubble-tea',
    name: '珍珠奶茶',
    nameEn: 'Bubble Tea',
    alias: ['波霸奶茶'],
    category: 'beverage',
    ingredients: ['tea', 'tapioca'],
    origin: { location: 'taiwan', time: { year: 1980, display: '1980年代', displayEn: '1980s' } },
    spreads: [
      { from: 'taiwan', to: 'asia', time: { display: '1990年代', displayEn: '1990s' } },
      { from: 'asia', to: 'usa', time: { display: '2000年代', displayEn: '2000s' } }
    ],
    currentRegions: ['taiwan', 'china', 'japan', 'usa', 'europe'],
    description: '台湾发明的奶茶加粉圆，成为全球年轻人的时尚饮品，带动亚洲奶茶热潮。',
    descriptionEn: 'Taiwanese tea with tapioca pearls.'
  },
  {
    id: 'matcha-latte',
    name: '抹茶拿铁',
    nameEn: 'Matcha Latte',
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'japan', time: { display: '现代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '2000年代', displayEn: '2000s' } }
    ],
    currentRegions: ['japan', 'usa', 'europe'],
    description: '日本抹茶与西式拿铁的结合，星巴克将其推向全球。',
    descriptionEn: 'Japanese green tea powder with milk.'
  },
  {
    id: 'chai',
    name: '印度奶茶',
    nameEn: 'Chai',
    alias: ['玛萨拉茶'],
    category: 'beverage',
    ingredients: ['tea', 'cinnamon', 'cardamom', 'ginger', 'clove'],
    origin: { location: 'india', time: { display: '英国殖民时期', displayEn: 'British colonial period' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } },
      { from: 'india', to: 'usa', time: { display: '1990年代', displayEn: '1990s' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '印度的香料奶茶，用红茶配多种香料煮制，街头茶摊的灵魂。',
    descriptionEn: 'Indian spiced milk tea.'
  },
  {
    id: 'sake',
    name: '清酒',
    nameEn: 'Sake',
    alias: ['日本酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '奈良时代（约700年）', displayEn: 'Nara period (around 700)' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '日本的国酒，米酿造的酒，冷饮热饮皆宜，寿司的绝配。',
    descriptionEn: 'Japanese rice wine, fermented beverage.'
  },
  {
    id: 'soju',
    name: '烧酒',
    nameEn: 'Soju',
    alias: ['韩国烧酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'korea', time: { display: '13世纪', displayEn: '13th century' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国国民酒，蒸馏酒，绿瓶真露是代表，韩国聚餐必备。',
    descriptionEn: 'Korean distilled spirit, clear and versatile.'
  },
  {
    id: 'baijiu',
    name: '白酒',
    nameEn: 'Baijiu',
    alias: ['中国白酒'],
    category: 'beverage',
    ingredients: ['sorghum', 'rice', 'wheat'],
    origin: { location: 'china', time: { display: '元代（约1300年）', displayEn: 'Yuan Dynasty (around 1300)' } },
    spreads: [],
    currentRegions: ['china'],
    description: '中国的国酒，高度蒸馏酒，茅台、五粮液是顶级品牌，中国宴席必备。',
    descriptionEn: 'Chinese distilled spirit from grains.'
  },
  {
    id: 'whiskey',
    name: '威士忌',
    nameEn: 'Whiskey',
    category: 'beverage',
    ingredients: ['barley'],
    origin: { location: 'ireland', time: { display: '12世纪', displayEn: '12th century' } },
    spreads: [
      { from: 'ireland', to: 'scotland', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'uk', to: 'usa', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['scotland', 'ireland', 'usa', 'japan'],
    description: '蒸馏谷物酒，苏格兰威士忌、爱尔兰威士忌、波本各有特色，日本威士忌后起之秀。',
    descriptionEn: 'Distilled grain spirit, aged in barrels.'
  },
  {
    id: 'vodka',
    name: '伏特加',
    nameEn: 'Vodka',
    category: 'beverage',
    ingredients: ['potato', 'wheat'],
    origin: { location: 'russia', time: { display: '14世纪', displayEn: '14th century' } },
    spreads: [
      { from: 'russia', to: 'europe', time: { display: '16世纪', displayEn: '16th century' } }
    ],
    currentRegions: ['russia', 'poland', 'usa'],
    description: '东欧的烈酒，几乎无色无味，是鸡尾酒的基础。',
    descriptionEn: 'Clear distilled spirit, Russian/Polish origins.'
  },
  {
    id: 'rum',
    name: '朗姆酒',
    nameEn: 'Rum',
    category: 'beverage',
    ingredients: ['sugarcane'],
    origin: { location: 'caribbean', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [
      { from: 'caribbean', to: 'usa', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['caribbean', 'usa'],
    description: '加勒比甘蔗蒸馏酒，海盗的传说饮品，莫吉托和朗姆可乐的基础。',
    descriptionEn: 'Distilled spirit from sugarcane, Caribbean origins.'
  },
  {
    id: 'tequila',
    name: '龙舌兰酒',
    nameEn: 'Tequila',
    alias: ['特基拉'],
    category: 'beverage',
    ingredients: ['agave'],
    origin: { location: 'mexico', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥哈利斯科州特产，蓝色龙舌兰蒸馏，玛格丽塔的灵魂。',
    descriptionEn: 'Mexican spirit from blue agave.'
  },
  {
    id: 'champagne',
    name: '香槟',
    nameEn: 'Champagne',
    alias: ['起泡酒'],
    category: 'beverage',
    ingredients: ['grape'],
    origin: { location: 'france', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国香槟区的气泡酒，唐·培里侬修士改良，庆典的代名词。',
    descriptionEn: 'French sparkling wine from Champagne region.'
  },
  {
    id: 'sangria',
    name: '桑格利亚',
    nameEn: 'Sangria',
    alias: ['水果酒'],
    category: 'beverage',
    ingredients: ['grape', 'orange'],
    origin: { location: 'spain', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['spain', 'portugal'],
    description: '西班牙的水果红酒，夏日清凉饮品，加入各种水果和香料。',
    descriptionEn: 'Spanish wine punch with fruit.'
  },
  {
    id: 'lassi',
    name: '拉西',
    nameEn: 'Lassi',
    alias: ['印度酸奶饮'],
    category: 'beverage',
    ingredients: ['mango'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度的酸奶饮品，芒果拉西最受欢迎，消暑解辣的好帮手。',
    descriptionEn: 'Indian yogurt-based drink, sweet or savory.'
  },
  {
    id: 'horchata',
    name: '欧恰塔',
    nameEn: 'Horchata',
    alias: ['米浆'],
    category: 'beverage',
    ingredients: ['rice', 'cinnamon'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'spain', to: 'mexico', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'mexico'],
    description: '西班牙用杏仁做，墨西哥用大米做的甜饮，肉桂调味。',
    descriptionEn: 'Spanish/Mexican rice or nut milk drink.'
  },
  {
    id: 'kombucha',
    name: '康普茶',
    nameEn: 'Kombucha',
    alias: ['红茶菌'],
    category: 'beverage',
    ingredients: ['tea'],
    origin: { location: 'china', time: { display: '公元前220年左右', displayEn: '220 BCE' } },
    spreads: [
      { from: 'china', to: 'russia', time: { display: '20世纪初', displayEn: 'early 20th century' } },
      { from: 'russia', to: 'usa', time: { display: '1990年代', displayEn: '1990s' } }
    ],
    currentRegions: ['usa', 'europe'],
    description: '发酵茶饮，据说秦始皇时期发明，如今是西方健康饮品潮流。',
    descriptionEn: 'Fermented tea drink with probiotic benefits.'
  },
  {
    id: 'smoothie',
    name: '冰沙',
    nameEn: 'Smoothie',
    alias: ['果昔'],
    category: 'beverage',
    ingredients: ['banana', 'strawberry'],
    origin: { location: 'usa', time: { display: '1960年代', displayEn: '1960s' } },
    spreads: [],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '美国健康食品店发明的混合果饮，如今是全球健身人群的选择。',
    descriptionEn: 'Blended fruit drink, healthy modern beverage.'
  },
  {
    id: 'hot-chocolate',
    name: '热巧克力',
    nameEn: 'Hot Chocolate',
    alias: ['可可'],
    category: 'beverage',
    ingredients: ['cacao', 'sugarcane'],
    origin: { location: 'mesoamerica', time: { display: '玛雅时期', displayEn: 'Mayan period' } },
    spreads: [
      { from: 'mesoamerica', to: 'spain', time: { display: '16世纪', displayEn: '16th century' } },
      { from: 'spain', to: 'europe', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['europe', 'usa'],
    description: '玛雅人的神圣饮料，西班牙人加糖改良，冬日暖身饮品。',
    descriptionEn: 'Warm chocolate beverage, Aztec origins.'
  },
  {
    id: 'lemonade',
    name: '柠檬水',
    nameEn: 'Lemonade',
    alias: ['柠檬汁'],
    category: 'beverage',
    ingredients: ['lemon', 'sugarcane'],
    origin: { location: 'egypt', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'egypt', to: 'europe', time: { display: '中世纪', displayEn: 'Medieval period' } },
      { from: 'europe', to: 'usa', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['usa', 'europe', 'middle-east'],
    description: '简单的柠檬糖水，美国孩子卖柠檬水是创业精神的象征。',
    descriptionEn: 'Sweet lemon drink, refreshing classic.'
  },
  {
    id: 'cider',
    name: '苹果酒',
    nameEn: 'Cider',
    alias: ['西打'],
    category: 'beverage',
    ingredients: ['apple'],
    origin: { location: 'uk', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'uk', to: 'usa', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['uk', 'france', 'usa'],
    description: '发酵苹果汁，英国和法国诺曼底是传统产区，美国有无酒精版。',
    descriptionEn: 'Fermented apple drink, British tradition.'
  },
  {
    id: 'ginger-beer',
    name: '姜汁啤酒',
    nameEn: 'Ginger Beer',
    alias: ['姜汁汽水'],
    category: 'beverage',
    ingredients: ['ginger'],
    origin: { location: 'uk', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [
      { from: 'uk', to: 'caribbean', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['uk', 'caribbean', 'usa'],
    description: '英国发明的姜味发酵饮料，莫斯科骡子鸡尾酒的材料。',
    descriptionEn: 'Fermented ginger drink, Caribbean origins.'
  },

  // ========== 调味品 ==========
  {
    id: 'soy-sauce',
    name: '酱油',
    nameEn: 'Soy Sauce',
    category: 'condiment',
    ingredients: ['soybean', 'wheat'],
    origin: { location: 'china', time: { display: '西汉（约公元前200年）', displayEn: '200 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '7世纪', displayEn: '7th century' }, via: '遣唐使', viaEn: 'Japanese envoys to Tang China' },
      { from: 'japan', to: 'europe', time: { display: '17世纪', displayEn: '17th century' }, via: '荷兰商人', viaEn: 'Dutch merchants' }
    ],
    currentRegions: ['china', 'japan', 'korea', 'usa'],
    description: '东亚烹饪的灵魂调味料，日本万字酱油和中国生抽老抽各有特色。',
    descriptionEn: 'Chinese fermented soybean sauce, essential Asian condiment.'
  },
  {
    id: 'ketchup',
    name: '番茄酱',
    nameEn: 'Ketchup',
    alias: ['茄汁'],
    category: 'condiment',
    ingredients: ['tomato', 'sugarcane'],
    origin: { location: 'usa', time: { year: 1876, display: '1876年', displayEn: '1876' } },
    spreads: [
      { from: 'usa', to: 'europe', time: { display: '19世纪末', displayEn: 'late 19th century' } }
    ],
    currentRegions: ['usa', 'europe', 'asia'],
    description: '亨氏番茄酱定义了现代番茄酱，薯条和汉堡的经典搭配。',
    descriptionEn: 'American tomato-based sauce, evolved from Asian fish sauce.'
  },
  {
    id: 'mayonnaise',
    name: '蛋黄酱',
    nameEn: 'Mayonnaise',
    alias: ['美乃滋'],
    category: 'condiment',
    ingredients: ['olive'],
    origin: { location: 'spain', time: { year: 1756, display: '1756年', displayEn: '1756' } },
    spreads: [
      { from: 'spain', to: 'france', time: { display: '18世纪', displayEn: '18th century' } }
    ],
    currentRegions: ['usa', 'europe', 'japan'],
    description: '法国厨师在梅诺卡岛发明，日本丘比蛋黄酱是独特变体。',
    descriptionEn: 'Emulsified egg and oil sauce, French invention.'
  },
  {
    id: 'mustard',
    name: '芥末酱',
    nameEn: 'Mustard',
    alias: ['黄芥末'],
    category: 'condiment',
    ingredients: ['mustard'],
    origin: { location: 'france', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['france', 'germany', 'usa'],
    description: '第戎芥末最有名，美国黄芥末配热狗，德国芥末配香肠。',
    descriptionEn: 'Spicy seed paste condiment, ancient origins.'
  },
  {
    id: 'wasabi',
    name: '山葵',
    nameEn: 'Wasabi',
    alias: ['日本芥末'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'japan', time: { display: '飞鸟时代（约600年）', displayEn: 'Asuka period (around 600)' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本特有的调味料，新鲜山葵价格昂贵，大部分是辣根染色的替代品。',
    descriptionEn: 'Japanese green horseradish paste for sushi.'
  },
  {
    id: 'sriracha',
    name: '是拉差辣酱',
    nameEn: 'Sriracha',
    category: 'condiment',
    ingredients: ['chili', 'garlic'],
    origin: { location: 'thailand', time: { display: '1930年代', displayEn: '1930s' } },
    spreads: [
      { from: 'thailand', to: 'usa', time: { display: '1980年代', displayEn: '1980s' }, via: '越南华裔', viaEn: 'Vietnamese Chinese' }
    ],
    currentRegions: ['usa', 'thailand'],
    description: '泰国发明，越南华裔在美国生产的汇丰公司版本风靡全球。',
    descriptionEn: 'Thai-American hot sauce with garlic.'
  },
  {
    id: 'tabasco',
    name: '塔巴斯科辣酱',
    nameEn: 'Tabasco',
    category: 'condiment',
    ingredients: ['chili'],
    origin: { location: 'usa', time: { year: 1868, display: '1868年', displayEn: '1868' } },
    spreads: [],
    currentRegions: ['usa', 'europe'],
    description: '路易斯安那州发明的发酵辣酱，小瓶装的全球辣酱标准。',
    descriptionEn: 'American fermented hot pepper sauce.'
  },
  {
    id: 'fish-sauce',
    name: '鱼露',
    nameEn: 'Fish Sauce',
    alias: ['鱼酱'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'vietnam', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['vietnam', 'thailand', 'philippines'],
    description: '东南亚的灵魂调味料，发酵鱼提取，是越南和泰国菜的基础。',
    descriptionEn: 'Southeast Asian fermented fish condiment.'
  },
  {
    id: 'oyster-sauce',
    name: '蚝油',
    nameEn: 'Oyster Sauce',
    category: 'condiment',
    ingredients: [],
    origin: { location: 'china', time: { year: 1888, display: '1888年', displayEn: '1888' } },
    spreads: [],
    currentRegions: ['china', 'southeast-asia'],
    description: '广东李锦记创始人李锦裳发明，粤菜和东南亚菜的常用调味料。',
    descriptionEn: 'Chinese sauce made from oyster extracts.'
  },
  {
    id: 'hoisin-sauce',
    name: '海鲜酱',
    nameEn: 'Hoisin Sauce',
    alias: ['甜面酱'],
    category: 'condiment',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['china', 'vietnam'],
    description: '甜咸的酱料，北京烤鸭和越南河粉的配料。',
    descriptionEn: 'Chinese sweet and savory sauce for dipping.'
  },
  {
    id: 'tahini',
    name: '芝麻酱',
    nameEn: 'Sesame Paste',
    category: 'condiment',
    ingredients: ['sesame'],
    origin: { location: 'middle-east', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'middle-east', to: 'china', time: { display: '古代', displayEn: 'Ancient times' } }
    ],
    currentRegions: ['middle-east', 'china', 'greece'],
    description: '中东的芝麻酱是鹰嘴豆泥的成分，中国的芝麻酱配麻酱面。',
    descriptionEn: 'Middle Eastern sesame paste.'
  },
  {
    id: 'pesto',
    name: '青酱',
    nameEn: 'Pesto',
    alias: ['罗勒酱'],
    category: 'condiment',
    ingredients: ['olive', 'pine-nut', 'garlic'],
    origin: { location: 'italy', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [],
    currentRegions: ['italy', 'usa'],
    description: '热那亚的特产，罗勒、松子、帕尔马干酪、橄榄油的组合。',
    descriptionEn: 'Italian basil and pine nut sauce.'
  },
  {
    id: 'chimichurri',
    name: '阿根廷青酱',
    nameEn: 'Chimichurri',
    category: 'condiment',
    ingredients: ['olive', 'garlic', 'chili'],
    origin: { location: 'argentina', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['argentina', 'uruguay'],
    description: '阿根廷烤肉的绝配，香芹、大蒜、橄榄油的组合。',
    descriptionEn: 'Argentinian herb sauce for grilled meats.'
  },
  {
    id: 'worcestershire-sauce',
    name: '伍斯特酱',
    nameEn: 'Worcestershire Sauce',
    alias: ['辣酱油'],
    category: 'condiment',
    ingredients: [],
    origin: { location: 'uk', time: { year: 1838, display: '1838年', displayEn: '1838' } },
    spreads: [],
    currentRegions: ['uk', 'usa'],
    description: '英国伍斯特郡发明的发酵酱汁，血腥玛丽鸡尾酒的成分。',
    descriptionEn: 'British fermented sauce with complex flavors.'
  },
  {
    id: 'gochujang',
    name: '辣椒酱',
    nameEn: 'Chili Sauce',
    alias: ['韩式辣酱'],
    category: 'condiment',
    ingredients: ['chili', 'rice', 'soybean'],
    origin: { location: 'korea', time: { display: '朝鲜时代（16世纪后）', displayEn: '16th century' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '2010年代', displayEn: '2010s' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国的发酵辣椒酱，甜辣咸鲜，拌饭和烤肉必备，韩流带动全球流行。',
    descriptionEn: 'Korean fermented chili paste.'
  },
  {
    id: 'sambal',
    name: '参巴酱',
    nameEn: 'Sambal',
    alias: ['叁巴酱'],
    category: 'condiment',
    ingredients: ['chili', 'garlic'],
    origin: { location: 'indonesia', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['indonesia', 'malaysia', 'singapore'],
    description: '东南亚的辣椒酱，种类繁多，马来和印尼菜的基础调味。',
    descriptionEn: 'Indonesian chili sauce with various ingredients.'
  },
  {
    id: 'harissa',
    name: '哈里萨辣酱',
    nameEn: 'Harissa',
    category: 'condiment',
    ingredients: ['chili', 'cumin', 'coriander', 'caraway'],
    origin: { location: 'tunisia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['tunisia', 'morocco', 'algeria'],
    description: '北非的辣椒酱，配古斯古斯和塔吉锅，是马格里布菜的标志。',
    descriptionEn: 'North African hot chili paste.'
  },
  {
    id: 'chutney',
    name: '酸辣酱',
    nameEn: 'Chutney',
    alias: ['印度酱'],
    category: 'condiment',
    ingredients: ['mango', 'chili', 'ginger'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '印度的果酱/酱料，芒果酸辣酱最有名，配咖喱和萨摩萨。',
    descriptionEn: 'South Asian sweet and sour condiment.'
  },
  {
    id: 'tzatziki',
    name: '酸奶黄瓜酱',
    nameEn: 'Tzatziki',
    category: 'condiment',
    ingredients: ['cucumber', 'garlic'],
    origin: { location: 'greece', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['greece', 'turkey'],
    description: '希腊的酸奶酱，配希腊烤肉和皮塔饼，土耳其版叫cacık。',
    descriptionEn: 'Greek yogurt and cucumber sauce.'
  },
  {
    id: 'aioli',
    name: '蒜泥蛋黄酱',
    nameEn: 'Aioli',
    category: 'condiment',
    ingredients: ['garlic', 'olive'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['spain', 'france'],
    description: '普罗旺斯和加泰罗尼亚的蒜味蛋黄酱，配海鲜和蔬菜。',
    descriptionEn: 'Mediterranean garlic mayonnaise.'
  },
  {
    id: 'teriyaki-sauce',
    name: '照烧酱',
    nameEn: 'Teriyaki Sauce',
    category: 'condiment',
    ingredients: ['soybean', 'ginger'],
    origin: { location: 'japan', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa'],
    description: '酱油、味醂、糖的组合，是日式西餐化的调味基础。',
    descriptionEn: 'Japanese sweet soy glaze.'
  },
  {
    id: 'ponzu',
    name: '柚子醋',
    nameEn: 'Ponzu',
    category: 'condiment',
    ingredients: ['soybean', 'lemon'],
    origin: { location: 'japan', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '柑橘汁加酱油的组合，配刺身、火锅的蘸料。',
    descriptionEn: 'Japanese citrus soy sauce.'
  },
  {
    id: 'mirin',
    name: '味醂',
    nameEn: 'Mirin',
    alias: ['米霖'],
    category: 'condiment',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '战国时代', displayEn: 'Warring States period时代' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的甜味料酒，照烧酱和各种日式调味的基础。',
    descriptionEn: 'Japanese sweet rice wine for cooking.'
  },
  {
    id: 'vinegar',
    name: '醋',
    nameEn: 'Vinegar',
    category: 'condiment',
    ingredients: [],
    origin: { location: 'mesopotamia', time: { year: -3000, display: '公元前3000年', displayEn: '3000 BCE' } },
    spreads: [],
    currentRegions: ['china', 'italy', 'france', 'japan'],
    description: '人类最古老的调味料之一，山西陈醋、意大利香醋、日本米醋各有特色。',
    descriptionEn: 'Fermented acidic liquid, ancient preservative.'
  },
  {
    id: 'balsamic-vinegar',
    name: '香醋',
    nameEn: 'Balsamic Vinegar',
    alias: ['意大利香醋'],
    category: 'condiment',
    ingredients: ['grape'],
    origin: { location: 'italy', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['italy'],
    description: '摩德纳和雷焦艾米利亚的特产，陈年香醋是意大利美食的瑰宝。',
    descriptionEn: 'Italian aged grape vinegar from Modena.'
  },

  // ========== 更多中国菜 ==========
  {
    id: 'zhajiangmian',
    name: '炸酱面',
    nameEn: 'Zhajiang Noodles',
    category: 'dish',
    ingredients: ['wheat', 'soybean'],
    origin: { location: 'china', time: { display: '清代', displayEn: 'Qing Dynasty' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'korea'],
    description: '北京传统面食，肉丁炸酱拌面，传入韩国后演变为韩式炸酱面。',
    descriptionEn: 'Beijing noodles with fermented soybean paste.'
  },
  {
    id: 'lanzhou-lamian',
    name: '兰州拉面',
    nameEn: 'Lanzhou Beef Noodles',
    alias: ['牛肉面'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '清代嘉庆年间', displayEn: 'Qing Dynasty Jiaqing reign' } },
    spreads: [],
    currentRegions: ['china'],
    description: '甘肃兰州的传统面食，一清二白三红四绿五黄，中国面食的代表。',
    descriptionEn: 'Hand-pulled beef noodle soup from Lanzhou.'
  },
  {
    id: 'xiaolongbao',
    name: '小笼包',
    nameEn: 'Xiaolongbao',
    alias: ['汤包'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '清代同治年间', displayEn: 'Qing Dynasty Tongzhi reign' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '20世纪', displayEn: '20th century' } },
      { from: 'china', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['china', 'taiwan', 'japan', 'usa'],
    description: '上海南翔的传统点心，皮薄汁多，鼎泰丰使其闻名世界。',
    descriptionEn: 'Shanghai soup dumplings, delicate and juicy.'
  },
  {
    id: 'char-siu',
    name: '叉烧',
    nameEn: 'Char Siu',
    alias: ['蜜汁叉烧'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'china', time: { display: '清代', displayEn: 'Qing Dynasty' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'malaysia', 'singapore'],
    description: '广东烧腊的代表，蜜汁叉烧色泽红亮，是叉烧包的灵魂。',
    descriptionEn: 'Cantonese sweet barbecued pork.'
  },
  {
    id: 'zongzi',
    name: '粽子',
    nameEn: 'Zongzi',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '春秋战国', displayEn: 'Spring and Autumn and Warring States period' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '奈良时代', displayEn: 'Nara period' } },
      { from: 'china', to: 'southeast-asia', time: { display: '宋代', displayEn: 'Song Dynasty' } }
    ],
    currentRegions: ['china', 'japan', 'vietnam', 'malaysia'],
    description: '端午节传统食物，相传纪念屈原，南北方口味迥异。',
    descriptionEn: 'Chinese glutinous rice wrapped in bamboo leaves.'
  },
  {
    id: 'malatang',
    name: '麻辣烫',
    nameEn: 'Malatang',
    category: 'dish',
    ingredients: ['chili', 'sichuan-pepper'],
    origin: { location: 'china', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'china', to: 'korea', time: { display: '21世纪', displayEn: '21st century' } }
    ],
    currentRegions: ['china', 'korea'],
    description: '四川街头小吃，源于船工的简易火锅，现已风靡亚洲。',
    descriptionEn: 'Sichuan spicy hot pot-style street food.'
  },
  {
    id: 'jianbing',
    name: '煎饼果子',
    nameEn: 'Jianbing',
    alias: ['煎饼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['china'],
    description: '天津传统早点，薄饼卷油条配酱料，中国最受欢迎的街头早餐。',
    descriptionEn: 'Chinese savory breakfast crepe from Tianjin.'
  },
  {
    id: 'youtiao',
    name: '油条',
    nameEn: 'Youtiao',
    alias: ['油炸鬼'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '宋代', displayEn: 'Song Dynasty' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'vietnam', 'malaysia', 'thailand'],
    description: '中国传统早点，相传为讽刺秦桧而作，配豆浆或粥食用。',
    descriptionEn: 'Chinese fried dough stick for breakfast.'
  },
  {
    id: 'baijiu',
    name: '白酒',
    nameEn: 'Baijiu',
    alias: ['烧酒'],
    category: 'beverage',
    ingredients: ['sorghum', 'rice'],
    origin: { location: 'china', time: { display: '元代', displayEn: 'Yuan Dynasty' } },
    spreads: [],
    currentRegions: ['china'],
    description: '中国传统蒸馏酒，茅台、五粮液是其代表，世界三大蒸馏酒之一。'
  },
  {
    id: 'huangjiu',
    name: '黄酒',
    nameEn: 'Huangjiu (Chinese Rice Wine)',
    alias: ['绍兴酒'],
    category: 'beverage',
    ingredients: ['rice'],
    origin: { location: 'china', time: { year: -2000, display: '公元前2000年', displayEn: '2000 BCE' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '古代', displayEn: 'Ancient times' } }
    ],
    currentRegions: ['china', 'japan'],
    description: '中国最古老的酒类，绍兴黄酒闻名天下，日本清酒由此演变。',
    descriptionEn: 'Chinese yellow rice wine, ancient brewing tradition.'
  },
  {
    id: 'luosifen',
    name: '螺蛳粉',
    nameEn: 'Luosifen (River Snail Rice Noodles)',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '1980年代', displayEn: '1980s' } },
    spreads: [],
    currentRegions: ['china'],
    description: '广西柳州特色小吃，以独特的"臭"味闻名，近年风靡全国。',
    descriptionEn: 'Liuzhou rice noodles with river snail broth.'
  },
  {
    id: 'tanghulu',
    name: '糖葫芦',
    nameEn: 'Tanghulu (Candied Fruit)',
    alias: ['冰糖葫芦'],
    category: 'snack',
    ingredients: ['hawthorn'],
    origin: { location: 'china', time: { display: '宋代', displayEn: 'Song Dynasty' } },
    spreads: [],
    currentRegions: ['china'],
    description: '北方传统小吃，山楂裹糖，是中国冬季街头的标志性食物。',
    descriptionEn: 'Chinese candied fruit skewers, traditional snack.'
  },
  {
    id: 'stinky-tofu',
    name: '臭豆腐',
    nameEn: 'Stinky Tofu',
    category: 'snack',
    ingredients: ['soybean'],
    origin: { location: 'china', time: { display: '清代', displayEn: 'Qing Dynasty' } },
    spreads: [
      { from: 'china', to: 'taiwan', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'taiwan'],
    description: '长沙和台湾的特色小吃，闻着臭吃着香的发酵豆制品。',
    descriptionEn: 'Fermented tofu with strong odor, Chinese street food.'
  },
  {
    id: 'hot-dry-noodles',
    name: '热干面',
    nameEn: 'Hot Dry Noodles',
    alias: ['芝麻酱面'],
    category: 'dish',
    ingredients: ['wheat', 'sesame'],
    origin: { location: 'china', time: { display: '20世纪30年代', displayEn: '20th century' } },
    spreads: [],
    currentRegions: ['china'],
    description: '武汉传统早点，芝麻酱拌面，中国五大名面之一。',
    descriptionEn: 'Wuhan breakfast noodles with sesame paste.'
  },
  {
    id: 'biangbiang-noodles',
    name: '油泼面',
    nameEn: 'Biang Biang Noodles',
    alias: ['BiangBiang面'],
    category: 'dish',
    ingredients: ['wheat', 'chili'],
    origin: { location: 'china', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['china'],
    description: '陕西关中面食，宽如裤带的手工面，热油泼辣椒面。',
    descriptionEn: 'Xi\'an wide belt noodles with chili oil.'
  },
  {
    id: 'wonton',
    name: '馄饨',
    nameEn: 'Wonton',
    alias: ['云吞', '抄手'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'china', time: { display: '汉代', displayEn: 'Han Dynasty' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'malaysia', 'singapore', 'indonesia'],
    description: '中国传统面食，广东叫云吞，四川叫抄手，各地风味各异。',
    descriptionEn: 'Chinese dumpling in soup or fried.'
  },

  // ========== 更多日本料理 ==========
  {
    id: 'tonkatsu',
    name: '炸猪排',
    nameEn: 'Tonkatsu',
    alias: ['豚カツ'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'japan', time: { display: '明治时代', displayEn: 'Meiji era' } },
    spreads: [
      { from: 'japan', to: 'korea', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'korea', 'taiwan'],
    description: '日式西洋料理的代表，裹面包糠油炸的猪排配卷心菜。',
    descriptionEn: 'Japanese breaded deep-fried pork cutlet.'
  },
  {
    id: 'okonomiyaki',
    name: '大阪烧',
    nameEn: 'Okonomiyaki',
    alias: ['御好烧'],
    category: 'dish',
    ingredients: ['wheat', 'cabbage'],
    origin: { location: 'japan', time: { display: '昭和时代', displayEn: 'Showa era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '大阪的代表性小吃，面糊混合蔬菜在铁板上煎烤。',
    descriptionEn: 'Japanese savory pancake from Osaka.'
  },
  {
    id: 'takoyaki',
    name: '章鱼烧',
    nameEn: 'Takoyaki',
    alias: ['たこ焼き'],
    category: 'snack',
    ingredients: ['wheat', 'octopus'],
    origin: { location: 'japan', time: { display: '1935年', displayEn: '1935' } },
    spreads: [
      { from: 'japan', to: 'taiwan', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['japan', 'taiwan'],
    description: '大阪发明的街头小吃，圆形面糊球包裹章鱼块。',
    descriptionEn: 'Japanese octopus balls from Osaka.'
  },
  {
    id: 'gyudon',
    name: '牛丼',
    nameEn: 'Gyudon (Beef Bowl)',
    alias: ['牛肉饭'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '明治时代', displayEn: 'Meiji era' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'china'],
    description: '日本快餐的代表，吉野家使其风靡全球。',
    descriptionEn: 'Japanese beef bowl over rice.'
  },
  {
    id: 'oyakodon',
    name: '亲子丼',
    nameEn: 'Oyakodon (Chicken and Egg Bowl)',
    category: 'dish',
    ingredients: ['rice', 'chicken'],
    origin: { location: 'japan', time: { display: '明治时代', displayEn: 'Meiji era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '鸡肉和鸡蛋盖饭，亲子之名来自鸡与蛋的关系。',
    descriptionEn: 'Japanese chicken and egg rice bowl.'
  },
  {
    id: 'katsudon',
    name: '炸猪排饭',
    nameEn: 'Katsudon',
    alias: ['カツ丼'],
    category: 'dish',
    ingredients: ['rice', 'wheat'],
    origin: { location: 'japan', time: { display: '大正时代', displayEn: 'Taisho era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '炸猪排配蛋汁盖饭，日本学生考试前的幸运食物。',
    descriptionEn: 'Japanese rice bowl topped with pork cutlet.'
  },
  {
    id: 'yakitori',
    name: '烤鸡串',
    nameEn: 'Yakitori',
    alias: ['焼き鳥'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代', displayEn: 'Edo period' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式烤鸡肉串，居酒屋的常见料理。',
    descriptionEn: 'Japanese grilled chicken skewers.'
  },
  {
    id: 'unagi',
    name: '鳗鱼饭',
    nameEn: 'Unagi (Eel Rice)',
    alias: ['蒲烧鳗鱼'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '江户时代', displayEn: 'Edo period' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '日本夏季的传统美食，土用丑日必吃鳗鱼补体力。',
    descriptionEn: 'Japanese grilled eel over rice.'
  },
  {
    id: 'shabu-shabu',
    name: '涮涮锅',
    nameEn: 'Shabu-Shabu',
    alias: ['しゃぶしゃぶ'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'japan', time: { display: '20世纪', displayEn: '20th century' } },
    spreads: [],
    currentRegions: ['japan', 'taiwan'],
    description: '日式火锅，薄肉片在热汤中涮几下即食。',
    descriptionEn: 'Japanese hot pot with thinly sliced meat.'
  },
  {
    id: 'sukiyaki',
    name: '寿喜烧',
    nameEn: 'Sukiyaki',
    alias: ['すき焼き'],
    category: 'dish',
    ingredients: ['soybean'],
    origin: { location: 'japan', time: { display: '明治时代', displayEn: 'Meiji era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式牛肉锅，甜酱油底料，明治维新后牛肉解禁的产物。',
    descriptionEn: 'Japanese sweet soy-based hot pot.'
  },
  {
    id: 'tamagoyaki',
    name: '玉子烧',
    nameEn: 'Tamagoyaki (Japanese Omelette)',
    alias: ['日式蛋卷'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代', displayEn: 'Edo period' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日式煎蛋卷，便当和寿司的常见配料。',
    descriptionEn: 'Japanese rolled omelette, sweet and savory.'
  },
  {
    id: 'chawanmushi',
    name: '茶碗蒸',
    nameEn: 'Chawanmushi (Steamed Egg Custard)',
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'japan', time: { display: '江户时代', displayEn: 'Edo period' } },
    spreads: [
      { from: 'japan', to: 'taiwan', time: { display: '日治时期', displayEn: 'Japanese colonial period' } }
    ],
    currentRegions: ['japan', 'taiwan'],
    description: '日式蒸蛋，滑嫩的蛋液中加入各种配料。',
    descriptionEn: 'Japanese steamed egg custard with toppings.'
  },
  {
    id: 'onigiri',
    name: '饭团',
    nameEn: 'Onigiri',
    alias: ['御握り'],
    category: 'staple',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '平安时代', displayEn: 'Heian period' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本便携主食，三角形饭团包裹各种馅料，便利店的热销商品。',
    descriptionEn: 'Japanese rice ball with various fillings.'
  },
  {
    id: 'ochazuke',
    name: '茶泡饭',
    nameEn: 'Ochazuke (Rice with Tea)',
    alias: ['お茶漬け'],
    category: 'dish',
    ingredients: ['rice', 'tea'],
    origin: { location: 'japan', time: { display: '江户时代', displayEn: 'Edo period' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本的简易餐食，热茶或高汤浇在米饭上，配腌菜或烤鱼。',
    descriptionEn: 'Japanese rice with tea or broth poured over.'
  },

  // ========== 更多韩国料理 ==========
  {
    id: 'samgyeopsal',
    name: '五花肉',
    nameEn: 'Samgyeopsal (Korean BBQ Pork Belly)',
    alias: ['삼겹살'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'korea', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国烤肉的代表，烤五花肉配生菜和蒜。',
    descriptionEn: 'Korean grilled pork belly BBQ.'
  },
  {
    id: 'japchae',
    name: '杂菜',
    nameEn: 'Japchae (Korean Glass Noodles)',
    alias: ['잡채'],
    category: 'dish',
    ingredients: ['sweet-potato'],
    origin: { location: 'korea', time: { display: '朝鲜时代', displayEn: 'Joseon Dynasty' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国宴席菜，红薯粉丝炒蔬菜和肉丝。',
    descriptionEn: 'Korean glass noodles with vegetables.'
  },
  {
    id: 'sundubu-jjigae',
    name: '嫩豆腐汤',
    nameEn: 'Sundubu-jjigae (Soft Tofu Stew)',
    alias: ['순두부찌개'],
    category: 'dish',
    ingredients: ['soybean', 'chili'],
    origin: { location: 'korea', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'korea', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['korea', 'usa'],
    description: '韩国豆腐汤，嫩豆腐配辣酱和海鲜，美国韩餐厅的招牌。',
    descriptionEn: 'Korean soft tofu stew, spicy and comforting.'
  },
  {
    id: 'tteokbokki',
    name: '炒年糕',
    nameEn: 'Tteokbokki (Spicy Rice Cakes)',
    alias: ['떡볶이'],
    category: 'dish',
    ingredients: ['rice', 'chili'],
    origin: { location: 'korea', time: { display: '朝鲜时代', displayEn: 'Joseon Dynasty' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩国街头小吃，年糕条配辣酱，现代版加入面条和芝士。',
    descriptionEn: 'Korean spicy rice cakes in red sauce.'
  },
  {
    id: 'kimbap',
    name: '紫菜包饭',
    nameEn: 'Kimbap (Korean Rice Roll)',
    alias: ['김밥'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'korea', time: { display: '20世纪', displayEn: '20th century' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '韩式饭卷，与日本寿司相似但用麻油调味，是野餐和便当的常见食物。',
    descriptionEn: 'Korean rice roll with vegetables and meat.'
  },
  {
    id: 'jjajangmyeon',
    name: '韩式炸酱面',
    nameEn: 'Jjajangmyeon (Black Bean Noodles)',
    alias: ['짜장면'],
    category: 'dish',
    ingredients: ['wheat', 'soybean'],
    origin: { location: 'korea', time: { display: '1905年', displayEn: '1905' } },
    spreads: [],
    currentRegions: ['korea'],
    description: '中国炸酱面的韩国变体，用黑酱炒制，韩国外卖的经典。',
    descriptionEn: 'Korean-Chinese noodles in black bean sauce.'
  },
  {
    id: 'chimaek',
    name: '炸鸡啤酒',
    nameEn: 'Chimaek (Chicken and Beer)',
    alias: ['치맥'],
    category: 'dish',
    ingredients: ['chicken'],
    origin: { location: 'korea', time: { display: '1970年代', displayEn: '1970s' } },
    spreads: [
      { from: 'korea', to: 'china', time: { display: '21世纪', displayEn: '21st century' } }
    ],
    currentRegions: ['korea', 'china'],
    description: '韩式炸鸡配啤酒，韩剧文化输出的标志性美食。',
    descriptionEn: 'Korean fried chicken with beer, popular combo.'
  },
  {
    id: 'naengmyeon',
    name: '冷面',
    nameEn: 'Naengmyeon (Cold Noodles)',
    alias: ['냉면'],
    category: 'dish',
    ingredients: ['buckwheat'],
    origin: { location: 'korea', time: { display: '朝鲜时代', displayEn: 'Joseon Dynasty' } },
    spreads: [
      { from: 'korea', to: 'china', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['korea', 'china'],
    description: '韩国冷面，分平壤冷面和咸兴冷面两派，延边冷面是中国变体。',
    descriptionEn: 'Korean cold buckwheat noodles.'
  },

  // ========== 更多东南亚菜 ==========
  {
    id: 'nasi-goreng',
    name: '印尼炒饭',
    nameEn: 'Nasi Goreng',
    alias: ['椰香炒饭'],
    category: 'dish',
    ingredients: ['rice', 'chili'],
    origin: { location: 'indonesia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'indonesia', to: 'netherlands', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'netherlands'],
    description: '印尼国菜，甜酱油炒饭配煎蛋，荷兰也很流行。'
  },
  {
    id: 'satay',
    name: '沙爹',
    nameEn: 'Satay',
    alias: ['沙嗲'],
    category: 'dish',
    ingredients: ['peanut', 'turmeric'],
    origin: { location: 'indonesia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['indonesia', 'malaysia', 'singapore', 'thailand'],
    description: '东南亚烤肉串，配花生酱蘸料，可能受中东烤肉影响。'
  },
  {
    id: 'rendang',
    name: '仁当',
    nameEn: 'Rendang',
    alias: ['干咖喱'],
    category: 'dish',
    ingredients: ['coconut', 'chili', 'turmeric'],
    origin: { location: 'indonesia', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'indonesia', to: 'malaysia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['indonesia', 'malaysia'],
    description: '印尼苏门答腊的传统菜，慢炖至汁干的咖喱牛肉，曾被评为世界最美味的食物。',
    descriptionEn: 'Indonesian slow-cooked dry curry, rich and spicy.'
  },
  {
    id: 'bun-cha',
    name: '烤肉米粉',
    nameEn: 'Bun Cha',
    alias: ['Bún chả'],
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'vietnam', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['vietnam'],
    description: '河内特色，烤肉配米粉和蘸料，奥巴马访越时品尝使其闻名。',
    descriptionEn: 'Vietnamese grilled pork with rice noodles.'
  },
  {
    id: 'banh-xeo',
    name: '越南煎饼',
    nameEn: 'Banh Xeo',
    alias: ['Bánh xèo'],
    category: 'dish',
    ingredients: ['rice', 'turmeric'],
    origin: { location: 'vietnam', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['vietnam'],
    description: '越南黄色脆饼，姜黄粉调色，包裹豆芽和肉类。',
    descriptionEn: 'Vietnamese crispy savory crepe.'
  },
  {
    id: 'gado-gado',
    name: '加多加多',
    nameEn: 'Gado-Gado',
    category: 'dish',
    ingredients: ['peanut'],
    origin: { location: 'indonesia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['indonesia'],
    description: '印尼蔬菜沙拉，花生酱淋各种蔬菜和豆腐。',
    descriptionEn: 'Indonesian vegetable salad with peanut sauce.'
  },
  {
    id: 'mee-goreng',
    name: '马来炒面',
    nameEn: 'Mee Goreng',
    category: 'dish',
    ingredients: ['wheat', 'chili'],
    origin: { location: 'malaysia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore', 'indonesia'],
    description: '马来西亚炒面，印度穆斯林的创造，用辣酱和番茄酱调味。',
    descriptionEn: 'Malaysian spicy fried noodles.'
  },
  {
    id: 'roti-canai',
    name: '印度煎饼',
    nameEn: 'Roti Canai',
    alias: ['印度飞饼'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'malaysia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'india', to: 'malaysia', time: { display: '19世纪', displayEn: '19th century' }, via: '印度移民', viaEn: 'Indian immigrants' }
    ],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来西亚早餐，印度移民带来的扁平面饼，配咖喱蘸酱。',
    descriptionEn: 'Malaysian flaky flatbread with curry.'
  },
  {
    id: 'nasi-lemak',
    name: '椰浆饭',
    nameEn: 'Nasi Lemak',
    category: 'dish',
    ingredients: ['rice', 'coconut'],
    origin: { location: 'malaysia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '马来西亚国菜，椰浆煮饭配江鱼仔、花生和参巴酱。',
    descriptionEn: 'Malaysian coconut rice with sambal.'
  },
  {
    id: 'char-kway-teow',
    name: '炒粿条',
    nameEn: 'Char Kway Teow',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'malaysia', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '槟城著名小吃，宽米粉配血蛤和腊肠大火快炒。',
    descriptionEn: 'Malaysian stir-fried flat rice noodles.'
  },
  {
    id: 'hainanese-chicken-rice',
    name: '海南鸡饭',
    nameEn: 'Hainanese Chicken Rice',
    category: 'dish',
    ingredients: ['rice', 'chicken'],
    origin: { location: 'china', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'china', to: 'singapore', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['singapore', 'malaysia', 'china'],
    description: '海南移民带到南洋的鸡饭，新加坡将其发扬光大成为国菜。',
    descriptionEn: 'Singapore signature poached chicken rice.'
  },
  {
    id: 'chili-crab',
    name: '辣椒螃蟹',
    nameEn: 'Chili Crab',
    category: 'dish',
    ingredients: ['chili'],
    origin: { location: 'singapore', time: { display: '1950年代', displayEn: '1950s' } },
    spreads: [],
    currentRegions: ['singapore'],
    description: '新加坡国菜，番茄辣椒酱焖螃蟹，配馒头蘸酱汁。',
    descriptionEn: 'Singapore spicy crab in tomato chili sauce.'
  },
  {
    id: 'bak-kut-teh',
    name: '肉骨茶',
    nameEn: 'Bak Kut Teh',
    category: 'dish',
    ingredients: ['garlic', 'sichuan-pepper'],
    origin: { location: 'malaysia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['malaysia', 'singapore'],
    description: '福建移民创造的药材炖排骨汤，有新马两种流派。',
    descriptionEn: 'Malaysian-Singapore pork rib tea soup.'
  },

  // ========== 更多印度菜 ==========
  {
    id: 'biryani',
    name: '印度香饭',
    nameEn: 'Biryani',
    alias: ['比尔亚尼'],
    category: 'dish',
    ingredients: ['rice', 'turmeric', 'cumin'],
    origin: { location: 'india', time: { display: '莫卧儿时期', displayEn: 'Mughal period' } },
    spreads: [
      { from: 'india', to: 'middle-east', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['india', 'pakistan', 'middle-east'],
    description: '印度最著名的米饭料理，莫卧儿宫廷美食，海得拉巴和勒克瑙风格最有名。'
  },
  {
    id: 'butter-chicken',
    name: '黄油鸡',
    nameEn: 'Butter Chicken',
    alias: ['奶油鸡'],
    category: 'dish',
    ingredients: ['tomato', 'ginger'],
    origin: { location: 'india', time: { display: '1950年代', displayEn: '1950s' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '德里Moti Mahal餐厅发明，奶油番茄酱配坦杜里鸡，全球最受欢迎的印度菜。'
  },
  {
    id: 'palak-paneer',
    name: '菠菜奶酪',
    nameEn: 'Palak Paneer',
    category: 'dish',
    ingredients: ['spinach'],
    origin: { location: 'india', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['india'],
    description: '北印度素食名菜，菠菜泥配印度奶酪块。',
    descriptionEn: 'Indian spinach with cottage cheese.'
  },
  {
    id: 'dal',
    name: '豆泥糊',
    nameEn: 'Dal',
    alias: ['达尔'],
    category: 'dish',
    ingredients: ['lentil', 'cumin', 'turmeric'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'pakistan', 'nepal'],
    description: '印度日常主食，各种扁豆煮成的糊，是蛋白质的主要来源。'
  },
  {
    id: 'dosa',
    name: '印度薄饼',
    nameEn: 'Dosa',
    alias: ['多萨'],
    category: 'staple',
    ingredients: ['rice', 'lentil'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'malaysia', 'singapore'],
    description: '南印度发酵米饼，脆薄如纸，配椰子酱和三巴酱。',
    descriptionEn: 'South Indian fermented rice and lentil crepe.'
  },
  {
    id: 'idli',
    name: '蒸米糕',
    nameEn: 'Idli',
    alias: ['伊德利'],
    category: 'staple',
    ingredients: ['rice', 'lentil'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'sri-lanka'],
    description: '南印度早餐，发酵米糊蒸成的白色软糕。',
    descriptionEn: 'South Indian steamed rice cakes.'
  },
  {
    id: 'sambar',
    name: '桑巴尔',
    nameEn: 'Sambar',
    category: 'dish',
    ingredients: ['lentil', 'tamarind'],
    origin: { location: 'india', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['india', 'sri-lanka'],
    description: '南印度扁豆蔬菜汤，罗望子调味，配多萨和伊德利。',
    descriptionEn: 'South Indian lentil and vegetable stew.'
  },
  {
    id: 'korma',
    name: '科尔玛',
    nameEn: 'Korma',
    category: 'dish',
    ingredients: ['coconut', 'almond'],
    origin: { location: 'india', time: { display: '莫卧儿时期', displayEn: 'Mughal period' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '莫卧儿宫廷菜，奶油坚果酱炖肉，口味温和适合初尝印度菜者。',
    descriptionEn: 'Mild Indian curry with cream or yogurt.'
  },
  {
    id: 'vindaloo',
    name: '温达卢',
    nameEn: 'Vindaloo',
    category: 'dish',
    ingredients: ['chili', 'vinegar'],
    origin: { location: 'india', time: { display: '葡萄牙殖民时期', displayEn: 'Portuguese colonial period' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'uk'],
    description: '果阿的葡印融合菜，醋和辣椒腌肉，以极辣闻名。',
    descriptionEn: 'Spicy Indian curry with Portuguese influence.'
  },
  {
    id: 'gulab-jamun',
    name: '甜球',
    nameEn: 'Gulab Jamun',
    alias: ['古拉布贾蒙'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'india', time: { display: '莫卧儿时期', displayEn: 'Mughal period' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度甜点之王，奶球油炸后浸入玫瑰糖浆。'
  },
  {
    id: 'kheer',
    name: '印度米布丁',
    nameEn: 'Kheer',
    alias: ['克希尔'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度传统甜品，牛奶煮米配豆蔻和坚果。',
    descriptionEn: 'Indian rice pudding with cardamom.'
  },
  {
    id: 'lassi',
    name: '拉西',
    nameEn: 'Lassi',
    category: 'beverage',
    ingredients: ['mango'],
    origin: { location: 'india', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['india', 'pakistan'],
    description: '印度酸奶饮料，芒果拉西最受欢迎，是消暑解辣的良品。'
  },
  {
    id: 'chai',
    name: '印度奶茶',
    nameEn: 'Chai',
    alias: ['马萨拉茶'],
    category: 'beverage',
    ingredients: ['tea', 'ginger', 'cardamom'],
    origin: { location: 'india', time: { display: '英国殖民时期', displayEn: 'British colonial period' } },
    spreads: [
      { from: 'india', to: 'uk', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['india', 'uk', 'usa'],
    description: '印度香料奶茶，英国推广茶叶种植后与本土香料结合的产物。'
  },

  // ========== 更多中东菜 ==========
  {
    id: 'shawarma',
    name: '沙瓦尔玛',
    nameEn: 'Shawarma',
    alias: ['中东烤肉'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'turkey', time: { display: '奥斯曼时期', displayEn: 'Ottoman period' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '19世纪', displayEn: '19th century' } },
      { from: 'middle-east', to: 'europe', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['middle-east', 'europe', 'usa'],
    description: '旋转烤肉的中东变体，配皮塔饼和酱料，是街头快餐的代表。'
  },
  {
    id: 'falafel',
    name: '法拉费尔',
    nameEn: 'Falafel',
    alias: ['炸鹰嘴豆饼'],
    category: 'dish',
    ingredients: ['chickpea', 'cumin'],
    origin: { location: 'egypt', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'egypt', to: 'middle-east', time: { display: '中世纪', displayEn: 'Medieval period' } }
    ],
    currentRegions: ['middle-east', 'israel', 'europe'],
    description: '中东素食经典，炸鹰嘴豆球配皮塔饼和塔希尼酱。'
  },
  {
    id: 'baba-ganoush',
    name: '烤茄泥',
    nameEn: 'Baba Ganoush',
    alias: ['巴巴甘努什'],
    category: 'dish',
    ingredients: ['eggplant', 'sesame', 'garlic'],
    origin: { location: 'lebanon', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩烤茄泥，配芝麻酱和橄榄油，与皮塔饼同食。',
    descriptionEn: 'Middle Eastern smoky eggplant dip.'
  },
  {
    id: 'tabbouleh',
    name: '塔布勒沙拉',
    nameEn: 'Tabbouleh',
    category: 'dish',
    ingredients: ['wheat', 'tomato', 'parsley'],
    origin: { location: 'lebanon', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩碎小麦沙拉，大量欧芹配番茄和薄荷，清新健康。',
    descriptionEn: 'Lebanese bulgur salad with parsley.'
  },
  {
    id: 'fattoush',
    name: '法图什沙拉',
    nameEn: 'Fattoush',
    category: 'dish',
    ingredients: ['tomato', 'cucumber'],
    origin: { location: 'lebanon', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '黎巴嫩面包沙拉，烤皮塔饼碎配新鲜蔬菜和酸橙汁。',
    descriptionEn: 'Lebanese bread salad with vegetables.'
  },
  {
    id: 'kibbeh',
    name: '克贝',
    nameEn: 'Kibbeh',
    alias: ['肉丸'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'lebanon', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['lebanon', 'syria', 'iraq'],
    description: '黎凡特的碎小麦肉丸，生食、炸或烤各有风味。',
    descriptionEn: 'Lebanese meat and bulgur croquettes.'
  },
  {
    id: 'mansaf',
    name: '曼萨夫',
    nameEn: 'Mansaf',
    category: 'dish',
    ingredients: ['rice'],
    origin: { location: 'middle-east', time: { display: '贝都因传统', displayEn: 'Bedouin tradition' } },
    spreads: [],
    currentRegions: ['middle-east'],
    description: '约旦国菜，羊肉配酸奶酱和米饭，贝都因人的待客之道。',
    descriptionEn: 'Jordanian lamb and rice in yogurt sauce.'
  },
  {
    id: 'baklava',
    name: '果仁蜜饼',
    nameEn: 'Baklava',
    alias: ['巴克拉瓦'],
    category: 'dessert',
    ingredients: ['pistachio', 'walnut'],
    origin: { location: 'turkey', time: { display: '奥斯曼时期', displayEn: 'Ottoman period' } },
    spreads: [
      { from: 'turkey', to: 'middle-east', time: { display: '近代', displayEn: 'Modern era' } },
      { from: 'turkey', to: 'greece', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'greece'],
    description: '中东甜点皇后，层层酥皮夹坚果淋蜂蜜，极度甜腻。'
  },
  {
    id: 'kunafa',
    name: '库纳法',
    nameEn: 'Kunafa',
    alias: ['卡达伊夫'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'middle-east', time: { display: '奥斯曼时期', displayEn: 'Ottoman period' } },
    spreads: [],
    currentRegions: ['middle-east', 'turkey'],
    description: '中东芝士甜点，面丝包裹芝士烤制后淋糖浆，纳布卢斯版最有名。',
    descriptionEn: 'Middle Eastern cheese pastry in syrup.'
  },
  {
    id: 'turkish-coffee',
    name: '土耳其咖啡',
    nameEn: 'Turkish Coffee',
    category: 'beverage',
    ingredients: ['coffee'],
    origin: { location: 'turkey', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [
      { from: 'turkey', to: 'europe', time: { display: '17世纪', displayEn: '17th century' } }
    ],
    currentRegions: ['turkey', 'middle-east', 'greece'],
    description: '细研咖啡粉煮制的浓咖啡，是咖啡传入欧洲的先驱。',
    descriptionEn: 'Finely ground unfiltered coffee, ritual drink.'
  },

  // ========== 更多欧洲菜 ==========
  {
    id: 'moussaka',
    name: '穆萨卡',
    nameEn: 'Moussaka',
    category: 'dish',
    ingredients: ['eggplant', 'tomato'],
    origin: { location: 'greece', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['greece', 'turkey'],
    description: '希腊版千层面，茄子、肉末和白酱层层叠加烤制。',
    descriptionEn: 'Greek layered eggplant and meat casserole.'
  },
  {
    id: 'souvlaki',
    name: '苏夫拉基',
    nameEn: 'Souvlaki',
    alias: ['希腊烤肉串'],
    category: 'dish',
    ingredients: [],
    origin: { location: 'greece', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [],
    currentRegions: ['greece'],
    description: '希腊烤肉串，配皮塔饼和酸奶酱，街头快餐的代表。',
    descriptionEn: 'Greek grilled meat skewers in pita.'
  },
  {
    id: 'paella-valenciana',
    name: '瓦伦西亚海鲜饭',
    nameEn: 'Paella Valenciana',
    category: 'dish',
    ingredients: ['rice', 'saffron'],
    origin: { location: 'spain', time: { display: '15世纪', displayEn: '15th century' } },
    spreads: [],
    currentRegions: ['spain'],
    description: '西班牙最著名的米饭料理，用藏红花调色，传统版用兔肉和蜗牛。',
    descriptionEn: 'Original Valencia paella with rabbit and beans.'
  },
  {
    id: 'gazpacho',
    name: '西班牙冷汤',
    nameEn: 'Gazpacho',
    alias: ['加斯帕乔'],
    category: 'dish',
    ingredients: ['tomato', 'cucumber', 'garlic'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['spain', 'portugal'],
    description: '安达卢西亚冷汤，番茄和蔬菜打成的冰凉浓汤，夏日消暑佳品。',
    descriptionEn: 'Spanish cold tomato soup from Andalusia.'
  },
  {
    id: 'churros',
    name: '吉拿棒',
    nameEn: 'Churros',
    alias: ['西班牙油条'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'south-america', 'usa'],
    description: '西班牙传统甜点，条状面团油炸后蘸巧克力酱。'
  },
  {
    id: 'croissant',
    name: '可颂',
    nameEn: 'Croissant',
    alias: ['牛角包'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [
      { from: 'austria', to: 'france', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['france', 'europe', 'usa'],
    description: '起源于维也纳的新月形酥皮面包，在法国发扬光大成为早餐标配。'
  },
  {
    id: 'baguette',
    name: '法棍',
    nameEn: 'Baguette',
    alias: ['法式长棍面包'],
    category: 'staple',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '法国的象征，长条形硬皮面包，联合国非物质文化遗产。',
    descriptionEn: 'French long crusty bread, iconic shape.'
  },
  {
    id: 'quiche',
    name: '法式咸派',
    nameEn: 'Quiche',
    alias: ['洛林咸派'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '洛林地区的蛋奶咸派，配培根和芝士，是法式料理的经典。',
    descriptionEn: 'French savory custard tart, Lorraine classic.'
  },
  {
    id: 'ratatouille',
    name: '普罗旺斯炖菜',
    nameEn: 'Ratatouille',
    alias: ['料理鼠王'],
    category: 'dish',
    ingredients: ['tomato', 'eggplant', 'zucchini'],
    origin: { location: 'france', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['france'],
    description: '普罗旺斯蔬菜炖菜，因皮克斯动画电影而闻名世界。'
  },
  {
    id: 'coq-au-vin',
    name: '红酒炖鸡',
    nameEn: 'Coq au Vin',
    category: 'dish',
    ingredients: ['grape', 'mushroom'],
    origin: { location: 'france', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典家常菜，鸡肉用勃艮第红酒慢炖。'
  },
  {
    id: 'beef-bourguignon',
    name: '勃艮第红酒炖牛肉',
    nameEn: 'Beef Bourguignon',
    category: 'dish',
    ingredients: ['grape', 'carrot', 'onion'],
    origin: { location: 'france', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国经典炖菜，牛肉用红酒慢炖数小时。',
    descriptionEn: 'French beef stew in Burgundy wine.'
  },
  {
    id: 'escargot',
    name: '法式蜗牛',
    nameEn: 'Escargot',
    category: 'dish',
    ingredients: ['garlic', 'parsley'],
    origin: { location: 'france', time: { display: '古罗马', displayEn: 'Ancient Rome' } },
    spreads: [],
    currentRegions: ['france'],
    description: '法国前菜经典，蜗牛配蒜香欧芹黄油烤制。',
    descriptionEn: 'French cooked snails in garlic butter.'
  },
  {
    id: 'schnitzel',
    name: '维也纳炸肉排',
    nameEn: 'Schnitzel',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'austria', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'austria', to: 'germany', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['austria', 'germany'],
    description: '奥地利国菜，薄牛肉裹面包糠油炸，德国版常用猪肉。'
  },
  {
    id: 'bratwurst',
    name: '德国烤肠',
    nameEn: 'Bratwurst',
    category: 'dish',
    ingredients: [],
    origin: { location: 'germany', time: { display: '14世纪', displayEn: '14th century' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['germany', 'usa'],
    description: '德国香肠的代表，纽伦堡和图林根各有特色。'
  },
  {
    id: 'sauerkraut',
    name: '德国酸菜',
    nameEn: 'Sauerkraut',
    category: 'preserved',
    ingredients: ['cabbage'],
    origin: { location: 'germany', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'germany', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['germany', 'usa', 'poland'],
    description: '发酵卷心菜，德国香肠的经典配菜，富含益生菌。'
  },
  {
    id: 'pierogi',
    name: '波兰饺子',
    nameEn: 'Pierogi',
    category: 'dish',
    ingredients: ['wheat', 'potato'],
    origin: { location: 'poland', time: { display: '13世纪', displayEn: '13th century' } },
    spreads: [
      { from: 'poland', to: 'usa', time: { display: '19世纪', displayEn: '19th century' } }
    ],
    currentRegions: ['poland', 'usa'],
    description: '东欧饺子，有甜咸两种馅料，圣诞节传统食物。',
    descriptionEn: 'Polish filled dumplings, boiled or fried.'
  },
  {
    id: 'borscht',
    name: '罗宋汤',
    nameEn: 'Borscht',
    alias: ['甜菜汤'],
    category: 'dish',
    ingredients: ['beet', 'cabbage'],
    origin: { location: 'russia', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'russia', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['russia', 'ukraine', 'poland'],
    description: '东欧甜菜汤，鲜红色的酸甜汤品，配酸奶油。',
    descriptionEn: 'Ukrainian/Russian beet soup.'
  },
  {
    id: 'beef-stroganoff',
    name: '俄式牛柳',
    nameEn: 'Beef Stroganoff',
    alias: ['斯特罗加诺夫牛肉'],
    category: 'dish',
    ingredients: ['mushroom'],
    origin: { location: 'russia', time: { display: '19世纪', displayEn: '19th century' } },
    spreads: [
      { from: 'russia', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['russia', 'usa'],
    description: '俄国贵族菜肴，牛肉条配酸奶油蘑菇酱。',
    descriptionEn: 'Russian beef in sour cream sauce.'
  },
  {
    id: 'pelmeni',
    name: '俄罗斯饺子',
    nameEn: 'Pelmeni',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'russia', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['russia'],
    description: '西伯利亚起源的肉饺，冬季可冷冻保存数月。',
    descriptionEn: 'Russian meat dumplings in broth.'
  },

  // ========== 更多美洲菜 ==========
  {
    id: 'tacos',
    name: '塔可',
    nameEn: 'Tacos',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥国民美食，玉米饼包裹各种馅料，种类繁多。'
  },
  {
    id: 'burrito',
    name: '墨西哥卷',
    nameEn: 'Burrito',
    category: 'dish',
    ingredients: ['wheat', 'rice'],
    origin: { location: 'mexico', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥大卷饼，面粉饼包裹米饭、豆泥和肉类。',
    descriptionEn: 'Mexican large flour tortilla wrap.'
  },
  {
    id: 'guacamole',
    name: '牛油果酱',
    nameEn: 'Guacamole',
    alias: ['鳄梨酱'],
    category: 'condiment',
    ingredients: ['avocado', 'tomato', 'chili'],
    origin: { location: 'mexico', time: { display: '阿兹特克时期', displayEn: 'Aztec period' } },
    spreads: [
      { from: 'mexico', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['mexico', 'usa'],
    description: '墨西哥牛油果酱，阿兹特克人的发明，配玉米片食用。',
    descriptionEn: 'Mexican avocado-based dip.'
  },
  {
    id: 'pozole',
    name: '墨西哥玉米肉汤',
    nameEn: 'Pozole',
    category: 'dish',
    ingredients: ['corn', 'chili'],
    origin: { location: 'mexico', time: { display: '阿兹特克时期', displayEn: 'Aztec period' } },
    spreads: [],
    currentRegions: ['mexico'],
    description: '墨西哥传统汤品，玉米粒配猪肉，节日必备菜肴。',
    descriptionEn: 'Mexican hominy soup with pork.'
  },
  {
    id: 'mole',
    name: '墨西哥酱',
    nameEn: 'Mole',
    alias: ['莫莱酱'],
    category: 'condiment',
    ingredients: ['chili', 'chocolate'],
    origin: { location: 'mexico', time: { display: '殖民时期', displayEn: 'Colonial period' } },
    spreads: [],
    currentRegions: ['mexico'],
    description: '墨西哥复合酱料，混合辣椒、巧克力等20多种食材，瓦哈卡黑酱最著名。',
    descriptionEn: 'Mexican complex sauce with chocolate and chilies.'
  },
  {
    id: 'ceviche',
    name: '酸橘汁腌鱼',
    nameEn: 'Ceviche',
    alias: ['塞维切'],
    category: 'dish',
    ingredients: ['lemon', 'chili'],
    origin: { location: 'peru', time: { display: '西班牙殖民前', displayEn: 'Pre-Spanish colonial period' } },
    spreads: [
      { from: 'peru', to: 'south-america', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['peru', 'ecuador', 'mexico'],
    description: '秘鲁国菜，酸橘汁"烹饪"的生鱼，拉美沿海地区都有变体。'
  },
  {
    id: 'empanada',
    name: '馅饼',
    nameEn: 'Empanada',
    alias: ['恩帕纳达'],
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'spain', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'spain', to: 'south-america', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['spain', 'argentina', 'chile'],
    description: '西班牙传到南美的馅饼，阿根廷和智利各有风格。'
  },
  {
    id: 'asado',
    name: '阿根廷烤肉',
    nameEn: 'Asado',
    category: 'dish',
    ingredients: [],
    origin: { location: 'argentina', time: { display: '殖民时期', displayEn: 'Colonial period' } },
    spreads: [],
    currentRegions: ['argentina', 'uruguay'],
    description: '阿根廷烤肉传统，潘帕斯牛仔的文化遗产，周末家庭聚会必备。',
    descriptionEn: 'Argentinian barbecue tradition.'
  },
  {
    id: 'feijoada',
    name: '巴西黑豆饭',
    nameEn: 'Feijoada',
    category: 'dish',
    ingredients: ['black-bean'],
    origin: { location: 'brazil', time: { display: '殖民时期', displayEn: 'Colonial period' } },
    spreads: [],
    currentRegions: ['brazil'],
    description: '巴西国菜，黑豆炖猪肉配米饭，源自奴隶的食物。'
  },
  {
    id: 'poutine',
    name: '肉汁奶酪薯条',
    nameEn: 'Poutine',
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'canada', time: { display: '1950年代', displayEn: '1950s' } },
    spreads: [],
    currentRegions: ['canada'],
    description: '魁北克的发明，薯条配奶酪块和肉汁，加拿大国民美食。'
  },
  {
    id: 'clam-chowder',
    name: '蛤蜊浓汤',
    nameEn: 'Clam Chowder',
    alias: ['新英格兰浓汤'],
    category: 'dish',
    ingredients: ['potato'],
    origin: { location: 'usa', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '新英格兰奶油蛤蜊汤，旧金山酸面包碗盛装的版本最有名。'
  },
  {
    id: 'bbq-ribs',
    name: '美式烤肋排',
    nameEn: 'BBQ Ribs',
    category: 'dish',
    ingredients: [],
    origin: { location: 'usa', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国南方烧烤的代表，德州、堪萨斯城各有流派。'
  },
  {
    id: 'buffalo-wings',
    name: '水牛城鸡翅',
    nameEn: 'Buffalo Wings',
    category: 'dish',
    ingredients: ['chicken', 'chili'],
    origin: { location: 'usa', time: { display: '1964年', displayEn: '1964' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '纽约水牛城的发明，辣酱炸鸡翅配蓝纹芝士酱。'
  },
  {
    id: 'mac-and-cheese',
    name: '芝士通心粉',
    nameEn: 'Mac and Cheese',
    category: 'dish',
    ingredients: ['wheat'],
    origin: { location: 'usa', time: { display: '18世纪', displayEn: '18th century' } },
    spreads: [],
    currentRegions: ['usa'],
    description: '美国经典舒适食物，杰斐逊总统从欧洲带回的食谱。'
  },

  // ========== 更多甜点 ==========
  {
    id: 'tiramisu',
    name: '提拉米苏',
    nameEn: 'Tiramisu',
    category: 'dessert',
    ingredients: ['coffee'],
    origin: { location: 'italy', time: { display: '1960年代', displayEn: '1960s' } },
    spreads: [],
    currentRegions: ['italy', 'europe', 'usa'],
    description: '意大利甜点明星，咖啡浸泡的手指饼干配马斯卡彭奶酪。'
  },
  {
    id: 'creme-brulee',
    name: '焦糖布丁',
    nameEn: 'Crème Brûlée',
    alias: ['法式焦糖布蕾'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'france', time: { display: '17世纪', displayEn: '17th century' } },
    spreads: [],
    currentRegions: ['france', 'europe'],
    description: '法式经典甜点，香草蛋奶冻上覆焦糖脆层。',
    descriptionEn: 'French custard with caramelized sugar top.'
  },
  {
    id: 'panna-cotta',
    name: '意式奶冻',
    nameEn: 'Panna Cotta',
    alias: ['奶油布丁'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'italy', time: { display: '近代', displayEn: 'Modern era' } },
    spreads: [],
    currentRegions: ['italy'],
    description: '皮埃蒙特的甜点，奶油凝冻配水果酱或焦糖。',
    descriptionEn: 'Italian cream dessert, silky smooth.'
  },
  {
    id: 'cheesecake',
    name: '芝士蛋糕',
    nameEn: 'Cheesecake',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'greece', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'greece', to: 'usa', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['usa', 'japan', 'europe'],
    description: '起源于古希腊，纽约芝士蛋糕和日式轻芝士蛋糕各有特色。'
  },
  {
    id: 'macaron',
    name: '马卡龙',
    nameEn: 'Macaron',
    category: 'dessert',
    ingredients: ['almond'],
    origin: { location: 'france', time: { display: '16世纪', displayEn: '16th century' } },
    spreads: [],
    currentRegions: ['france', 'japan'],
    description: '法式夹心饼干，拉杜丽和皮埃尔·埃尔梅使其成为奢侈品。'
  },
  {
    id: 'crepe',
    name: '法式薄饼',
    nameEn: 'Crêpe',
    alias: ['可丽饼'],
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'france', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [],
    currentRegions: ['france', 'japan'],
    description: '布列塔尼的传统，薄如纸的煎饼可配甜或咸馅料。'
  },
  {
    id: 'gelato',
    name: '意式冰淇淋',
    nameEn: 'Gelato',
    category: 'dessert',
    ingredients: [],
    origin: { location: 'italy', time: { display: '文艺复兴', displayEn: 'Renaissance' } },
    spreads: [],
    currentRegions: ['italy', 'europe'],
    description: '意大利冰淇淋，比美式冰淇淋更致密绵滑，脂肪含量更低。',
    descriptionEn: 'Italian ice cream, denser and richer.'
  },
  {
    id: 'mochi',
    name: '麻糬',
    nameEn: 'Mochi',
    alias: ['年糕'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'japan', time: { display: '古代', displayEn: 'Ancient times' } },
    spreads: [
      { from: 'japan', to: 'usa', time: { display: '20世纪', displayEn: '20th century' } }
    ],
    currentRegions: ['japan', 'usa', 'taiwan'],
    description: '日本糯米甜点，新年必备食物，麻糬冰淇淋风靡全球。'
  },
  {
    id: 'dorayaki',
    name: '铜锣烧',
    nameEn: 'Dorayaki',
    category: 'dessert',
    ingredients: ['wheat', 'adzuki-bean'],
    origin: { location: 'japan', time: { display: '大正时代', displayEn: 'Taisho era' } },
    spreads: [],
    currentRegions: ['japan'],
    description: '日本和菓子，两片松饼夹红豆馅，哆啦A梦的最爱。'
  },
  {
    id: 'tangyuan',
    name: '汤圆',
    nameEn: 'Tangyuan',
    alias: ['元宵'],
    category: 'dessert',
    ingredients: ['rice'],
    origin: { location: 'china', time: { display: '宋代', displayEn: 'Song Dynasty' } },
    spreads: [
      { from: 'china', to: 'southeast-asia', time: { display: '近代', displayEn: 'Modern era' } }
    ],
    currentRegions: ['china', 'taiwan', 'southeast-asia'],
    description: '元宵节传统食物，糯米团子包芝麻或花生馅。'
  },
  {
    id: 'egg-tart',
    name: '蛋挞',
    nameEn: 'Egg Tart',
    category: 'dessert',
    ingredients: ['wheat'],
    origin: { location: 'portugal', time: { display: '中世纪', displayEn: 'Medieval period' } },
    spreads: [
      { from: 'portugal', to: 'china', time: { display: '殖民时期', displayEn: 'Colonial period' } }
    ],
    currentRegions: ['portugal', 'china', 'malaysia'],
    description: '葡式蛋挞传入澳门后改良，港式蛋挞自成一派。'
  },
  {
    id: 'shaved-ice',
    name: '刨冰',
    nameEn: 'Shaved Ice',
    alias: ['绵绵冰'],
    category: 'dessert',
    ingredients: [],
    origin: { location: 'china', time: { display: '唐代', displayEn: 'Tang Dynasty' } },
    spreads: [
      { from: 'china', to: 'japan', time: { display: '平安时代', displayEn: 'Heian period' } }
    ],
    currentRegions: ['taiwan', 'japan', 'korea'],
    description: '亚洲夏季甜品，台湾芒果冰、日本刨冰、韩国红豆冰各有特色。',
    descriptionEn: 'Asian summer dessert with flavored syrups.'
  }
];
