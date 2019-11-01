<template>
    <div class="home">
        <div class="top">
                <div class="city-select" @click="chengshi">
                    <span>郑州市</span>
                    <img style="width:9px;height:5px;vertical-align: middle;" src="../assets/index/xuanze.png" alt="">
                </div>
            <div class="search-class">
                <img src="../assets/index/sousuo.png" alt="">
                <input type="text" placeholder="搜索你想住的区域或地址">
            </div>
        </div>
        <!-- 轮播图 -->
        <div id="slider">
            <mt-swipe :auto="4000" :speed="1500">
                <mt-swipe-item v-for="(item,index) in imgs" :key="index">
                    <img :src="item.src" class="img">
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <!-- 四个按钮 -->
        <div class="content" style="padding: 20px 0;background:#fff;line-height:22px">
            <div class="nav" @click="tyu">
                <img src="../assets/index/Group 7@2x.png" alt="">
                <p>整租</p>
            </div>
            <div class="nav" @click="tyu">
                <img src="../assets/index/Group 15@2x.png" alt="">
                <p>合租</p>
            </div>
            <div class="nav" @click="tyu">
                <img src="../assets/index/Group 8@2x.png" alt="">
                <p>短租</p>
            </div>
            <div class="nav">
                <img src="../assets/index/Group 4@2x.png" alt="">
                <p>委托找房</p>
            </div>
        </div>
        <!-- 白领公寓 -->
        <p class="biaoti">
            白领公寓
            <span class="biaoti-hou">青年社区 个性设计 公区咖啡厅健身房一应俱全</span>
        </p>
        <mt-swipe :auto="0" :show-indicators="false">
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/yueruyu-5.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/yueruyu-6.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/yueruyu-4.jpg" alt="">
            </mt-swipe-item>
        </mt-swipe>
        <!-- 为什么选择我们 -->
        <div style="padding-top:10px;margin-bottom: 10px;background-color:#fff;width:100%;">
            <p class="biaoti" style="padding-left:10px;">为什么选择我们</p>
            <div class="nav-1">
                <img src="../assets/index/house.png" alt="">
                <p>真房源</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/bing.png" alt="">
                <p>品牌家电</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/chuang.png" alt="">
                <p>原创家具</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/wuxian.png" alt="">
                <p>无线WIFI</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/guanjia.png" alt="">
                <p>专属管家</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/money.png" alt="">
                <p>无中介费</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/weixiu.png" alt="">
                <p>维修保洁</p>
            </div>
            <div class="nav-1">
                <img src="../assets/index/mensuo.png" alt="">
                <p>智能门锁</p>
            </div>
        </div>
        <!-- 广告位 -->
        <div style="width:94%;margin-left:3%;padding-bottom:5px;">
            <img style="width:100%;border-radius:10%;padding-top:10px" src="../assets/index/shushi.jpg" alt="">
        </div>
        <!-- 花式生活 -->
        <p class="biaoti">
            花样生活
            <span class="biaoti-hou">各种兴趣圈子，丰富多彩的聚会活动</span>
        </p>
        <mt-swipe :auto="0" :show-indicators="false">
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/6370278055099501694972702.png" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/6370459138874501696099699.png" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img style="width:100%;border-radius:10px;" src="../assets/index/6370519563151064197233152.png" alt="">
            </mt-swipe-item>
        </mt-swipe>
        <!-- 底部内容 -->
        <div class="dibuneirong">
            <div>
                <p style="margin-top:50px;">关于我们</p>
                <p style="font-size:12px">电脑版 | 公众号 | 下载APP</p>
                <p>服务热线: 0371-1234567</p>
                <p style="margin-bottom:60px;">豫ICP报备号000000号-2</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      name: "slider",
      imgs: [
        {
          index: 1,
          src: require("../assets/index/yueru1.jpg")
        },
        {
          index: 2,
          src: require("../assets/index/yueru2.png")
        },
        {
          index: 3,
          src: require("../assets/index/yueruyu-2.jpg")
        },
        {
          index: 4,
          src: require("../assets/index/yueruyu-3.jpg")
        }
      ]
    };
  },
  methods: {
    tyu(){
      this.$router.push("/fangjianCell");
    },
    chengshi(){
        this.$router.push("/city");
    }
  }
}
</script>

<style scoped>
.top {
  height: 46px;
  background: #ffffff;
  padding-bottom: 9px;
  padding-top: 9px;
  padding-left: 5%;
  padding-right: 5%;
  box-sizing: border-box;
}
.city-select {
  height: 100%;
  width: 20%;
  text-align: center;
  border-radius: 15px;
  background: #ffffff;
  float: left;
}
.city-select span {
  font-size: 14px;
  color: #666666;
  line-height: 29px;
  height: 29px;
  display: inline-block;
  margin-right: 5px;
}
/* 头部 搜索框 */
.search-class {
  height: 28px;
  width: 80%;
  float: right;
  clear: none;
  position: relative;
}
.search-class > input {
  height: 28px;
  line-height: 28px;
  padding-left: 30px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  background-color: rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  width: 100%;
  outline: 0;
}
.search-class > img {
  width: 15px;
  position: absolute;
  top: 7px;
  left: 6px;
}
/* 轮播图 */
#slider img {
  width: 100%;
}
.mint-swipe {
  height: 218px;
}

/* 四个按钮 */
.content .nav {
  float: left;
  width: 25%;
  height: 100%;
  overflow: hidden;
  font-size: 14px;
  text-align: center;
}
.content .nav img {
  width: 44px;
  height: 44px;
}
.content .nav p {
  font-size: 12px;
  color: #646464;
}
/* 白领公寓 */
.biaoti {
  text-overflow: ellipsis;
  overflow: hidden;
  width: 100%;
  text-align: left;
  font-size: 16px;
  color: #3a3a3a;
  margin-bottom: 10px;
  padding: 10px 5px;
  border-bottom: 1px solid #c8c7cc;
}
.biaoti-hou {
  font-size: 10px;
  color: #666666;
  margin-left: 10px;
  overflow: hidden;
}
/* 为什么选择我们 */
.nav-1 {
  float: left;
  width: 25%;
  height: 100%;
  font-size: 14px;
  text-align: center;
  margin-top: 20px;
  line-height: 25px;
  overflow: hidden;
}
.nav-1 p {
  font-size: 12px;
  color: #646464;
}
/* 底部内容 */
.dibuneirong p {
  margin-bottom: 15px;
  font-size: 14px;
  color: #666;
}
</style>
