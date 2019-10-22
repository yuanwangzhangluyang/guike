<template>
    <div>
        <div id="slider">
            <mt-swipe :auto="4000">
                <mt-swipe-item>
                    <img src="../assets/fuwu/6370077037697055282907663.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../assets/fuwu/6366352912764670415659245.png" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../assets/fuwu/6369776226135329332560637.jpg" alt="">
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <ul class="fuwu">
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-01.png" alt="">
                    <p>合同订单</p>
                </div>
            </li>
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-02.png" alt="">
                    <p>我的预定</p>
                </div>
            </li>
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-03.png" alt="">
                    <p>退换转续</p>
                </div>
            </li>
            <li>
                <div class="nav-2" style="border-right:0">
                    <img src="../assets/fuwu/icon-04.png" alt="">
                    <p>委托找房</p>
                </div>
            </li>
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-05.png" alt="">
                    <p>我的保洁</p>
                </div>
            </li>
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-06.png" alt="">
                    <p>我的保修</p>
                </div>
            </li>
            <li>
                <div class="nav-2">
                    <img src="../assets/fuwu/icon-07.png" alt="">
                    <p>投诉建议</p>
                </div>
            </li>
            <li>
                <div class="nav-2" style="border-right:0">
                    <img src="../assets/fuwu/icon-08.png" alt="">
                    <p>智能门锁</p>
                </div>
            </li>
            <li>
                <div class="nav-2" style="border-bottom:0">
                    <img src="../assets/fuwu/icon-09.png" alt="">
                    <p>生活缴费</p>
                </div>
            </li>
            <li>
                <div class="nav-2" style="border-bottom:0">
                    <img src="../assets/fuwu/icon-10.png" alt="">
                    <p>优惠申请</p>
                </div>
            </li>
            <li>
                <div class="nav-2" style="border-bottom:0">
                    <img src="../assets/fuwu/icon-11.png" alt="">
                    <p>月付还款</p>
                </div>
            </li>
        </ul>
    </div>
</template>
<style>
/* 轮播图 */
#slider img {
  width: 100%;
}
.mint-swipe {
  height: 175px;
}
/* 服务列表按钮 */
ul,li{
    margin: 0;
    padding:0;
}
.fuwu{
    background-color:#fff;
    padding-top:10px;
}
.nav-2{
    padding-top:8px;
    border-bottom:1px solid #e3e3e3;
    border-right:1px solid #e3e3e3;
}
.nav-2 p {
  font-size: 12px;
  color: #646464;
}
.nav-2 img {
  width: 45px;
  height: 45px;
}
.fuwu li{
  width: 25%;
  float: left;
  height: 100%;
  font-size: 14px;
  text-align: center;
  line-height: 25px;
  overflow: hidden;
}
</style>
