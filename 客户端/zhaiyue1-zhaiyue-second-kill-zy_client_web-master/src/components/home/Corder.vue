<template>
  <!-- 订单列表 -->
  <div class="Corder">
    <div class="top">
      <div class="top-left">
        <!-- <div class="normal select">正在进行</div>
        <div class="normal">未来活动</div> -->
      </div>
      <div class="top-right">
        <input type="text" placeholder="  请输入" />
        <button>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-sousuo"></use>
          </svg>
        </button>
      </div>
    </div>
    <div class="bottom">
      <ul class="main">
        <li v-for="item in orderList" :key="item.id" @click="gotoDetail(item)">
          <span>{{ item.name }}</span>
          <span v-if="item.status == 0">待支付</span>
          <span v-if="item.status == 1" style="color: #90b44b">支付完成</span>
          <span>共订{{ item.number }}份</span>
          <span>创建时间 {{ item.createTime }}</span>
        </li>
      </ul>
      <div class="pagination">
        <el-pagination
          layout="prev, pager, next"
          :total="total"
          :current-page="currentPage"
          @current-change="handleCurrentChange"
          :page-size="10"
          background
          :hide-on-single-page="true"
        />
      </div>
    </div>
  </div>
</template>

<script>
import { reactive, onMounted, toRefs } from "vue";
import { getOrders } from "@/api/order/index.js";
import { ElNotification } from "element-plus";
import { useRouter } from "vue-router";
export default {
  setup() {
    const router = useRouter();
    const data = reactive({
      userId: window.localStorage.getItem("userId"),
      orderList: [],
      // 总条目数
      total: 0,
      // 当前页面
      currentPage: 1,
    });
    onMounted(() => {
      getOrderList();
    });

    //获取订单列表
    const getOrderList = () => {
      // 获取订单列表
      getOrders(0, data.currentPage).then((res) => {
        data.orderList = res.data.orderList;
        data.total = res.data.count;
        if (res.code === 200) {
          ElNotification({
            title: "订单列表获取成功",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          return;
        } else {
          ElNotification({
            title: "订单列表获取失败",
            message: "",
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };

    // 跳转到订单详情页
    const gotoDetail = (item) => {
      router.push({
        path: "/orderDetail",
        query: {
          name: item.name,
          orderId: item.id,
          goodId: item.goodId,
          number: item.number,
          status: item.status,
          totalPrice: item.totalPrice,
          userId: item.userId,
          username: item.username,
          createTime: item.createTime,
          isLoans: 0,
        },
      });
    };

    // 改变当前页数
    const handleCurrentChange = (val) => {
      data.currentPage = val;
      getOrderList();
    };
    return {
      ...toRefs(data),
      gotoDetail,
      handleCurrentChange,
    };
  },
};
</script>

<style lang="less" scoped>
@mainColor: #cb4042;

.Corder {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-items: center;
  margin: 20px auto;
  .top {
    position: relative;
    width: 100%;
    height: 70px;
    background-color: #ffffff;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    .top-left {
      margin-left: 20px;
      width: 250px;
      height: 50%;
      .normal {
        float: left;
        height: 100%;
        width: 50%;
        font-size: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        color: @mainColor;
        border-bottom: 3px solid #fff;
        transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
        &:hover {
          background-color: @mainColor;
          color: #fff;
        }
      }
      .select {
        border-bottom: 3px solid @mainColor;
      }
    }
    .top-right {
      position: absolute;
      right: 0;
      width: 250px;
      height: 30px;
      // background-color: pink;
      margin-right: 30px;
      input {
        background: none;
        border: 2px solid #d95f63;
        outline: none;
        font-size: 20px;
        color: #d95f63;
        width: 200px;
        height: 100%;
        &::-webkit-input-placeholder {
          color: #d95f63;
          font-size: 20px;
        }
      }
      button {
        width: 50px;
        height: 100%;
        font-size: 20px;
        border: 2px solid #d95f63;
        background: none;
        color: #d95f63;
        cursor: pointer;
        border-left: none;
        transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
        &:hover {
          background-color: #d95f63;
          color: #fff;
        }
      }
    }
  }
  .bottom {
    width: 1200px;
    border-radius: 5px;
    display: flex;
    flex-direction: column;
    align-items: center;
    .main {
      width: 95%;
      display: flex;
      flex-direction: column;
      align-items: center;
      li {
        height: 60px;
        width: 96%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        cursor: pointer;
        background-color: #fff;
        margin-bottom: 15px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 2px;
        transition: width 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
        &:hover {
          width: 100%;
          box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }
        span {
          color: #945a5d;
          font-weight: 600;
          font-size: 17px;
          width: 20%;
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

          &:nth-child(4) {
            width: 40%;
          }
        }
      }
    }
    .pagination {
      width: 95%;
      height: 10%;
      display: flex;
      justify-content: center;

      .el-pagination {
        /deep/button {
          background-color: #fff;
          box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        /deep/.el-pager {
          li {
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            font-weight: 600;
          }
          .is-active {
            color: @mainColor;
          }
        }
      }
    }
  }
}
</style>