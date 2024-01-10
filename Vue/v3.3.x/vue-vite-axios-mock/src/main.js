import './assets/main.css'
import { createApp } from 'vue'
import App from './App.vue'

const app = createApp(App);


async function createAxios() {
    if (import.meta.env.VITE_USE_MOCK === 'true') {
        console.log('use mock axios')
        const module = await import('./mock/mock.js');
        return module.default;
    }
    const module = await import('axios');
    return module.default;
}

app.provide('axios', await createAxios());
app.mount('#app');
