<template>
    <div class="detail">
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
    }
  }
};
</script>
<style>
/* 顶部手动轮播 */
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
.detail-xiangqing h2{
    font-size:20px;
    text-align: left;
    padding-left:20px;
}
.detail-xiangqing p{
    font-size:18px;
    text-align: left;
    padding-left:20px;
    color: #f00;
}
.detail-xiangqing p span{
    font-size:12px;
}
</style>
