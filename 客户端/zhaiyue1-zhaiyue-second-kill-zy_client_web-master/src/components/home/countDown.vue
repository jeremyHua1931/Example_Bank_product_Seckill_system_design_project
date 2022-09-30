<template>
  <!-- 倒计时组件 -->
  <span class="countDown">{{ showTime }}</span>
  <span style="display: none">{{
    countDown(isNow, startTimeStamp, endTimeStamp)
  }}</span>
</template>

<script>
import { reactive, toRefs } from "vue";
export default {
  props: ["isNow", "startTimeStamp", "endTimeStamp"],
  setup(props) {
    const data = reactive({
      showTime: ".......",
      isNow: props.isNow,
      startTimeStamp: props.startTimeStamp,
      endTimeStamp: props.endTimeStamp,
    });

    let clock_now = (endTimeStamp) => {
      // 获取当前时间戳,时间戳越大时间越靠前
      var nowTime = new Date().getTime();
      var targetTime = Date.parse(new Date(endTimeStamp));
      // var d1 = new Date(nowTime);
      // var d2 = new Date(targetTime);
      var usedTime = targetTime - nowTime;
      // 计算天数
      var days = Math.floor(usedTime / (24 * 3600 * 1000));
      //计算天数后剩余的毫秒数
      var leave1 = usedTime % (24 * 3600 * 1000);
      //计算出小时数
      var hours = Math.floor(leave1 / (3600 * 1000));
      //计算小时数后剩余的毫秒数
      var leave2 = leave1 % (3600 * 1000);
      //计算相差分钟数
      var minutes = Math.floor(leave2 / (60 * 1000));
      //计算分钟数后剩余的毫秒数
      var leave3 = leave2 % (60 * 1000);
      // 计算相差秒数
      var second = Math.floor(leave3 / 1000);
      // console.log(targetTime - nowTime);
      data.showTime =
        days + "天" + hours + "时" + minutes + "分" + second + "秒后结束";
    };

    let clock_fut = (startTimeStamp) => {
      // 获取当前时间戳,时间戳越大时间越靠前
      var nowTime = new Date().getTime();
      var targetTime = Date.parse(new Date(startTimeStamp));
      // var d1 = new Date(nowTime);
      // var d2 = new Date(targetTime);
      var usedTime = targetTime - nowTime;
      // 计算天数
      var days = Math.floor(usedTime / (24 * 3600 * 1000));
      //计算天数后剩余的毫秒数
      var leave1 = usedTime % (24 * 3600 * 1000);
      //计算出小时数
      var hours = Math.floor(leave1 / (3600 * 1000));
      //计算小时数后剩余的毫秒数
      var leave2 = leave1 % (3600 * 1000);
      //计算相差分钟数
      var minutes = Math.floor(leave2 / (60 * 1000));
      //计算分钟数后剩余的毫秒数
      var leave3 = leave2 % (60 * 1000);
      // 计算相差秒数
      var second = Math.floor(leave3 / 1000);
      // console.log(targetTime - nowTime);
      data.showTime =
        days + "天" + hours + "时" + minutes + "分" + second + "秒后开始";
    };

    // 倒计时效果;
    let countDown = (isNow, startTimeStamp, endTimeStamp) => {
      //正在进行
      if (isNow == 1) {
        clock_now(endTimeStamp);
        setInterval(() => {
          clock_now(endTimeStamp);
        }, 1000);
      } else {
        clock_fut(startTimeStamp);
        // 未来进行
        setInterval(() => {
          clock_fut(startTimeStamp);
        }, 1000);
      }
    };

    return {
      ...toRefs(data),
      countDown,
    };
  },
};
</script>

<style lang="less" scoped>
.countDown {
  color: #945a5d;
  font-weight: 600;
  font-size: 20px;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  //超出一行显示省略号
  display: -webkit-box;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 1;
  text-align: center;
}
</style>