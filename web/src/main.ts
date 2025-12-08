import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import './styles/main.css'
import 'flag-icons/css/flag-icons.min.css'

const app = createApp(App)
app.use(router)
app.mount('#app')
