<template>
    <div>
        <div class="shoutu">
            <img class="shoutu" src="../assets/mine/shoutu.png" alt="">
            <div class="xinxi">
                <img class="touxiang">
                <p>
                    <img style="width:15px;margin-bottom:3px;" src="../assets/mine/xiugai.png" alt="">
                </p>
                <p style="color:#fff;font-size:15px;">{{uname}}</p>
            </div>
        </div>
        <!-- 四个按钮 -->
        <div class="content" style="padding: 10px 0;background:#fff;line-height:20px">
            <div class="nav">
                <img src="../assets/mine/qianbao.png" alt="">
                <p>余额</p>
                <p style="color:#999">¥0</p>
            </div>
            <div class="nav">
                <img src="../assets/mine/jifen.png" alt="">
                <p>积分</p>
                <p style="color:#999">0</p>
            </div>
            <div class="nav">
                <img src="../assets/mine/kaquan.png" alt="">
                <p>卡券</p>
                <p style="color:#999">1</p>
            </div>
            <div class="nav">
                <img src="../assets/mine/xiaoxi.png" alt="">
                <p>消息</p>
                <p style="color:#999">0</p>
            </div>
        </div>
        <div style="clear:both"></div>
        <!-- 实名认证列表 -->
        <mt-cell style="margin-top:10px;" title="实名认证" to="" is-link>
            <img slot="icon" src="../assets/mine/shimingrenzheng.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="银行卡" to="" is-link>
            <img slot="icon" src="../assets/mine/yinhangka.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="我的管家" to="" is-link>
            <img slot="icon" src="../assets/mine/guanjia.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="联系客服" to="" is-link>
            <img slot="icon" src="../assets/mine/kefu.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="我的预定" to="" is-link>
            <img slot="icon" src="../assets/mine/yuding.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="设置" to="/shezhi" is-link>
            <img slot="icon" src="../assets/mine/shezhi.png" width="24" height="24">
        </mt-cell>
        <mt-cell title="关于龟壳" to="" is-link>
            <img slot="icon" src="../assets/mine/guanyu.png" width="24" height="24">
        </mt-cell>
    </div>
</template>
<script>
export default {
    data(){
        return{
            obj:{},
            uname:"请登录"
        }
        
    },
    methods:{
        load(){
            var uid=sessionStorage.getItem("uid");
            console.log(uid);
            if(uid!=undefined){
                this.axios.get("/getuser",{params:{uid:uid}}).then(res=>{
                    this.obj=res.data.result[0];
                    console.log(this.obj);
                    uid!=undefined?(this.uname=this.obj.user_name):(this.uname="请登录");
                })
            }
            
        }
    },
    created(){
       this.load(); 
    }
}
</script>

<style>
/* 首图 */
p {
  margin: 0;
  padding: 0;
}
.shoutu {
  width: 100%;
  position: relative;
}
.xinxi {
  position: absolute;
  bottom: 15px;
  width: 100%;
  text-align: center;
}
.touxiang {
  width: 56px;
  height: 56px;
  background: #f1f1f1;
  border-radius: 50%;
  margin-bottom: 15px;
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
/* 实名认证列表 */
.mint-cell-wrapper{
    font-size:14px;
    color:#3a3a3a;
    text-align: left;
}
.mint-cell{
    min-height: 45px;
}
</style>
