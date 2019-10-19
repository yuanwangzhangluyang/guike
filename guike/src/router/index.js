import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import TabBarIcon from "@/guike/TabBarIcon.vue"
import Tabbar from "@/guike/Tabbar.vue"


Vue.use(Router)

export default new Router({
  routes: [
    {path: '/Tabbar',component: Tabbar},
    {path: '/TabBarIcon',component: TabBarIcon},
    {path: '/',name: 'Tabbar',component:Tabbar}
  ]
})
