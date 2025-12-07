// 起源数据类
export class OriginData {
  crops: string[];
  foods: string[];

  constructor(crops: string[], foods: string[]) {
    this.crops = crops;
    this.foods = foods;
  }
}

// 创建起源数据的辅助函数
function createOriginMap(): Map<string, OriginData> {
  const map = new Map<string, OriginData>();

  // 中国
  map.set('china', new OriginData(
    ['rice', 'millet', 'soybean', 'tea', 'peach', 'orange', 'lychee', 'longan', 'persimmon', 'apricot', 'plum-chinese', 'chinese-cabbage', 'bok-choy', 'gai-lan', 'water-chestnut', 'lotus-root', 'taro', 'star-anise', 'sichuan-pepper', 'mulberry', 'jujube', 'loquat', 'waxberry', 'water-spinach', 'bean-sprout', 'scallion', 'ginkgo-nut', 'lotus-seed', 'watermelon-seed'],
    ['noodles', 'rice-cooked', 'dumpling', 'fried-rice', 'soy-sauce', 'tofu', 'congee', 'mantou', 'baozi', 'mapo-tofu', 'kung-pao-chicken', 'peking-duck', 'dim-sum', 'spring-roll', 'hot-pot', 'edamame', 'ice-cream', 'mooncake', 'tangyuan', 'oyster-sauce', 'hoisin-sauce', 'kombucha', 'baijiu', 'sauerkraut', 'zhajiangmian', 'lanzhou-lamian', 'xiaolongbao', 'char-siu', 'zongzi', 'malatang', 'jianbing', 'youtiao', 'huangjiu', 'luosifen', 'tanghulu', 'stinky-tofu', 'hot-dry-noodles', 'biangbiang-noodles', 'wonton', 'hainanese-chicken-rice', 'shaved-ice']
  ));
  map.set('yangtze-river', new OriginData(['rice'], []));
  map.set('yellow-river', new OriginData(['millet'], []));
  map.set('yunnan', new OriginData(['tea', 'orange', 'buckwheat'], []));

  // 印度次大陆
  map.set('india', new OriginData(
    ['cucumber', 'sesame', 'pepper-black', 'eggplant', 'mango', 'lemon', 'lime', 'tamarind', 'cardamom', 'turmeric', 'ginger', 'cotton', 'jute', 'mung-bean', 'pigeon-pea', 'black-gram', 'fenugreek'],
    ['curry', 'roti', 'biryani', 'tandoori-chicken', 'butter-chicken', 'dal', 'gulab-jamun', 'chai', 'lassi', 'chutney', 'palak-paneer', 'dosa', 'idli', 'sambar', 'korma', 'vindaloo', 'kheer']
  ));
  map.set('south-india', new OriginData(['pepper-black', 'cardamom', 'coconut'], ['dosa', 'idli', 'sambar']));

  // 日本
  map.set('japan', new OriginData(
    ['wasabi-plant', 'shiso', 'edamame-variety'],
    ['sushi', 'soba', 'udon', 'ramen', 'tempura', 'teriyaki', 'sashimi', 'miso', 'natto', 'mochi', 'dango', 'dorayaki', 'taiyaki', 'sake', 'matcha-latte', 'wasabi', 'teriyaki-sauce', 'ponzu', 'mirin', 'tonkatsu', 'okonomiyaki', 'takoyaki', 'gyudon', 'oyakodon', 'katsudon', 'yakitori', 'unagi', 'shabu-shabu', 'sukiyaki', 'tamagoyaki', 'chawanmushi', 'onigiri', 'ochazuke']
  ));

  // 韩国
  map.set('korea', new OriginData(
    ['korean-ginseng'],
    ['kimchi', 'bibimbap', 'bulgogi', 'gochujang', 'soju', 'samgyeopsal', 'japchae', 'sundubu-jjigae', 'tteokbokki', 'kimbap', 'jjajangmyeon', 'chimaek', 'naengmyeon']
  ));

  // 台湾
  map.set('taiwan', new OriginData([], ['bubble-tea']));

  // 东南亚
  map.set('southeast-asia', new OriginData(['banana', 'ginger', 'coconut', 'durian', 'mangosteen', 'rambutan', 'jackfruit', 'lemongrass', 'galangal', 'dragon-fruit', 'starfruit', 'pandan'], []));
  map.set('vietnam', new OriginData([], ['pho', 'fish-sauce', 'bun-cha', 'banh-xeo']));
  map.set('thailand', new OriginData(['thai-basil', 'kaffir-lime'], ['pad-thai', 'tom-yum', 'green-curry', 'sriracha']));
  map.set('indonesia', new OriginData(['clove', 'nutmeg'], ['satay', 'nasi-goreng', 'tempeh', 'sambal', 'rendang', 'gado-gado']));
  map.set('malaysia', new OriginData(['palm'], ['laksa', 'mee-goreng', 'roti-canai', 'nasi-lemak', 'char-kway-teow', 'bak-kut-teh']));
  map.set('singapore', new OriginData([], ['chili-crab']));

  // 欧洲
  map.set('italy', new OriginData(
    ['fennel', 'artichoke', 'broccoli', 'cauliflower', 'zucchini'],
    ['pizza', 'pasta', 'risotto', 'polenta', 'tiramisu', 'espresso', 'cappuccino', 'latte', 'pesto', 'balsamic-vinegar', 'panna-cotta', 'gelato']
  ));
  map.set('switzerland', new OriginData([], ['chocolate']));
  map.set('belgium', new OriginData([], ['french-fries', 'waffle']));
  map.set('france', new OriginData(
    ['shallot', 'endive', 'tarragon'],
    ['croissant', 'steak-frites', 'coq-au-vin', 'ratatouille', 'crepe', 'macaron', 'champagne', 'mustard', 'baguette', 'quiche', 'beef-bourguignon', 'escargot', 'creme-brulee']
  ));
  map.set('spain', new OriginData(
    [],
    ['paella', 'empanada', 'churros', 'flan', 'sangria', 'horchata', 'mayonnaise', 'aioli', 'paella-valenciana', 'gazpacho']
  ));
  map.set('portugal', new OriginData([], ['egg-tart']));
  map.set('germany', new OriginData([], ['bratwurst', 'pretzel', 'sauerkraut']));
  map.set('austria', new OriginData([], ['croissant', 'schnitzel']));
  map.set('uk', new OriginData(
    [],
    ['fish-and-chips', 'shepherd-pie', 'roast-beef', 'apple-pie', 'cider', 'ginger-beer', 'worcestershire-sauce']
  ));
  map.set('ireland', new OriginData([], ['whiskey']));
  map.set('greece', new OriginData([], ['gyros', 'cheesecake', 'tzatziki', 'moussaka', 'souvlaki']));
  map.set('netherlands', new OriginData(['carrot-orange'], []));
  map.set('russia', new OriginData([], ['vodka', 'borscht', 'beef-stroganoff', 'pelmeni']));
  map.set('poland', new OriginData([], ['pierogi']));
  map.set('romania', new OriginData([], ['pastrami']));

  // 中东
  map.set('middle-east', new OriginData(
    ['fig', 'date', 'pomegranate', 'pistachio', 'sumac', 'nigella'],
    ['hummus', 'pita', 'jalebi', 'tahini', 'mansaf', 'kunafa']
  ));
  map.set('fertile-crescent', new OriginData(['wheat', 'barley', 'grape', 'lentil', 'chickpea', 'flax', 'olive'], ['wine']));
  map.set('mesopotamia', new OriginData(['onion', 'garlic', 'leek'], ['beer', 'pickles', 'vinegar']));
  map.set('turkey', new OriginData(
    ['cherry', 'apricot', 'hazelnut', 'walnut'],
    ['shawarma', 'kebab', 'baklava', 'turkish-coffee']
  ));
  map.set('iran', new OriginData(['spinach', 'alfalfa', 'saffron', 'asafoetida'], []));
  map.set('egypt', new OriginData(['watermelon'], ['bread', 'falafel', 'lemonade']));
  map.set('lebanon', new OriginData([], ['baba-ganoush', 'tabbouleh', 'fattoush', 'kibbeh']));
  map.set('israel', new OriginData([], []));
  map.set('tunisia', new OriginData([], ['harissa']));

  // 非洲
  map.set('ethiopia', new OriginData(['coffee', 'teff', 'sorghum', 'ensete'], ['coffee-drink', 'injera']));
  map.set('horn-of-africa', new OriginData(['sorghum', 'coffee'], []));
  map.set('west-africa', new OriginData(['watermelon', 'okra', 'black-eyed-pea', 'yam', 'cola-nut', 'palm'], ['jollof-rice']));
  map.set('morocco', new OriginData([], ['couscous', 'tagine']));

  // 美洲
  map.set('usa', new OriginData(
    ['sunflower', 'cranberry', 'blueberry', 'pecan', 'jerusalem-artichoke'],
    ['hamburger', 'ketchup', 'poke', 'jambalaya', 'gumbo', 'bbq-ribs', 'fried-chicken', 'clam-chowder', 'hot-dog', 'buffalo-wings', 'blt-sandwich', 'club-sandwich', 'mac-and-cheese', 'chips', 'onion-rings', 'brownie', 'cookie', 'donut', 'pancake', 'pumpkin-pie', 'pecan-pie', 'smoothie', 'tabasco']
  ));
  map.set('mesoamerica', new OriginData(
    ['corn', 'chili', 'tomato', 'squash', 'avocado', 'papaya', 'cacao', 'vanilla', 'sweet-potato', 'common-bean', 'pumpkin'],
    ['tortilla', 'popcorn', 'hot-chocolate']
  ));
  map.set('mexico', new OriginData(
    ['chia', 'agave', 'jicama'],
    ['tacos', 'nachos', 'tequila', 'tres-leches', 'burrito', 'guacamole', 'pozole', 'mole']
  ));
  map.set('andes', new OriginData(['potato', 'tomato', 'quinoa', 'amaranth', 'lucuma', 'cherimoya'], []));
  map.set('amazon', new OriginData(['cacao', 'pineapple', 'cashew', 'brazil-nut', 'passion-fruit', 'guarana', 'acai', 'cassava'], []));
  map.set('south-america', new OriginData(['peanut', 'yerba-mate', 'stevia'], []));
  map.set('peru', new OriginData([], ['ceviche']));
  map.set('brazil', new OriginData([], ['feijoada', 'churrasco']));
  map.set('argentina', new OriginData([], ['chimichurri', 'asado', 'empanada']));
  map.set('colombia', new OriginData([], ['arepa']));
  map.set('caribbean', new OriginData(['allspice'], ['rum']));
  map.set('canada', new OriginData(['maple', 'wild-rice'], ['poutine']));

  // 大洋洲
  map.set('papua-new-guinea', new OriginData(['banana', 'sugarcane', 'taro', 'breadfruit'], []));
  map.set('australia', new OriginData(['macadamia'], ['meat-pie', 'vegemite-toast']));
  map.set('new-zealand', new OriginData(['kiwi'], ['pavlova']));

  // 中亚
  map.set('central-asia', new OriginData(['apple', 'onion', 'garlic', 'carrot', 'walnut', 'almond', 'apricot', 'grape', 'melon'], ['naan', 'samosa']));

  return map;
}

// 创建食材到食物映射的辅助函数
function createIngredientMap(): Map<string, string[]> {
  const map = new Map<string, string[]>();

  // 谷物
  map.set('wheat', ['bread', 'noodles', 'dumpling', 'pizza', 'pasta', 'hamburger', 'soy-sauce', 'tortilla', 'mantou', 'baozi', 'roti', 'naan', 'pita', 'couscous', 'udon', 'croissant', 'schnitzel', 'tempura', 'pretzel', 'crepe', 'macaron', 'cookie', 'donut', 'pancake', 'waffle', 'apple-pie', 'pumpkin-pie', 'cheesecake', 'brownie', 'churros', 'flan', 'tres-leches', 'jalebi', 'spring-roll', 'samosa', 'empanada', 'meat-pie', 'vegemite-toast', 'fish-and-chips', 'fried-chicken', 'hot-dog', 'onion-rings', 'baijiu']);
  map.set('rice', ['rice-cooked', 'sushi', 'fried-rice', 'congee', 'biryani', 'risotto', 'paella', 'pho', 'pad-thai', 'bibimbap', 'jollof-rice', 'jambalaya', 'gumbo', 'miso', 'sake', 'soju', 'baijiu', 'mochi', 'dango', 'tangyuan', 'horchata', 'mirin', 'gochujang', 'nasi-goreng', 'laksa']);
  map.set('corn', ['tortilla', 'tacos', 'polenta', 'popcorn', 'nachos', 'arepa']);
  map.set('barley', ['beer', 'whiskey']);
  map.set('buckwheat', ['soba']);
  map.set('oat', []);
  map.set('sorghum', ['baijiu']);
  map.set('millet', []);
  map.set('quinoa', []);
  map.set('rye', []);
  map.set('teff', ['injera']);

  // 蔬菜
  map.set('potato', ['french-fries', 'chips', 'shepherd-pie', 'steak-frites', 'fish-and-chips', 'clam-chowder', 'poutine', 'samosa', 'vodka']);
  map.set('tomato', ['pizza', 'pasta', 'ketchup', 'hamburger', 'ratatouille', 'gyros', 'jollof-rice', 'jambalaya', 'butter-chicken', 'bbq-ribs', 'blt-sandwich', 'club-sandwich']);
  map.set('onion', ['hamburger', 'ratatouille', 'gyros', 'ceviche']);
  map.set('garlic', ['curry', 'kimchi', 'hummus', 'butter-chicken', 'ratatouille', 'pesto', 'chimichurri', 'sriracha', 'sambal', 'aioli', 'tzatziki']);
  map.set('cabbage', ['kimchi', 'sauerkraut']);
  map.set('eggplant', ['ratatouille']);
  map.set('spinach', []);
  map.set('cucumber', ['pickles', 'tzatziki']);
  map.set('carrot', []);
  map.set('lettuce', []);
  map.set('celery', []);
  map.set('broccoli', []);
  map.set('cauliflower', []);
  map.set('asparagus', []);
  map.set('leek', []);
  map.set('pumpkin', ['pumpkin-pie']);
  map.set('zucchini', ['ratatouille']);
  map.set('sweet-potato', []);
  map.set('okra', ['gumbo']);

  // 水果
  map.set('grape', ['wine', 'champagne', 'sangria', 'balsamic-vinegar', 'coq-au-vin']);
  map.set('apple', ['apple-pie', 'cider']);
  map.set('banana', ['smoothie']);
  map.set('orange', ['sangria']);
  map.set('lemon', ['ceviche', 'tom-yum', 'hummus', 'lemonade', 'ponzu']);
  map.set('mango', ['lassi', 'chutney']);
  map.set('pineapple', []);
  map.set('strawberry', ['smoothie']);
  map.set('peach', []);
  map.set('pear', ['bulgogi']);
  map.set('cherry', []);
  map.set('watermelon', []);
  map.set('coconut', ['green-curry', 'laksa']);
  map.set('avocado', []);
  map.set('papaya', []);
  map.set('fig', []);
  map.set('date', []);
  map.set('pomegranate', []);

  // 豆类
  map.set('soybean', ['soy-sauce', 'tofu', 'miso', 'natto', 'tempeh', 'edamame', 'teriyaki', 'hoisin-sauce', 'gochujang', 'teriyaki-sauce', 'ponzu', 'poke', 'bulgogi']);
  map.set('chickpea', ['hummus', 'falafel']);
  map.set('lentil', ['dal']);
  map.set('peanut', ['pad-thai', 'satay', 'kung-pao-chicken']);
  map.set('mung-bean', []);
  map.set('red-bean', ['dorayaki', 'taiyaki']);
  map.set('black-bean', ['feijoada']);
  map.set('broad-bean', ['falafel']);

  // 坚果
  map.set('walnut', ['baklava']);
  map.set('almond', ['macaron']);
  map.set('cashew', []);
  map.set('pistachio', ['baklava']);
  map.set('hazelnut', []);
  map.set('chestnut', []);
  map.set('macadamia', []);
  map.set('pine-nut', ['pesto']);
  map.set('pecan', ['pecan-pie']);

  // 香料
  map.set('chili', ['curry', 'kimchi', 'tacos', 'hot-pot', 'mapo-tofu', 'kung-pao-chicken', 'tom-yum', 'green-curry', 'jollof-rice', 'ceviche', 'nachos', 'buffalo-wings', 'tandoori-chicken', 'butter-chicken', 'sambal', 'harissa', 'chutney', 'sriracha', 'tabasco', 'gochujang', 'chimichurri']);
  map.set('pepper-black', ['pastrami']);
  map.set('ginger', ['curry', 'kimchi', 'tom-yum', 'green-curry', 'butter-chicken', 'tagine', 'chai', 'chutney', 'teriyaki-sauce', 'ginger-beer']);
  map.set('cinnamon', ['biryani', 'tagine', 'apple-pie', 'pumpkin-pie', 'chai', 'horchata']);
  map.set('clove', ['chai']);
  map.set('nutmeg', []);
  map.set('turmeric', ['curry', 'satay', 'tandoori-chicken', 'dal']);
  map.set('cumin', ['curry', 'biryani', 'satay', 'tandoori-chicken', 'dal', 'samosa', 'tagine', 'harissa']);
  map.set('coriander', ['curry', 'pastrami', 'harissa']);
  map.set('cardamom', ['biryani', 'chai', 'gulab-jamun']);
  map.set('saffron', []);
  map.set('vanilla', []);
  map.set('star-anise', []);
  map.set('sichuan-pepper', ['mapo-tofu', 'hot-pot']);
  map.set('mustard', ['mustard']);
  map.set('fennel', []);
  map.set('bay-leaf', []);
  map.set('caraway', ['harissa']);

  // 饮料作物
  map.set('tea', ['tea-drink', 'bubble-tea', 'matcha-latte', 'chai', 'kombucha']);
  map.set('coffee', ['coffee-drink', 'espresso', 'cappuccino', 'latte', 'tiramisu']);
  map.set('cacao', ['chocolate', 'hot-chocolate', 'tiramisu', 'brownie']);
  map.set('hop', ['beer']);
  map.set('agave', ['tequila']);
  map.set('tapioca', ['bubble-tea']);

  // 油料和糖料
  map.set('olive', ['pizza', 'hummus', 'ratatouille', 'pesto', 'chimichurri', 'mayonnaise', 'aioli']);
  map.set('sesame', ['hummus', 'tahini', 'bibimbap', 'bulgogi', 'poke']);
  map.set('sunflower', []);
  map.set('rapeseed', []);
  map.set('palm', []);
  map.set('flax', []);
  map.set('sugarcane', ['chocolate', 'rum', 'ketchup', 'ice-cream', 'pavlova', 'churros', 'flan', 'tres-leches', 'gulab-jamun', 'jalebi', 'brownie', 'cookie', 'donut', 'waffle', 'apple-pie', 'pumpkin-pie', 'pecan-pie', 'macaron', 'hot-chocolate', 'lemonade']);
  map.set('sugar-beet', []);
  map.set('maple', ['pancake']);

  return map;
}

// 按起源地索引的作物和食物
export const ORIGIN_BY_LOCATION: Map<string, OriginData> = createOriginMap();

// 作物到使用它的食物的索引
export const INGREDIENT_TO_FOODS: Map<string, string[]> = createIngredientMap();
