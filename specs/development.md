# 食物全球史 - 开发指南

## 环境准备

### 鸿蒙开发环境

1. **安装 DevEco Studio**
   - 下载地址: [华为开发者官网](https://developer.harmonyos.com/cn/develop/deveco-studio)
   - 版本要求: DevEco Studio 4.0 或更高

2. **配置 SDK**
   - 打开 DevEco Studio
   - 进入 Settings → SDK Manager
   - 安装 HarmonyOS SDK

3. **模拟器/真机**
   - 可使用 DevEco Studio 内置模拟器
   - 或连接鸿蒙真机进行调试

### Web 开发环境

1. **Node.js**
   - 版本要求: Node.js 18+
   - 推荐使用 nvm 管理版本

2. **安装依赖**
   ```bash
   cd web
   npm install
   ```

## 开发工作流

### 鸿蒙应用开发

1. **启动项目**
   - 使用 DevEco Studio 打开项目根目录
   - 等待项目同步完成

2. **运行应用**
   - 点击工具栏的运行按钮
   - 选择目标设备（模拟器或真机）

3. **代码结构**
   ```
   entry/src/main/ets/
   ├── pages/           # 页面组件
   ├── services/        # 数据服务
   ├── models/          # 数据模型
   ├── data/            # 内嵌数据
   └── common/          # 常量和工具
   ```

### Web 版本开发

1. **启动开发服务器**
   ```bash
   cd web
   npm run dev
   ```
   访问 http://localhost:5173

2. **构建生产版本**
   ```bash
   npm run build
   ```

3. **预览生产构建**
   ```bash
   npm run preview
   ```

## 添加新页面

### 鸿蒙版

1. 在 `entry/src/main/ets/pages/` 创建新的 `.ets` 文件

2. 注册路由：编辑 `entry/src/main/resources/base/profile/main_pages.json`
   ```json
   {
     "src": ["pages/Index", "pages/NewPage"]
   }
   ```

3. 页面基本结构：
   ```typescript
   @Entry
   @Component
   struct NewPage {
     @State data: string = '';

     build() {
       Column() {
         Text('新页面')
       }
       .width('100%')
       .height('100%')
     }
   }
   ```

### Web 版

1. 在 `web/src/pages/` 创建新的 `.vue` 文件

2. 注册路由：编辑 `web/src/router/index.ts`
   ```typescript
   {
     path: '/new-page',
     name: 'NewPage',
     component: () => import('../pages/NewPage.vue')
   }
   ```

## 数据修改

### 添加新作物/食物

1. 编辑对应的 JSON 文件：
   - 作物: `entry/src/main/resources/rawfile/data/crops/`
   - 食物: `entry/src/main/resources/rawfile/data/foods/`

2. 更新内嵌数据（如使用）：
   - `entry/src/main/ets/data/CropsData.ets`
   - `entry/src/main/ets/data/FoodsData.ets`

3. 更新索引文件：
   - `relations/origin-by-location.json`
   - `relations/by-category.json`
   - `relations/ingredient-to-foods.json`（如有关联）

### 添加新地点

1. 编辑地点 JSON 文件：
   - `locations/continents.json`
   - `locations/countries.json`
   - `locations/regions.json`

2. 更新内嵌数据：
   - `entry/src/main/ets/data/LocationsData.ets`

## 代码规范

### ArkTS/eTS

- 使用 `@Component` 装饰器定义组件
- 使用 `@State` 管理组件状态
- 使用 `@Builder` 抽取可复用 UI
- 遵循声明式 UI 编程范式

### TypeScript/Vue

- 使用 Composition API
- 类型定义放在 `types/` 目录
- 服务逻辑放在 `services/` 目录

### 通用规范

- 文件名使用 PascalCase（页面组件）
- 变量名使用 camelCase
- 常量使用 UPPER_SNAKE_CASE
- JSON 数据 ID 使用 kebab-case

## 调试技巧

### 鸿蒙应用

1. **日志输出**
   ```typescript
   console.info('调试信息');
   console.error('错误信息');
   ```

2. **查看日志**
   - DevEco Studio → Log 面板
   - 过滤应用日志

### Web 版

1. **浏览器开发者工具**
   - Console 查看日志
   - Network 查看请求
   - Vue DevTools 调试组件

2. **Vite 热更新**
   - 修改代码后自动刷新
   - 保持组件状态

## 常见问题

### Q: 数据修改后不生效？

A:
1. 确保同时更新了 JSON 文件和内嵌数据文件
2. 重新构建项目
3. 清除应用缓存后重新运行

### Q: Web 版启动报错？

A:
1. 确保 Node.js 版本 >= 18
2. 删除 `node_modules` 后重新 `npm install`
3. 检查端口 5173 是否被占用

### Q: 如何同步鸿蒙和 Web 版的数据？

A:
1. 以 `rawfile/data/` 下的 JSON 为准
2. 内嵌数据文件需手动同步
3. 考虑编写脚本自动生成内嵌数据

## 发布流程

### 鸿蒙应用

1. 配置签名
2. 构建 Release 版本
3. 生成 HAP 包
4. 上传至华为应用市场

### Web 版（仅调试用）

1. `npm run build`
2. 部署 `dist/` 目录到静态服务器

## 参考资源

- [HarmonyOS 开发文档](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/start-overview-0000001478061421-V3)
- [ArkTS 语言指南](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-get-started-0000001504769321-V3)
- [Vue 3 文档](https://cn.vuejs.org/)
- [Vite 文档](https://cn.vitejs.dev/)
