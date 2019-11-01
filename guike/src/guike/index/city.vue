<template>
  <div>
    <!-- 导航栏 -->
    <mt-header id="head" title="选择城市">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="title">
        当前选择城市 ：
        <span>郑州市</span>
    </div>
    <div class="choose">
        <div>已开通城市</div>
        <van-divider />
        <router-link to="/">
            <mt-button style="margin-bottom:20px;">郑州市</mt-button>
        </router-link>
        <router-link to="/">
            <mt-button>武汉市</mt-button>
        </router-link>
    </div>
  </div>
</template>

<style>
html {
  width: 100%;
  margin: 0;
  padding: 0;
}
#head {
  width: 100%;
  height: 46px;
  /* padding: 0px; */
  font-size: 17px;
  font-family: 微软雅黑;
}
.mint-header {
  background: #f1a43a;
  color: #282828;
  box-shadow: 0 0 1px #7d7f81;
}

.title{
    text-align: left;
    padding:20px;
    background:#efeff4;
}
.choose{
    text-align: left;
    padding:20px;
}
</style>



    