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

  map.set('china', new OriginData(['rice', 'millet', 'soybean', 'tea', 'peach'], ['noodles', 'rice-cooked', 'dumpling', 'fried-rice', 'soy-sauce', 'tofu']));
  map.set('yangtze-river', new OriginData(['rice'], []));
  map.set('yellow-river', new OriginData(['millet'], []));
  map.set('yunnan', new OriginData(['tea', 'orange'], []));
  map.set('india', new OriginData(['cucumber', 'sesame', 'pepper-black'], ['curry']));
  map.set('japan', new OriginData([], ['sushi']));
  map.set('korea', new OriginData([], ['kimchi']));
  map.set('southeast-asia', new OriginData(['banana', 'ginger'], []));
  map.set('central-asia', new OriginData(['apple', 'onion', 'garlic'], []));
  map.set('italy', new OriginData([], ['pizza', 'pasta']));
  map.set('switzerland', new OriginData([], ['chocolate']));
  map.set('belgium', new OriginData([], ['french-fries']));
  map.set('mediterranean', new OriginData(['cabbage', 'olive', 'grape'], []));
  map.set('middle-east', new OriginData([], ['hummus']));
  map.set('fertile-crescent', new OriginData(['wheat', 'barley', 'grape'], ['wine']));
  map.set('mesopotamia', new OriginData([], ['beer']));
  map.set('turkey', new OriginData(['chickpea'], []));
  map.set('ethiopia', new OriginData(['coffee'], ['coffee-drink']));
  map.set('horn-of-africa', new OriginData(['sorghum'], []));
  map.set('west-africa', new OriginData(['watermelon'], []));
  map.set('usa', new OriginData([], ['hamburger', 'ketchup']));
  map.set('mesoamerica', new OriginData(['corn', 'chili'], ['tortilla']));
  map.set('mexico', new OriginData([], ['tacos']));
  map.set('andes', new OriginData(['potato', 'tomato'], []));
  map.set('amazon', new OriginData(['cacao'], []));
  map.set('south-america', new OriginData(['peanut'], []));
  map.set('papua-new-guinea', new OriginData(['banana', 'sugarcane'], []));
  map.set('south-india', new OriginData(['pepper-black'], []));
  map.set('egypt', new OriginData([], ['bread']));

  return map;
}

// 创建食材到食物映射的辅助函数
function createIngredientMap(): Map<string, string[]> {
  const map = new Map<string, string[]>();

  map.set('wheat', ['bread', 'noodles', 'dumpling', 'pizza', 'pasta', 'hamburger', 'soy-sauce']);
  map.set('rice', ['rice-cooked', 'sushi', 'fried-rice']);
  map.set('corn', ['tortilla', 'tacos']);
  map.set('barley', ['beer']);
  map.set('potato', ['french-fries']);
  map.set('tomato', ['pizza', 'pasta', 'ketchup']);
  map.set('chili', ['curry', 'kimchi']);
  map.set('onion', ['hamburger']);
  map.set('garlic', ['curry', 'kimchi', 'hummus']);
  map.set('cabbage', ['kimchi']);
  map.set('grape', ['wine']);
  map.set('soybean', ['soy-sauce', 'tofu']);
  map.set('chickpea', ['hummus']);
  map.set('tea', ['tea-drink']);
  map.set('coffee', ['coffee-drink']);
  map.set('cacao', ['chocolate']);
  map.set('olive', ['pizza', 'hummus']);
  map.set('sesame', ['hummus']);
  map.set('sugarcane', ['chocolate']);
  map.set('ginger', ['curry']);

  return map;
}

// 按起源地索引的作物和食物
export const ORIGIN_BY_LOCATION: Map<string, OriginData> = createOriginMap();

// 作物到使用它的食物的索引
export const INGREDIENT_TO_FOODS: Map<string, string[]> = createIngredientMap();
