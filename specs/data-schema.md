# 食物全球史 - 数据模型

## 概述

本项目使用结构化的 JSON 数据存储食物、作物和地理位置信息。数据模型设计遵循以下原则：
- 实体独立存储，通过 ID 关联
- 预计算索引提升查询效率
- 支持模糊时间表示

## 基础类型

### TimePeriod（时间表示）

```typescript
interface TimePeriod {
  year?: number;     // 具体年份，负数表示公元前
  display: string;   // 显示文本，如 "公元前9500年左右"、"16世纪"
}
```

**示例**:
```json
{ "year": -9500, "display": "公元前9500年左右" }
{ "year": 1493, "display": "1493年" }
{ "display": "16世纪" }
```

### LocationType（位置类型）

```typescript
type LocationType = 'continent' | 'country' | 'region';
```

| 值 | 说明 | 示例 |
|----|------|------|
| continent | 大洲 | 亚洲、欧洲 |
| country | 国家 | 中国、日本 |
| region | 地区 | 长江流域、新月沃地 |

## 核心实体

### Location（地理位置）

```typescript
interface Location {
  id: string;           // 唯一标识，如 "china", "yangtze-river"
  name: string;         // 显示名称，如 "中国", "长江流域"
  type: LocationType;   // 位置类型
  parent?: string;      // 父级位置 ID（大洲无父级）
}
```

**层级关系**:
```
continent (大洲)
  └── country (国家)
        └── region (地区)
```

**示例**:
```json
{ "id": "asia", "name": "亚洲", "type": "continent" }
{ "id": "china", "name": "中国", "type": "country", "parent": "asia" }
{ "id": "yangtze-river", "name": "长江流域", "type": "region", "parent": "china" }
```

### Crop（作物）

```typescript
interface Crop {
  id: string;                    // 唯一标识
  name: string;                  // 名称
  alias?: string[];              // 别名
  category: CropCategory;        // 类别
  origin: {
    location: string;            // 起源地 ID
    time: TimePeriod;            // 起源时间
  };
  spreads: SpreadEvent[];        // 传播历史
  currentRegions: string[];      // 当前主产区 ID 列表
  description: string;           // 简介
}
```

**作物类别 (CropCategory)**:
| 值 | 说明 | 示例 |
|----|------|------|
| grain | 谷物 | 小麦、水稻、玉米 |
| vegetable | 蔬菜 | 番茄、土豆、胡萝卜 |
| fruit | 水果 | 苹果、香蕉、葡萄 |
| legume | 豆类 | 大豆、花生、豌豆 |
| spice | 香料 | 辣椒、胡椒、肉桂 |
| beverage | 饮料作物 | 茶、咖啡、可可 |
| oil | 油料作物 | 橄榄、芝麻、油菜 |
| sugar | 糖料作物 | 甘蔗、甜菜 |
| nut | 坚果 | 核桃、杏仁、腰果 |

**示例**:
```json
{
  "id": "rice",
  "name": "水稻",
  "alias": ["大米", "稻米"],
  "category": "grain",
  "origin": {
    "location": "yangtze-river",
    "time": { "year": -9000, "display": "公元前9000年左右" }
  },
  "spreads": [
    { "from": "china", "to": "japan", "time": { "year": -300, "display": "公元前300年" }, "via": "弥生时代移民" }
  ],
  "currentRegions": ["china", "india", "indonesia", "vietnam", "thailand", "japan"],
  "description": "养活全球一半以上人口的主粮，尤其在亚洲地区具有核心地位。"
}
```

### Food（食物）

```typescript
interface Food {
  id: string;                    // 唯一标识
  name: string;                  // 名称
  alias?: string[];              // 别名
  category: FoodCategory;        // 类别
  ingredients: string[];         // 主要食材（作物 ID 列表）
  origin: {
    location: string;            // 起源地 ID
    time: TimePeriod;            // 起源时间
  };
  spreads: SpreadEvent[];        // 传播历史
  currentRegions: string[];      // 当前流行地区
  description: string;           // 简介
}
```

**食物类别 (FoodCategory)**:
| 值 | 说明 | 示例 |
|----|------|------|
| staple | 主食 | 面包、米饭、面条 |
| dish | 菜肴 | 披萨、寿司、咖喱 |
| beverage | 饮品 | 啤酒、葡萄酒、茶饮 |
| dessert | 甜点 | 蛋糕、巧克力、冰淇淋 |
| snack | 小吃 | 薯条、爆米花 |
| condiment | 调味品 | 酱油、番茄酱、醋 |
| preserved | 腌制/加工食品 | 泡菜、腊肉、奶酪 |

### SpreadEvent（传播事件）

```typescript
interface SpreadEvent {
  from: string;      // 起始地点 ID
  to: string;        // 目标地点 ID
  time: TimePeriod;  // 传播时间
  via?: string;      // 传播途径/历史背景（可选）
}
```

**示例**:
```json
{
  "from": "mexico",
  "to": "spain",
  "time": { "year": 1493, "display": "1493年" },
  "via": "哥伦布第二次航行"
}
```

### Era（时代）

```typescript
interface Era {
  id: string;           // 唯一标识
  name: string;         // 时代名称
  icon: string;         // 图标（emoji）
  startYear: number;    // 开始年份（负数表示公元前）
  endYear: number;      // 结束年份
  description: string;  // 时代描述
}
```

**预定义时代**:
| ID | 名称 | 时间范围 |
|----|------|----------|
| prehistoric | 史前时代 | 公元前10000年 - 公元前5000年 |
| ancient | 古代文明 | 公元前5000年 - 公元500年 |
| medieval | 中世纪 | 500年 - 1500年 |
| exploration | 大航海时代 | 1500年 - 1800年 |
| modern | 近代 | 1800年 - 1950年 |
| contemporary | 现代 | 1950年 - 至今 |

### TimelineEvent（时间线事件）

```typescript
interface TimelineEvent {
  id: string;                          // 唯一标识
  entityId: string;                    // 关联的作物/食物 ID
  entityType: 'crop' | 'food';         // 实体类型
  eventType: 'origin' | 'spread';      // 事件类型
  year: number;                        // 年份（用于排序）
  displayTime: string;                 // 显示时间文本
  name: string;                        // 作物/食物名称
  description: string;                 // 描述
  location?: string;                   // 起源地名称（起源事件）
  locationId?: string;                 // 起源地 ID
  fromLocation?: string;               // 起始地名称（传播事件）
  fromLocationId?: string;             // 起始地 ID
  toLocation?: string;                 // 目标地名称（传播事件）
  toLocationId?: string;               // 目标地 ID
  via?: string;                        // 传播途径
}
```

### TimelineFilter（时间线筛选）

```typescript
interface TimelineFilter {
  entityType: 'all' | 'crop' | 'food'; // 实体类型筛选
  eventType: 'all' | 'origin' | 'spread'; // 事件类型筛选
  keyword: string;                     // 关键词搜索
}
```

## 索引数据

### origin-by-location（按地点索引的起源）

```typescript
interface OriginByLocationIndex {
  [locationId: string]: {
    crops: string[];   // 该地起源的作物 ID 列表
    foods: string[];   // 该地起源的食物 ID 列表
  };
}
```

### ingredient-to-foods（食材到食物的关系）

```typescript
interface IngredientIndex {
  [cropId: string]: string[];  // 作物 ID → 使用该作物的食物 ID 列表
}
```

### by-category（按类别索引）

```typescript
interface ByCategoryIndex {
  crops: { [category: string]: string[] };
  foods: { [category: string]: string[] };
}
```

## 数据文件组织

```
rawfile/data/
├── crops/
│   ├── grains.json              # 谷物
│   ├── vegetables.json          # 蔬菜
│   ├── fruits.json              # 水果
│   ├── legumes-and-nuts.json    # 豆类和坚果
│   └── beverages-and-spices.json # 饮料作物和香料
├── foods/
│   ├── staples.json             # 主食
│   ├── dishes.json              # 菜肴
│   ├── beverages.json           # 饮品
│   └── condiments-and-others.json # 调味品等
├── locations/
│   ├── continents.json          # 大洲
│   ├── countries.json           # 国家
│   └── regions.json             # 地区
└── relations/
    ├── origin-by-location.json  # 起源地索引
    ├── ingredient-to-foods.json # 食材关系
    ├── by-category.json         # 类别索引
    └── spread-routes.json       # 传播路线
```

## ID 命名规范

- 使用小写英文
- 多词用连字符 `-` 连接
- 地区 ID 应具有描述性

**示例**:
- 作物: `wheat`, `rice`, `corn`
- 食物: `bread`, `sushi`, `pizza`
- 地点: `china`, `yangtze-river`, `fertile-crescent`

## 数据扩展指南

### 添加新作物
1. 在对应类别的 JSON 文件中添加作物数据
2. 更新 `origin-by-location.json` 索引
3. 如果该作物是某食物的原料，更新 `ingredient-to-foods.json`
4. 更新 `by-category.json` 索引

### 添加新地点
1. 在对应层级的 JSON 文件中添加地点
2. 确保 `parent` 字段正确指向上级位置
3. 如有起源数据，更新 `origin-by-location.json`
