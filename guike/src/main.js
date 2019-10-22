// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

Vue.config.productionTip = false

//功能 引入第三方组件库mint-ui
//1完整引入mint-ui组件库中的所有组件
import MintUI from 'mint-ui'
//2单引如mint-ui样式文件
import "mint-ui/lib/style.css"
//3将mint-ui注册vue实例
Vue.use(MintUI)

import { Swipe, SwipeItem } from 'vant'
Vue.use(Swipe).use(SwipeItem)

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
