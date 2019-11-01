<template>
    <div>
        <!-- <mt-header title="我的收藏">
            <mt-button slot="right"></mt-button>
        </mt-header> -->
        <mt-header title="我的收藏">
            <router-link to="/" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
        </mt-header>
        <div class="shoucang">
            <img src="../assets/mideng.png" alt="">
            <p>小主，您访问的页面暂无数据</p>
        </div>
        <mt-button>收藏</mt-button>
    </div>
</template>
<style>
/* 头部 */
.mint-header {
  background-color: #ed8117;
  font-size: 15px;
  height: 45px;
}
.shoucang {
  margin-top: 100px;
}
.shoucang p {
  font-size: 14px;
  color: #666;
  margin: 30px 0;
}
.mint-button--default {
  color: #fff;
  background-color: #ed8117;
}
.mint-button--normal {
  padding: 0 85px;
}
</style>

