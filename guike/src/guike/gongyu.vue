<template>
  <div>
    <div v-for="(item,i) of list" :key="i">
      <div class="fangjian">
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
      list: [],
      pno: 0
    };
  },
  created() {
    this.loadMore();
  },
  methods: {
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
  margin-top: 10px;
}
.fangjian-price {
  font-size: 14px;
  font-weight: 700;
  color: #ed8117;
  margin: 15px 0;
}
.mbtn-top{
     margin-bottom:60px;
     background-color:#ed8117;
 }
</style>
