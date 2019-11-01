<template>
    <div class="detail">
        <mt-header title="">
            <router-link to="/fangjianCell" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
            <mt-button slot="right" @click="shoucang">
                <img style="width:20px;" src="../../assets/detail/shoucang.png" alt="">
            </mt-button>
        </mt-header>
        <van-swipe @change="onChange" class="detail-lb">
            <van-swipe-item>
                <img style="width:100%;" src="../../assets/index/yueruyu-5.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img style="width:100%;" src="../../assets/index/yueruyu-6.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img style="width:100%;" src="../../assets/index/01-jingkai.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img style="width:100%;" src="../../assets/index/yueruyu-2.jpg" alt="">
            </van-swipe-item>

            <div class="custom-indicator" slot="indicator">
                <div>{{ current + 1 }}/4</div>
            </div>
        </van-swipe>
        <div class="detail-xiangqing">
            <h2>齐友佳苑三室公寓</h2>
            <p class="dt-p2">¥ 1200
                <span>/月</span>
            </p>
            <van-divider />
            <ul class="dt-ul qingchu">
                <li>类型 :
                    <span>整租</span>
                </li>
                <li>户型 :
                    <span>3室1厅1卫</span>
                </li>
                <li>楼层 :
                    <span>15层/总30层</span>
                </li>
                <li>面积 :
                    <span>90平</span>
                </li>
                <li>朝向 :
                    <span>南</span>
                </li>
            </ul>
            <p class="dt-p3">位置及交通</p>
            <p class="dt-p3 p4">该项目交通便利，出行方便。
                配套设施完善，楼下商超、娱乐、餐饮都趋于完善。满足您的生活需求。房间风格时尚简约，
                符合多数人的审美，风格清新，家电齐全，定制家具，合理运用空间质量有保证，满足您的生活需求</p>
            <img style="width:100%;" src="../../assets/timg.jpg" alt="">
            <p class="dt-p3">服务设施</p>
            <ul class="dt-fuwu">
                <li>
                    <img src="../../assets/detail/wifi.png" alt="">
                    <p>wifi</p>
                </li>
                <li>
                    <img src="../../assets/detail/kongtiao.png" alt="">
                    <p>空调</p>
                </li>
                <li>
                    <img src="../../assets/detail/dianshi.png" alt="">
                    <p>电视</p>
                </li>
                <li>
                    <img src="../../assets/detail/xiyiji.png" alt="">
                    <p>洗衣机</p>
                </li>
                <li>
                    <img src="../../assets/detail/bingxiang.png" alt="">
                    <p>冰箱</p>
                </li>
                <li>
                    <img src="../../assets/detail/reshui.png" alt="">
                    <p>热水器</p>
                </li>
                <li>
                    <img src="../../assets/detail/yigui.png" alt="">
                    <p>衣柜</p>
                </li>
                <li>
                    <img src="../../assets/detail/tianranqi.png" alt="">
                    <p>天然气</p>
                </li>
                <li>
                    <img src="../../assets/detail/chuang.png" alt="">
                    <p>床</p>
                </li>
                <li>
                    <img src="../../assets/detail/baojie.png" alt="">
                    <p>保洁</p>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      current: 0
    };
  },
  methods: {
    onChange(index) {
      this.current = index;
    },
    shoucang(){
        this.$router.push("/shoucang")
    }
  }
};
</script>
<style>
.qingchu:after {
  display: block;
  content: "";
  clear: both;
}
/* 头部 */
.mint-header {
  background-color: #ed8117;
  font-size: 15px;
  height: 45px;
}
/* 手动轮播 */
.detail-lb {
  position: relative;
}
.custom-indicator {
  position: absolute;
  right: 20px;
  bottom: 15px;
}
.custom-indicator div {
  width: 50px;
  height: 30px;
  background: black;
  opacity: 0.6;
  color: #fff;
  font-size: 16px;
  line-height: 30px;
  border-radius: 50%;
}
/* 房间详情 */
.detail-xiangqing h2 {
  font-size: 20px;
  text-align: left;
  padding-left: 20px;
}
.detail-xiangqing .dt-p2 {
  font-size: 18px;
  text-align: left;
  padding-left: 20px;
  color: #f00;
}
.dt-p3{
    text-align: left;
    padding-left:10px;
    color:#666;
}
.p4{
    font-size:14px;
    line-height:25px;
}
.detail-xiangqing p span {
  font-size: 12px;
}
.dt-ul {
  text-align: left;
  color: #999;
  font-size: 14px;
  padding-left: 20px;
}
.dt-ul li {
  width: 50%;
  float: left;
  padding: 10px 0;
}
.dt-ul li span {
  color: #333;
  font-size: 16px;
}
/* 服务设施 */
.dt-fuwu li {
  float: left;
  width: 20%;
}
.dt-fuwu p{
    color:#ed8117;
    font-size: 12px;
}
</style>
