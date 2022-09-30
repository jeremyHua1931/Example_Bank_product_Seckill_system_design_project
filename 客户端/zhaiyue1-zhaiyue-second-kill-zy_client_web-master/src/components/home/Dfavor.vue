<template>
  <!-- 我的收藏 -->
  <div class="Dfavor">
    <div class="top">
      <div class="top-left">
        <div :class="nowActivity" @click="select(1)">正在进行</div>
        <div :class="futActivity" @click="select(2)">未来活动</div>
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
        <template v-for="item in favorList" :key="item.id">
          <li
            @click="gotoDetail(item.id, 0)"
            v-if="
              nowTime > Date.parse(new Date(item.startTime)) &&
              nowTime < Date.parse(new Date(item.endTime)) &&
              isNow === 1
            "
          >
            <span>{{ item.name }}</span>
            <span>￥{{ item.price }}</span>
            <span>还剩:{{ item.remainNumber }}份</span>
            <span>
              <count-down
                :isNow="1"
                :startTimeStamp="item.startTime"
                :endTimeStamp="item.endTime"
              ></count-down>
            </span>
            <!-- <span>{{ countDown(0, item.endTime) }}</span> -->
          </li>
          <li
            @click="gotoDetail(item.id, 1)"
            v-if="nowTime < Date.parse(new Date(item.startTime)) && isNow === 0"
          >
            <span>{{ item.name }}</span>
            <span>￥{{ item.price }}</span>
            <span>还剩:{{ item.remainNumber }}份</span>
            <span>
              <count-down
                :isNow="0"
                :startTimeStamp="item.startTime"
                :endTimeStamp="item.endTime"
              ></count-down>
            </span>
            <!-- <span>{{ countDown(0, item.endTime) }}</span> -->
          </li>
        </template>
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
import { getFavors } from "@/api/favor/index.js";
import { reactive, onMounted, toRefs } from "vue";
import { ElNotification } from "element-plus";
import { useRouter } from "vue-router";
import countDown from "@/components/home/countDown.vue";

export default {
  setup() {
    const router = useRouter();

    const data = reactive({
      userId: window.localStorage.getItem("userId"),
      nowTime: null,
      isNow: 1,
      nowActivity: "normal select",
      futActivity: "normal",
      favorList: [],
      // 总条目数
      total: 0,
      // 当前页面
      currentPage: 1,
    });

    onMounted(() => {
      getFavorList();
    });

    // 获取商品列表
    const getFavorList = () => {
      getFavors(1, data.currentPage).then((res) => {
        data.favorList = res.data;
        data.total = res.data.length;
        // 获取现在时间的时间戳
        data.nowTime = new Date().getTime();
        if (res.code === 200) {
          ElNotification({
            title: "收藏列表获取成功",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          return;
        } else {
          ElNotification({
            title: "收藏列表获取失败",
            message: "",
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };
    //前往商品详情页
    let gotoDetail = (goodId, isFuture) => {
      router.push({
        path: "/goodDetail",
        query: {
          isLoans: 1,
          goodId: goodId,
          isNow: data.isNow,
          isFuture,
        },
      });
    };

    // 改变当前页数
    const handleCurrentChange = (val) => {
      data.currentPage = val;
      getFavorList();
    };

    // 选择显示状态
    let select = (val) => {
      if (val === 1) {
        data.nowActivity = "normal select";
        data.futActivity = "normal";
        data.isNow = 1;
      } else {
        data.nowActivity = "normal";
        data.futActivity = "normal select";
        data.isNow = 0;
      }
    };

    return {
      ...toRefs(data),
      gotoDetail,
      select,
      handleCurrentChange,
    };
  },
  components: {
    countDown,
  },
};
</script>

<style lang="less" scoped>
@mainColor: #cb4042;
.Dfavor {
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
        font-size: 17px;
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
        width: 95%;
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
          font-size: 20px;
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
    }
  }
}
</style>