import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import TabBarIcon from "@/guike/TabBarIcon.vue"
import Tabbar from "@/guike/Tabbar.vue"
import fangjianCell from "../guike/index/fangjianCell.vue"
import shezhi from "../guike/mine/shezhi.vue"
import detail from "../guike/index/detail.vue"
import login from "@/guike/login.vue"
import city from "@/guike/index/city.vue"
import zhuce from "@/guike/zhuce.vue"
import shoucang from "@/guike/shoucang.vue"


Vue.use(Router)

export default new Router({
  routes: [
    {path: '/shoucang',component: shoucang},
    {path: '/zhuce',component: zhuce},
    {path: '/city',component: city},
    {path: '/login',component: login},
    {path: '/detail',component: detail},
    {path: '/fangjianCell',component: fangjianCell},
    {path: '/shezhi',component: shezhi},
    {path: '/Tabbar',component: Tabbar},
    {path: '/TabBarIcon',component: TabBarIcon},
    {path: '/',name: 'Tabbar',component:Tabbar}
  ]
})
