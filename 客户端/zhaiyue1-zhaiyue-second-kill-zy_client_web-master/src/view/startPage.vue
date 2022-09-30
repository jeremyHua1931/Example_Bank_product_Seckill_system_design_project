<template>
  <!-- 登录，注册，忘记密码页面 -->
  <div class="startPage">
    <div class="main">
      <div class="left">
        <img src="../assets/login-bgc.png" alt="" />
      </div>
      <div class="right">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>
    

<script>
import { ref } from "vue";
export default {
  setup() {
    let showNum = ref(2);
    return {
      showNum,
    };
  },

  components: {},
};
</script>


<style lang="less" scoped>
.startPage {
  height: 100%;
  width: 100%;
  position: absolute;
  // 背景
  background: linear-gradient(225deg, #b55151, #713343);

  display: flex;
  justify-content: center;
  align-items: center;
  .main {
    background-color: #fff;
    width: 1000px;
    height: 500px;
    border-radius: 8px;
    box-shadow: 0 0 30px 10px rgba(0, 0, 0, 0.2);
    overflow: hidden;
  }
  .left,
  .right {
    width: 50%;
    height: 100%;
    float: left;
  }
  .left {
    position: relative;
    background: linear-gradient(225deg, #6b304a, #241630);
    display: flex;
    justify-content: center;
    align-items: center;
    &::before {
      content: "";
      display: block;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(225deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.2));
    }
    img {
      width: 100%;
    }
  }
  .right {
    background: linear-gradient(225deg, #dc6164, #a04355);
  }
}
</style>
