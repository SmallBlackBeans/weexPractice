
import  App from 'index.vue'
const meta = weex.requireModule('meta')
// 配置 viewport 的宽度为 640px
meta.setViewport({
    width: 640
})

App.el = '#root'
new Vue(App)
