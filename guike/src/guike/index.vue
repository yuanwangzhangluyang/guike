<template>
    <div class="home">
        <div class="top">
            <div class="city-select">
                <a href="">
                    <span>郑州市</span>
                </a>
                <img style="width:9px;height:5px;vertical-align: middle;" src="../assets/index/xuanze.png" alt="">
            </div>
            <div class="search">
                <img src="../assets/index/sousuo.png" alt="">
                <input type="search" placeholder="搜索你想住的区域或地址">
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
        <div class="content qingchu" style="padding: 20px 0;background:#fff;line-height:22px">
            <a href="">
                <div class="nav">
                    <img src="../assets/index/Group 7@2x.png" alt="">
                    <p>整租</p>
                </div>
            </a>
            <a href="">
                <div class="nav">
                    <img src="../assets/index/Group 15@2x.png" alt="">
                    <p>合租</p>
                </div>
            </a>
            <a href="">
                <div class="nav">
                    <img src="../assets/index/Group 8@2x.png" alt="">
                    <p>短租</p>
                </div>
            </a>
            <a href="">
                <div class="nav">
                    <img src="../assets/index/Group 4@2x.png" alt="">
                    <p>委托找房</p>
                </div>
            </a>
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
        <div style="padding-top:10px;margin-bottom: 10px;background-color:#fff;width:100%;float:left">
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
            <img style="width:100%;border-radius:5px;" src="../assets/index/20191018203600.jpg" alt="">
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
                <a href="">
                    <p style="margin-top:50px;">关于我们</p>
                </a>
                <p style="font-size:12px">电脑版 | 公众号 | 下载APP</p>
                <p>服务热线: 0371-1234567</p>
                <p style="margin-bottom:50px;">豫ICP报备号000000号-2</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  name: "slider",
  data() {
    return {
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
  }
};
</script>

<style scoped>
body {
  max-height: 750px;
  margin: 0 auto;
}
.qingchu:after {
  display: block;
  content: "";
  clear: both;
}
* {
  font-family: "微软雅黑";
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a {
  text-decoration: none;
  color: black;
}
/* .home {
  background: #efeff4;
} */
.top {
  height: 46px;
  background: #ffffff;
  padding-bottom: 9px;
  padding-top: 9px;
  padding-left: 5%;
  padding-right: 5%;
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
.search {
  height: 28px;
  width: 80%;
  float: right;
  clear: none;
  position: relative;
}
.search > input {
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
.search > img {
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
  white-space: nowrap;
  padding-bottom: 10px;
  border-bottom: 1px solid #c8c7cc;
}
.biaoti-hou {
  font-size: 10px;
  color: #666666;
  margin-left: 10px;
  overflow: hidden;
}
.gengduo {
  float: right;
  font-size: 12px;
  color: #666666;
  text-align: center;
}
/* 图框1 */
.tukuang-1 {
  width: 100%;
  z-index: 1;
}
.tukuang-group {
  font-size: 0;
  position: relative;
  transition: all 0s linear;
  white-space: nowrap;
}
.tukuang-group div {
  font-size: 14px;
  position: relative;
  display: inline-block;
  height: 100%;
  vertical-align: top;
  white-space: normal;
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
