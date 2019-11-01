<template>
    <div id="tabbar">
        <mt-tab-container class="page-tabbar-container" v-model="active">
            <mt-tab-container-item id="message"><index v-on:child-id="listen_uid"></index>
            </mt-tab-container-item>
            <mt-tab-container-item id="shoucang"><shoucang></shoucang>
            </mt-tab-container-item>
            <mt-tab-container-item id="fuwu"><fuwu></fuwu>
            </mt-tab-container-item>
            <mt-tab-container-item id="gongyu"><gongyu></gongyu>
            </mt-tab-container-item>
            <mt-tab-container-item id="mine"><mine></mine>
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="message" @click.native="changeState(0)">
                <tabbaricon :selectedImage="require('../assets/01.png')" :normalImage="require('../assets/1.png')" :focused="currentIndex[0].isSelect">
                </tabbaricon>
                首页
            </mt-tab-item>
            <mt-tab-item id="shoucang" @click.native="changeState(1)">
                <tabbaricon :normalImage="require('../assets/2.png')" :selectedImage="require('../assets/02.png')" :focused="currentIndex[1].isSelect">
                </tabbaricon>
                收藏
            </mt-tab-item>
            <mt-tab-item id="fuwu" @click.native="changeState(2)">
                <tabbaricon :normalImage="require('../assets/3.png')" :selectedImage="require('../assets/03.png')" :focused="currentIndex[2].isSelect">
                </tabbaricon>
                服务
            </mt-tab-item>
            <mt-tab-item id="gongyu" @click.native="changeState(3)">
                <tabbaricon :normalImage="require('../assets/4.png')" :selectedImage="require('../assets/04.png')" :focused="currentIndex[3].isSelect"></tabbaricon>
                公寓
            </mt-tab-item>
            <mt-tab-item id="mine" @click.native="changeState(4)">
                <tabbaricon :normalImage="require('../assets/5.png')" :selectedImage="require('../assets/05.png')" :focused="currentIndex[4].isSelect"></tabbaricon>
                我的
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
import TabBarIcon from "./TabBarIcon.vue";
import index from "./index.vue";
import shoucang from "./shoucang.vue";
import fuwu from "./fuwu.vue";
import gongyu from "./gongyu.vue";
import mine from "./mine.vue";
export default {
  data() {
    return {
       //list:gongyujson,
      //面板中显示子组件id
      active: "mine",
      //创建数组保存图片焦点状态
      currentIndex: [
        { isSelect: false},
        { isSelect: false },
        { isSelect: false },
        { isSelect: false },
        { isSelect: true }
      ]
    };
  },
  components:{
      "index":index,
      "shoucang":shoucang,
      "fuwu":fuwu,
      "gongyu":gongyu,
      "mine":mine,
      "tabbaricon": TabBarIcon
  },
  methods: {
    changeState(n) {
      //函数功能:将当前参数下标
      //对应数组值修改true其它修改false
      //1:创建循环,循环数组中内容
      for (var i = 0; i < this.currentIndex.length; i++) {
        //2:判断如果循环下标与n相等 20
        if (n == i) {
          //3:当前下标元素true 
          this.currentIndex[i].isSelect = true;
        } else {
          //4:其它元素修改false
          this.currentIndex[i].isSelect = false;
        }
      }
    },
    listen_uid(uid){
      if(uid!=undefined){
        this.changeState(4);
        this.active="mine"
      }
    }
  }
}
</script>
<style  scoped>
/*修改 tabbar 默认文字颜色*/
.mint-tabbar > .mint-tab-item {
  color: #999999;
}
/*修改默认tab选中文字样式*/
.mint-tabbar > .mint-tab-item.is-selected {
  background-color: transparent;
  color: #ed8117;
}
</style>