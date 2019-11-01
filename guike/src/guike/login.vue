<template>
  <div>
    <!-- 导航栏 -->
    <mt-header id="head" title="登录">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- logo图片 -->
    <img src="../assets/logo.jpg" style="width:100%;height:;" alt="">
    <!-- 登陆信息框 -->
    <label for="phone"></label>
    <img id="phone" src="../assets/shouji.png">
    <mt-field placeholder="请输入用户名" v-model="uname"></mt-field>

    <label for="password"></label>
    <img id="password" src="../assets/yaoshi.png">
    <mt-field placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
    <!-- 登录按钮 -->
    <!-- <button id="d1" @click="login">登录</button> -->
    <mt-button id="d1" size="large" @click="login">登 录</mt-button>

  </div>
</template>

<script>
export default {
  data() {
    return {
      uname: "",
      upwd: ""
    };
  },
  methods: {
    login() {
      var ureg = /^[a-z0-9]{3,12}$/i;
      var u = this.uname;
      var p = this.upwd;
      if (ureg.test(u) == false) {
        this.$messagebox("消息", "用户名格式不正确");
        return;
      }
      if (ureg.test(p) == false) {
        this.$messagebox("消息", "密码格式不正确");
        return;
      }
      var url = "login";
      var obj = { uname: u, upwd: p };
      this.axios.get(url, { params: obj }).then(res => {
        console.log(res.data.code);
        if (res.data.code < 0) { 
          this.$messagebox("消息", "用户名或密码有误");
        } else {
          // console.log(res.data.uid);
           var uid=res.data.uid;
           sessionStorage.setItem("uid",uid);
          //  this.$router.push({path:"/"});
          this.$messagebox("消息", "登录成功").then(action=>{this.$router.push({path:"/"});})
           
          // this.$router.push("/");
        }
      });
    }
  }
};
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
}
.mint-header {
  background: #fff;
  color: #282828;
  box-shadow: 0 0 1px #7d7f81;
}

#phone {
  float: left;
  width: 26px;
  height: 26px;
  margin-top: 10px;
  margin-left: 10px;
}
#password {
  float: left;
  width: 26px;
  height: 26px;
  margin-top: 10px;
  margin-left: 10px;
}
#d1 {
  color: #fff;
  background-color: #f1a43a;
  margin-top:20px;
}
</style>



    