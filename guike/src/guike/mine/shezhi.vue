<template>
    <div>
        <!-- 导航栏 -->
        <mt-header id="head" title="设置">
            <router-link to="/" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
        </mt-header>
        <mt-cell title="更改手机号" to="" is-link class="shouji">
            <img slot="icon" src="../../assets/mine/shoujihao.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="更改密码" to="" is-link class="shouji">
            <img slot="icon" src="../../assets/mine/genggaimima.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="退出"  @click="tc"  to=""  is-link class="shouji">
            <img slot="icon" src="../../assets/mine/tuichu.png" width="24" height="24">
        </mt-cell>
    </div>
</template>
<script>
export default {
    methods:{
        tc(){
            sessionStorage.removeItem("uid");
            this.$router.push("/");
        }
    }
}
</script>

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
  border-bottom:1px solid #c8c7cc;
}
.mint-header {
  background: #fff;
  color: #282828;
  box-shadow: 0 0 1px #7d7f81;
}
.shouji{
    border-bottom:1px solid #c8c7cc;
}
</style>