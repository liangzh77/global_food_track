# 食物全球史 - 架构说明

## 项目结构

```
global_food_track/
├── AppScope/                    # 鸿蒙应用全局配置
│   └── resources/
├── entry/                       # 鸿蒙应用主模块
│   └── src/main/
│       ├── ets/                 # ArkTS 源码
│       │   ├── common/          # 通用常量和工具
│       │   ├── data/            # 内嵌数据（编译时）
│       │   ├── entryability/    # 应用入口
│       │   ├── models/          # 数据模型定义
│       │   ├── pages/           # 页面组件
│       │   └── services/        # 数据服务
│       └── resources/
│           └── rawfile/data/    # JSON 数据文件
├── knowledge-base/              # 知识库源数据
│   ├── entities/                # 实体数据
│   ├── relations/               # 关系数据
│   └── schema/                  # 类型定义
├── web/                         # Web 调试版本
│   └── src/
│       ├── pages/               # Vue 页面组件
│       ├── services/            # 数据服务
│       ├── router/              # 路由配置
│       └── types/               # TypeScript 类型
├── specs/                       # 项目文档
└── hvigor/                      # 构建配置
```

## 鸿蒙应用架构

### 分层架构

```
┌─────────────────────────────────────┐
│            Pages (页面层)            │
│  Index / CategoryList / CropDetail  │
│  FoodDetail / LocationDetail /      │
│  SearchResult / EraDetail           │
├─────────────────────────────────────┤
│          Services (服务层)           │
│    DataService / TimelineService    │
├─────────────────────────────────────┤
│           Models (模型层)            │
│  Crop / Food / Location / Era /     │
│  TimelineEvent / TimelineFilter     │
├─────────────────────────────────────┤
│            Data (数据层)             │
│   CropsData / FoodsData / ERAS      │
└─────────────────────────────────────┘
```

### 页面路由

| 页面 | 路径 | 说明 |
|------|------|------|
| Index | pages/Index | 首页，四 Tab 布局（作物/食物/地区/时间线） |
| CategoryList | pages/CategoryList | 类别列表页 |
| CropDetail | pages/CropDetail | 作物详情页 |
| FoodDetail | pages/FoodDetail | 食物详情页 |
| LocationDetail | pages/LocationDetail | 地区详情页 |
| SearchResult | pages/SearchResult | 搜索结果页 |
| EraDetail | pages/EraDetail | 时代详情页（时间线事件列表） |

### 数据流

```
┌──────────────┐     初始化      ┌──────────────┐
│  内嵌数据     │ ───────────▶   │  DataService  │
│  (CropsData)  │               │   (单例)       │
└──────────────┘               └──────────────┘
                                      │
                                      ▼ 查询
                              ┌──────────────┐
                              │    Pages     │
                              │  (UI 组件)   │
                              └──────────────┘
```

### 核心组件

#### DataService（数据服务）
单例模式，负责：
- 初始化加载所有数据到内存
- 提供各类查询方法
- 处理数据关联（如作物-食物关系）

#### TimelineService（时间线服务）
单例模式，负责：
- 从作物和食物数据构建时间线事件
- 解析显示文本中的年份（如"16世纪"→1550年，"唐代"→700年）
- 按时代分组事件
- 提供事件筛选和统计功能

#### 页面组件
- 使用 ArkUI 声明式 UI
- `@State` 管理页面状态
- `@Builder` 构建可复用 UI 片段

## Web 版本架构

### 技术选型
- **Vue 3 Composition API**: 现代响应式框架
- **Vue Router 4**: SPA 路由
- **Vite**: 快速开发和构建
- **TypeScript**: 类型安全

### 页面对应关系

| 鸿蒙页面 | Web 页面 |
|----------|----------|
| pages/Index.ets | pages/Index.vue |
| pages/CategoryList.ets | pages/CategoryList.vue |
| pages/CropDetail.ets | pages/CropDetail.vue |
| pages/FoodDetail.ets | pages/FoodDetail.vue |
| pages/LocationDetail.ets | pages/LocationDetail.vue |
| pages/SearchResult.ets | pages/SearchResult.vue |
| pages/EraDetail.ets | pages/EraDetail.vue |

### 数据共享

Web 版本通过符号链接或复制方式使用鸿蒙版的 rawfile 数据：
```
web/public/data/ → entry/src/main/resources/rawfile/data/
```

## 数据架构

### 数据存储位置

1. **知识库源数据** (`knowledge-base/`)
   - 原始数据的维护位置
   - TypeScript 类型定义

2. **应用数据** (`entry/src/main/resources/rawfile/data/`)
   - JSON 格式
   - 按实体类型和类别组织

3. **内嵌数据** (`entry/src/main/ets/data/`)
   - 编译时嵌入的 TypeScript 数据
   - 用于快速访问，避免运行时 IO

### 索引数据

为提升查询效率，预计算了以下索引：
- `origin-by-location.json`: 按地点索引的起源数据
- `ingredient-to-foods.json`: 作物到食物的关系
- `by-category.json`: 按类别索引
- `spread-routes.json`: 传播路线数据

## 状态管理

### 鸿蒙版
- 使用 ArkUI 的 `@State` 装饰器
- 页面级状态管理
- 全局数据通过 DataService 单例共享

### Web 版
- Vue 3 响应式系统
- 组件级状态 (`ref`, `reactive`)
- 服务层复用数据

## 扩展性考虑

### 数据扩展
- JSON 数据格式便于扩充
- 关系数据可增量更新

### 功能扩展
- 模块化页面设计
- 服务层抽象便于添加新查询

### 平台扩展
- Web 版可作为其他平台的参考实现
- 数据层与 UI 层分离，便于移植
