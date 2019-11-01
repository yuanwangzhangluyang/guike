<template>
  <div>
    <mt-header title="房间列表">
      <router-link to="/" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>
      <mt-button icon="more" slot="right"></mt-button>
    </mt-header>
    <div class="select-cell">
      <span>区域</span>
      <span>整租</span>
      <span>租金</span>
      <span>户型</span>
    </div>
    <div v-for="(item,i) of list" :key="i">
      <div class="fangjian" @click="xiangqing">
        <img class="zhaopian" :src="'http://127.0.0.1:4000/'+item.img" alt="">
        <div class="xiangxi">
          <h4>{{item.title}}</h4>
          <p class="xiangxi-1">{{item.address}}</p>
          <p class="fangjian-price">{{item.price}}元/月</p>
        </div>
      </div>
    </div>
    <mt-button class="mbtn-top" type="primary" size="large" @click="loadMore">加载更多</mt-button> 
  </div>
</template>
<script>
export default {
  data() {
    return {
      show: false,
      list: [],
      pno: 0
    };
  },
  created() {
    this.loadMore();
  },
  methods: {
    xiangqing() {
      this.$router.push("/detail");
    },
    loadMore() {
      var url = "gongyu";
      this.pno++;
      var obj = { pno: this.pno };
      this.axios.get(url, { params: obj }).then(res => {
        //console.log(res)
        //concat
        //this.list=res.data.data
        var rows = this.list.concat(res.data.data);
        this.list = rows;
      });
    }
  }
};
</script>

<style>
/* 头部 */
.mint-header {
  background-color: #ed8117;
  font-size: 15px;
  height: 45px;
}
.select-cell {
  display: flex;
  justify-content: space-around;
  height: 30px;
  padding-top: 10px;
  border-bottom: 1px solid #e3e3e3;
  position: relative;
}
.van-popup--top {
  top: 96px;
  left: 0;
  width: 100%;
}
/* 房间列表 */
.fangjian {
  width: 100%;
  overflow: hidden;
  border-bottom: 1px solid #e3e3e3;
  padding: 15px 12px;
}
.zhaopian {
  width: 46%;
  float: left;
  border-radius: 4%;
  margin-right: 12px;
}
.xiangxi {
  width: 47%;
  float: left;
  text-align: left;
}
.xiangxi h4 {
  font-size: 15px;
  color: #3a3a3a;
  line-height: 18px;
  margin: 0px;
}
.xiangxi-1 {
  font-size: 13px;
  color: #4a4a4a;
  overflow: hidden;
  text-overflow: ellipsis;
}
.fangjian-price {
  font-size: 14px;
  font-weight: 700;
  color: #ed8117;
  margin: 8px 0;
}
.mbtn-top{
     margin-bottom:10px;
     background-color:#ed8117;
 }
</style>

