<template>
  <!-- 弹出框填写密码 -->
  <div class="pswBox" :style="isVisiblePay">
    <!-- <div class="pswBox"> -->
    <div class="content">
      <div class="close" @click="closePay()">
        <svg class="icon" aria-hidden="true">
          <use xlink:href="#icon-guanbi"></use>
        </svg>
      </div>
      <div>订单编号:{{ orderDetail.orderId }}</div>
      <div>购买数量:{{ orderDetail.number }}</div>
      <div>支付金额:￥{{ orderDetail.number * goodDetail.price }}</div>
      <div>
        <!-- 密码输入框 -->
        <input
          type="password"
          name=""
          id=""
          v-model="password"
          placeholder=" 请输入密码"
          @keydown.enter="checkPay"
        />

        <!-- 提交按钮 -->
        <button @click="checkPay()">确认支付</button>
      </div>
    </div>
  </div>
  <!-- 订单详情页 -->
  <div class="box">
    <div class="orderDetail">
      <!-- 顶部返回栏 -->
      <div class="topNav">
        <div @click="goback()" class="btn">
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-fanhui"></use>
          </svg>
        </div>
        <div>订单详情</div>
      </div>
      <div class="main">
        <div class="top">
          <div class="title">订单信息</div>
          <span>订单编号:{{ orderDetail.orderId }}</span>
          <span>订购数量:{{ orderDetail.number }}</span>
          <span v-if="orderDetail.status == 1">订单状态:已支付</span>
          <span v-if="orderDetail.status == 0">订单状态:待支付</span>
          <span>创建时间:{{ orderDetail.createTime }}</span>
          <span>总金额:￥{{ orderDetail.totalPrice }}</span>
        </div>
        <div class="bottom">
          <div class="title">商品信息</div>
          <span>商品编号:{{ goodDetail.id }}</span>
          <span>商品名称:{{ goodDetail.name }}</span>
          <span>商品价格:￥{{ goodDetail.price }}</span>
          <span v-if="orderDetail.isLoans == 0">商品类型:存款</span>
          <span v-if="orderDetail.isLoans == 1">商品类型:贷款</span>
        </div>
      </div>
      <div class="bottomNav">
        <el-popconfirm
          confirm-button-text="YES"
          cancel-button-text="NO"
          :icon="InfoFilled"
          icon-color="red"
          title="你确定要申请退单吗？"
          @confirm="refundOrder"
          confirmButtonType="danger"
          cancelButtonType="danger"
        >
          <template #reference>
            <button>申请退单</button>
          </template>
        </el-popconfirm>
        <button v-if="orderDetail.status == 0" @click="isVisiblePay = ''">
          点击支付
        </button>
      </div>
      <img src="../../assets/orderDetail_bgc.png" alt="" />
    </div>
  </div>
</template>

<script>
import { reactive, toRefs, onMounted } from "vue";
import { useRoute, useRouter } from "vue-router";
import { refund } from "@/api/order/index.js";
import { pay } from "@/api/goodDetail/index.js";
import { getGoodDetail } from "@/api/goodDetail/index.js";
import { ElNotification, ElMessage } from "element-plus";
export default {
  setup() {
    const route = useRoute();
    const router = useRouter();
    const data = reactive({
      orderDetail: route.query,
      goodDetail: {},
      // 是否显示密码输入框
      isVisiblePay: "display:none;",

      password: "",
    });

    // 获取商品详情信息
    onMounted(() => {
      getGoodDetail(data.orderDetail.isLoans, data.orderDetail.goodId).then(
        (res) => {
          data.goodDetail = res.data;
        }
      );
    });

    //  !返回
    const goback = () => {
      router.back();
      return;
    };

    //订单退单
    const refundOrder = () => {
      refund(data.orderDetail.orderId, data.goodDetail.isLoans).then((res) => {
        if (res.code == 200) {
          ElNotification({
            title: `订单${data.orderDetail.orderId}退单申请提交成功`,
            message: "",
            type: "success",
            position: "bottom-right",
          });
          router.back();
          return;
        } else if (res.code == 400) {
          ElNotification({
            title: `订单${data.orderDetail.orderId}退单申请正在受理`,
            message: "",
            type: "warning",
            position: "bottom-right",
          });
          router.back();
        } else {
          ElNotification({
            title: `订单${data.orderDetail.orderId}退单申请失败`,
            message: "",
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };

    //确认付款
    const checkPay = () => {
      if (data.password == "") {
        ElNotification({
          title: "密码为空",
          message: "",
          type: "error",
          position: "bottom-right",
        });
        return;
      }
      console.log(data.orderDetail.orderId);
      pay(0, data.orderDetail.orderId, data.password)
        .then((res) => {
          if (res.code == 200) {
            ElNotification({
              title: "支付成功",
              message: "",
              type: "success",
              position: "bottom-right",
            });
            data.isVisiblePay = "display:none";
            data.password = "";
            goback();
          } else {
            ElMessage.error(res.msg);
            data.password = "";
          }
        })
        .catch((err) => {
          ElMessage.warning("网络拥堵，请重试!");
          console.log(err);
        });
    };

    // 关闭支付界面
    const closePay = () => {
      data.password = "";
      data.isVisiblePay = "display:none;";
    };
    return {
      ...toRefs(data),
      goback,
      refundOrder,
      checkPay,
      closePay,
    };
  },
};
</script>

<style lang="less" scoped>
@mainColor: #cb4042;
.pswBox {
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.2);
  z-index: 999;
  display: flex;
  justify-content: center;
  align-items: center;
  .content {
    position: relative;
    width: 700px;
    height: 600px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    .close {
      position: absolute;
      right: 0px;
      top: 0px;
      width: 30px;
      height: 30px;
      background-color: #fff;
      border-radius: 5px;
      font-size: 15px;
      font-weight: 600;
      color: @mainColor;
      cursor: pointer;
      box-shadow: none;
      transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
      display: flex;
      justify-content: center;
      align-items: center;
      &:hover {
        background-color: @mainColor;
        color: #fff;
      }
    }
    div {
      width: 330px;
      height: 40px;
      display: flex;
      align-items: center;
      color: @mainColor;
      font-size: 20px;
      font-weight: 600;
      input {
        display: block;
        width: 250px;
        height: 40px;
        background: none;
        border: none;
        font-size: 20px;
        border-bottom: 2px solid @mainColor;
        color: @mainColor;
        outline: none;
        //* 更改input输入框placeholder的样式
        &::-webkit-input-placeholder {
          color: @mainColor;
        }
      }
      button {
        width: 80px;
        height: 40px;
        background: none;
        color: @mainColor;
        border: 2px solid @mainColor;
        cursor: pointer;
        font-size: 15px;
        transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        &:hover {
          background-color: @mainColor;
          color: #fff;
        }
      }
    }
  }
}

.box {
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  background: url("../../assets/background.png");
  background-size: 100% 100%;
  .orderDetail {
    position: relative;
    margin-top: 40px;
    width: 1100px;
    height: 550px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    overflow: hidden;
    .topNav {
      width: 100%;
      height: 30px;
      display: flex;
      align-items: center;
      .btn {
        margin-left: 10px;
        color: @mainColor;
        font-size: 20px;
        cursor: pointer;
      }
      div {
        &:nth-child(2) {
          margin-left: 20px;
          font-size: 20px;
          color: @mainColor;
        }
      }
    }
    .main {
      width: 100%;
      height: 440px;
      .bottom {
        border-top: 3px dashed @mainColor;
      }
      .top,
      .bottom {
        position: relative;
        height: 50%;
        width: 100%;
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        span {
          display: block;
          padding-left: 20px;
          width: 33%;
          height: 30px;
          font-size: 18px;
          color: @mainColor;
          z-index: 1;
          text-align: center;
        }
        .title {
          position: absolute;
          top: 10px;
          left: 10px;
          color: @mainColor;
          font-size: 15px;
          font-weight: 600;
        }
      }
    }
    .bottomNav {
      width: 100%;
      height: 80px;
      display: flex;
      align-items: center;
      flex-direction: row-reverse;
      button {
        z-index: 1;
        background: none;
        width: 70px;
        background-color: #fff;
        height: 35px;
        margin-right: 20px;
        border: 2px solid @mainColor;
        border-radius: 3px;
        color: @mainColor;
        font-size: 15px;
        cursor: pointer;
        transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
        &:hover {
          color: #fff;
          background-color: @mainColor;
        }
        &:active {
          background-color: #de9da0;
          color: @mainColor;
        }
      }
    }
    img {
      width: 300px;
      position: absolute;
      bottom: 0px;
      right: -30px;
      z-index: 0;
    }
  }
}
</style>