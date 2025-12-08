import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'Home',
      component: () => import('@/pages/Index.vue')
    },
    {
      path: '/category/:type/:category',
      name: 'CategoryList',
      component: () => import('@/pages/CategoryList.vue')
    },
    {
      path: '/crop/:id',
      name: 'CropDetail',
      component: () => import('@/pages/CropDetail.vue')
    },
    {
      path: '/food/:id',
      name: 'FoodDetail',
      component: () => import('@/pages/FoodDetail.vue')
    },
    {
      path: '/location/:id',
      name: 'LocationDetail',
      component: () => import('@/pages/LocationDetail.vue')
    },
    {
      path: '/search',
      name: 'SearchResult',
      component: () => import('@/pages/SearchResult.vue')
    }
  ]
})

export default router
