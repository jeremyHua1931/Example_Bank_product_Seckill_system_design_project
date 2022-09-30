<template>
  <!-- 商品详情页 -->
  <!-- 弹出框填写密码 -->
  <div class="pswBox" :style="isVisiblePay">
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
          placeholder="请输入密码"
          @keydown.enter="checkPay"
        />

        <!-- 提交按钮 -->
        <button @click="checkPay">确认支付</button>
      </div>
    </div>
  </div>

  <!-- 加载框 -->
  <div class="loading" :style="isShowLoading">
    <div>
      正在为您抢购中<el-icon><Loading /></el-icon>
    </div>
  </div>
  <!-- 主页面 -->
  <div class="box">
    <div class="goodDetail">
      <!-- 顶部返回栏 -->
      <div class="topNav">
        <div @click="goback()" class="btn">
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-fanhui"></use>
          </svg>
        </div>
      </div>
      <!-- 商品介绍主体区 -->
      <div class="main">
        <div class="top">
          <!-- 左边图片 -->
          <div class="left">
            <img :src="goodDetail.image" alt="" />
          </div>
          <!-- 右部内容 -->
          <div class="right">
            <div class="name">{{ goodDetail.name }}</div>
            <div class="price">
              <span>售价</span><span>￥{{ goodDetail.price }}</span>
            </div>
            <div class="totalNumber">
              <span>限购数量</span><span>{{ goodDetail.restrictNumber }}</span>
            </div>
            <div class="remainNumber">
              <span>剩余数量</span><span>{{ goodDetail.remainNumber }}</span>
            </div>
            <div class="time">
              <count-down
                :isNow="isNow"
                :startTimeStamp="goodDetail.startTime"
                :endTimeStamp="goodDetail.endTime"
              ></count-down>
            </div>
            <ul class="buyNumber">
              <li @click="DecNum()">-</li>
              <li><input type="text" v-model="number" @blur="checkNum" /></li>
              <li @click="AddNum()">+</li>
            </ul>
            <div class="two-btn">
              <!-- 初筛通过 -->
              <button
                v-if="goodDetail.filterStatus == 'passed' && isNow == 1"
                @click="kill"
                class="purchase"
              >
                立即抢购
              </button>
              <!-- 活动未开始 -->
              <button
                v-if="isNow == 0 && goodDetail.filterStatus == 'passed'"
                disabled
                class="disabled"
              >
                活动未开始
              </button>
              <!-- 初筛不通过 -->
              <el-tooltip
                class="box-item"
                effect="dark"
                :content="filterFailReason"
                placement="bottom"
              >
                <button
                  v-if="goodDetail.filterStatus == 'rejected' && isNow == 1"
                  class="disabled"
                >
                  初筛未通过
                </button>
              </el-tooltip>
              <!-- 未收藏按钮 -->
              <svg
                class="icon"
                aria-hidden="true"
                @click="AddFavor(goodDetail.id, goodDetail.isLoans)"
                v-if="isFavor == 0"
              >
                <use xlink:href="#icon-shoucang"></use>
              </svg>
              <!-- 已收藏按钮 -->
              <svg
                class="icon"
                aria-hidden="true"
                @click="DelFavor(goodDetail.id, goodDetail.isLoans)"
                v-else-if="isFavor == 1"
              >
                <use xlink:href="#icon-shoucang2"></use>
              </svg>
            </div>
          </div>
        </div>
        <!-- 底部商品详情介绍 -->
        <div class="title">
          <div>商品详情<span></span></div>
        </div>
        <div class="bottom" :innerHTML="goodDetail.description"></div>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive, toRefs, onMounted } from "vue";
import { useRoute, useRouter } from "vue-router";
import {
  getGoodDetail,
  addFavor,
  delFavor,
  getDepositMD5,
  createOrder,
  pay,
  checkOrder,
  getLoansMD5,
} from "@/api/goodDetail/index.js";
import { ElNotification, ElMessage } from "element-plus";
import countDown from "@/components/home/countDown.vue";
import { Loading } from "@element-plus/icons-vue";
export default {
  setup() {
    const router = useRouter();
    const route = useRoute();
    const data = reactive({
      userId: window.localStorage.getItem("userId"),
      isNow: route.query.isNow,
      goodId: route.query.goodId,
      // 商品类型
      isLoans: route.query.isLoans,
      // 有无获取MD5
      isGetMD5: false,
      // 获取的MD5
      killURI: "",
      // 购买数量
      number: "1",
      // 是否显示密码输入框
      isVisiblePay: "display:none;",
      // 订单轮询ID
      queueId: null,
      goodDetail: {},
      // 订单ID
      orderId: null,
      // 订单详情信息
      orderDetail: {},
      password: "",
      //  抢购到的订单数量
      orderNumber: 0,
      //  是否收藏
      isFavor: null,
      // 立即抢购节流阀
      canKill: true,
      //加载框显示
      isShowLoading: "display:none;",
      //初筛原因
      filterFailList: [],
      filterFailReason: "",
    });
    onMounted(() => {
      getDetail();
    });
    //获取商品详情信息
    const getDetail = () => {
      getGoodDetail(data.isLoans, data.goodId).then((res) => {
        data.goodDetail = res.data;
        data.filterFailList = res.data.filterFailList;
        for (let i = 0; i < data.filterFailList.length; i++) {
          data.filterFailReason =
            data.filterFailReason + data.filterFailList[i].description + "   ";
        }
        if (res.code == 200) {
          ElNotification({
            title: "商品信息获取成功",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          data.isFavor = res.data.isFavor;
          return;
        } else {
          ElNotification({
            title: "商品信息获取失败",
            message: "",
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };
    //添加收藏
    const AddFavor = (goodId, isLoans) => {
      addFavor(goodId, isLoans).then((res) => {
        if (res.code == 200) {
          ElNotification({
            title: "商品收藏成功",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          data.isFavor = 1;
          return;
        } else {
          ElNotification({
            title: "商品收藏失败",
            message: "",
            type: "error",
            position: "bottom-right",
          });
        }
      });
    };
    // 取消收藏
    const DelFavor = (goodId, isLoans) => {
      delFavor(goodId, isLoans).then((res) => {
        console.log(res);
        if (res.code == 200) {
          ElNotification({
            title: "取消收藏成功",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          data.isFavor = 0;
          return;
        } else {
          ElNotification({
            title: "取消收藏失败",
            message: "",
            type: "error",
            position: "bottom-right",
          });
        }
      });
    };
    //  !返回
    const goback = () => {
      router.back();
      return;
    };
    // 轮询订单是否生成
    const circleOrder = () => {
      let timer = setInterval(() => {
        checkOrder(data.queueId, Number.parseInt(data.isLoans))
          .then((res) => {
            if (res.code !== 102) {
              data.isShowLoading = "display:none;";
              switch (res.data.status) {
                case -1:
                  ElMessage.warning("系统繁忙,请稍后再试!");
                  break;
                case -2:
                  data.orderNumber = res.data.number;
                  ElNotification({
                    title: "下单成功！",
                    message: `为您抢到${res.data.number}份产品！`,
                    type: "success",
                  });
                  data.canKill = true;
                  data.orderId = res.data.orderId;
                  data.isVisiblePay = "";
                  break;
                case -3:
                  ElMessage.error("商品已售罄!");
                  break;
                case -4:
                  ElMessage.warning("用户超过限购!");
                  break;
                case -5:
                  ElMessage.warning("初筛未通过!");
                  break;
                case -6:
                  ElMessage.error("商品已停止售卖!");
                  break;
                case 0:
                  data.orderNumber = res.data.number;
                  ElNotification({
                    title: "下单成功！",
                    message: `为您抢到${data.orderNumber}份产品！`,
                    type: "success",
                  });
                  data.orderId = res.data.orderId;
                  data.orderDetail = res.data;
                  console.log(data.orderDetail);
                  data.isVisiblePay = "";
                  data.canKill = true;
                  break;
              }
              clearInterval(timer);
              return;
            }
          })
          .catch((err) => {
            console.log(err);
          });
      }, 1000);
    };

    //下单
    const kill = () => {
      if (data.canKill == false) {
        return;
      }
      data.canKill = false;
      data.isShowLoading = "";
      if (data.isGetMD5) {
        createOrder(data.goodId, 0, data.number, data.killURI)
          .then((res) => {
            if (res.code == 200) {
              data.queueId = res.data.queueId;
              // 轮询订单是否生成
              circleOrder();
            }
          })
          .catch((err) => {
            console.log(err);
          });
      } else {
        if (data.isLoans == 0) {
          getDepositMD5(Number.parseInt(data.goodId))
            .then((res) => {
              console.log(res);
              if (res.code === 200) {
                data.killURI = res.data;
                data.isGetMD5 = true;
                createOrder(
                  data.goodId,
                  Number.parseInt(data.isLoans),
                  data.number,
                  data.killURI
                )
                  .then((res) => {
                    if (res.code == 200) {
                      data.queueId = res.data.queueId;
                      // 轮询订单是否生成
                      circleOrder();
                    }
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              }
            })
            .catch((err) => {
              console.log(err);
            });
        } else if (data.isLoans == 1) {
          getLoansMD5(Number.parseInt(data.goodId))
            .then((res) => {
              console.log(res);
              if (res.code === 200) {
                data.killURI = res.data;
                data.isGetMD5 = true;
                createOrder(
                  data.goodId,
                  Number.parseInt(data.isLoans),
                  data.number,
                  data.killURI
                )
                  .then((res) => {
                    if (res.code == 200) {
                      data.queueId = res.data.queueId;
                      // 轮询订单是否生成
                      circleOrder();
                    }
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              }
            })
            .catch((err) => {
              console.log(err);
            });
        }
      }
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
      pay(Number.parseInt(data.isLoans), data.orderId, data.password)
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
            console.log(data.goodDetail);
            console.log(data.orderDetail);
            router.push({
              path: "/orderDetail",
              query: {
                name: data.goodDetail.name,
                orderId: data.orderDetail.orderId,
                goodId: data.goodDetail.id,
                number: data.orderDetail.number,
                status: 1,
                totalPrice: data.orderDetail.totalPrice,
                userId: data.userId,
                username: data.username,
                createTime: data.orderDetail.createTime,
                isLoans: data.goodDetail.isLoans,
              },
            });
          } else {
            ElMessage.error(res.msg);
          }
        })
        .catch((err) => {
          // ElMessage.warning("网络拥堵，请重试!");
          console.log(err);
        });
    };

    // 关闭支付窗口
    const closePay = () => {
      data.isVisiblePay = "display:none;";
    };

    //减少订单数量
    const DecNum = () => {
      if (data.number == "1") {
        data.number = "1";
      } else {
        data.number--;
      }
    };

    //增加订单数量
    const AddNum = () => {
      if (data.number < data.goodDetail.restrictNumber) {
        data.number++;
      }
    };

    //输入框数量失去焦点
    const checkNum = () => {
      if (data.number == "" || data.number <= "0") {
        data.number = "1";
      } else if (data.number > data.goodDetail.restrictNumber) {
        ElMessage.warning("超过限购数量");
        data.number = data.goodDetail.restrictNumber;
      }
      return;
    };
    return {
      ...toRefs(data),
      AddFavor,
      DelFavor,
      kill,
      goback,
      checkPay,
      closePay,
      DecNum,
      AddNum,
      checkNum,
    };
  },
  components: {
    countDown,
    Loading,
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
  width: 100%;
  display: flex;
  justify-content: center;
  .goodDetail {
    width: 1000px;
    // height: 100%;
    background-color: #fff;
    .topNav {
      width: 100%;
      height: 30px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      .btn {
        margin-left: 10px;
        color: @mainColor;
        font-size: 20px;
        cursor: pointer;
      }
    }

    .main {
      width: 100%;
      // height: 90%;
      background-color: #f9f9f9;
      .top {
        height: 400px;
        width: 100%;
        background-color: #fff;
        display: flex;
        .left {
          width: 400px;
          display: flex;
          justify-content: center;
          align-items: center;
          margin-right: 10px;
          img {
            width: 100%;
            height: 100%;
            // border-radius: 10px;
          }
        }
        .right {
          position: relative;
          width: 590px;
          .name {
            height: 60px;
            font-size: 20px;
            font-weight: 600;
            padding-top: 5px;
          }
          .price {
            height: 35px;
            background-color: #d45d6318;
            display: flex;
            align-items: center;
            :nth-child(1) {
              margin-left: 10px;
              color: #999999;
              font-size: 10px;
            }
            :nth-child(2) {
              margin-left: 20px;
              color: @mainColor;
              font-weight: 600;
              font-size: 25px;
            }
          }
          .totalNumber,
          .remainNumber {
            height: 28px;
            display: flex;
            align-items: center;
            :nth-child(1) {
              margin-left: 10px;
              color: #999999;
              font-size: 10px;
            }
            :nth-child(2) {
              margin-left: 10px;
              color: #000000;
              font-size: 10px;
            }
          }
          .time {
            position: absolute;
            bottom: 0;
            right: 0;
            height: 25px;
            width: 400px;
            display: flex;
            align-items: center;
            padding-left: 10px;
            color: @mainColor;
            font-size: 18px;
          }
          .buyNumber {
            padding-left: 10px;
            height: 40px;
            display: flex;
            align-items: center;
            li {
              display: block;
              width: 30px;
              height: 30px;
              border: 2px solid @mainColor;
              font-size: 20px;
              text-align: center;
              line-height: 20px;
              color: @mainColor;
              input {
                display: block;
                width: 100%;
                height: 100%;
                outline: none;
                border: none;
                text-align: center;
                color: @mainColor;
              }
              &:nth-child(1) {
                border-right: none;
              }

              &:nth-child(3) {
                border-left: none;
              }

              &:nth-child(1),
              &:nth-child(3) {
                cursor: pointer;
                font-size: 30px;
                &:hover {
                  color: #fff;
                  background-color: @mainColor;
                }
                &:active {
                  background-color: #e09b9e;
                }
              }
            }
          }
          .two-btn {
            display: flex;
            align-items: center;
            .purchase {
              width: 100px;
              height: 35px;
              margin-left: 10px;
              margin-top: 5px;
              cursor: pointer;
              border: 2px solid @mainColor;
              border-radius: 3px;
              color: @mainColor;
              background: #d45d632c;
              font-size: 17px;
              transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
              &:hover {
                color: #fff;
                background: @mainColor;
              }
              &:active {
                background: #e09b9e;
              }
              margin-right: 20px;
            }
            .disabled {
              width: 100px;
              height: 35px;
              margin-left: 10px;
              margin-top: 5px;
              cursor: not-allowed;
              border: 2px solid @mainColor;
              border-radius: 3px;
              color: @mainColor;
              background: #d45d632c;
              font-size: 17px;
              margin-right: 20px;
            }
            svg {
              font-size: 25px;
              cursor: pointer;
              color: @mainColor;
            }
          }
        }
      }
    }

    .title {
      height: 50px;
      div {
        position: relative;
        width: 100px;
        height: 100%;
        color: #000000;
        font-size: 20px;
        font-weight: 600;
        display: flex;
        justify-content: center;
        align-items: center;
        span {
          position: absolute;
          bottom: 12px;
          display: block;
          background-color: @mainColor;
          height: 4px;
          width: 80px;
          z-index: 0;
        }
      }
    }
    .bottom {
      background-color: #fff;
      padding: 10px;
    }
  }
}

.loading {
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: 999;
  display: flex;
  justify-content: center;
  div {
    margin-top: 20px;
    width: 200px;
    height: 50px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    color: @mainColor;
    display: flex;
    justify-content: center;
    align-items: center;
    animation: showLoading 1s ease-in-out;
  }
}

@-webkit-keyframes showLoading {
  0% {
    margin-top: -80px;
  }

  50% {
    margin-top: 20px;
  }

  60% {
    margin-top: 10px;
  }

  70% {
    margin-top: 20px;
  }

  80% {
    margin-top: 15px;
  }

  100% {
    margin-top: 20px;
  }
}
</style>