<template>
  <div>
    <!-- 导航栏 -->
    <mt-header id="head" title="注册">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <!-- logo图片 -->
    <img src="../assets/logo.jpg" style="width:100%;height:;" alt="">
    <!-- 注册信息框 -->
    <label for="phone"></label>
    <img id="phone" src="../assets/yonghu.png">
    <mt-field placeholder="请输入用户名" v-model="uname"></mt-field>

    <label for="user"></label>
    <img id="user" src="../assets/shouji.png">
    <mt-field placeholder="请输入手机号" v-model="phone"></mt-field>

    <label for="password1"></label>
    <img id="password1" src="../assets/yaoshi.png">
    <mt-field placeholder="请输入密码" type="password1" v-model="upwd1"></mt-field>

    <label for="password2"></label>
    <img id="password2" src="../assets/yaoshi.png">
    <mt-field placeholder="确认密码" type="password2" v-model="upwd2"></mt-field>

    <!-- 注册按钮 -->
    <button id="d1" @click="reg">注册</button>
    <!-- <mt-button size="large" @click="login">登录</mt-button> -->

    <router-link id="a1" to="/login">已有账号,点击登录</router-link>

  </div>
</template>

<script>
export default {
  data() {
    return {
      uname: "",
      upwd1: "",
      upwd2: "",
      phone: ""
    };
  },
  methods: {
    reg() {
      var ureg = /^[a-z0-9]{3,12}$/i;
      var u = this.uname;
      var p1 = this.upwd1;
      var p2 = this.upwd2;
      if (ureg.test(u) == false) {
        this.$messagebox("消息", "用户名格式不正确");
        return;
      }
      if (ureg.test(p1) == false) {
        this.$messagebox("消息", "密码格式不正确");
        return;
      }
      if (p1 != p2) {
        this.$messagebox("消息", "密码不一致，请重新输入");
        return;
      }
      var ereg = /^1[3-9]\d{9}$/;
      var phone = this.phone;
      if (ereg.test(phone) == false) {
        this.$messagebox("消息", "手机号格式不正确");
        return;
      }

      var url = "reg";
      var obj = { uname: u, upwd: p1, phone };
      this.axios.get(url, { params: obj }).then(res => {
        if (res.data.code == 1) {
          this.$messagebox("消息", "注册成功").then(action=>{this.$router.push("/login");})
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
#password1 {
  float: left;
  width: 26px;
  height: 26px;
  margin-top: 10px;
  margin-left: 10px;
}
#password2 {
  float: left;
  width: 26px;
  height: 26px;
  margin-top: 10px;
  margin-left: 10px;
}
#user {
  float: left;
  width: 26px;
  height: 26px;
  margin-top: 10px;
  margin-left: 10px;
}
#d1 {
  display: inline-block;
  width: 100%;
  height: 40px;
  margin-top: 10px;
  color: #8e8e8e;
  background-color: #f1a43a;
  box-shadow: 0 0 1px #7d7f81;
  border-radius: 4px;
  border: 0;
  font-size: 18px;
  position: relative;
}
#a1 {
  color: #7d7f81;
  display: flex;
  float: right;
  margin-top: 10px;
  font-size: 14px;
  text-decoration: none;
}
</style>



    