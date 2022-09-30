<template>
  <div class="welcome">
    <!-- 左侧 -->
    <div class="left">
      <!-- 左侧上部 -->
      <div class="left-top">
        <img src="../../assets/index_bgc.png" class="left_bgc" />
        <!-- 轮播图 -->
        <el-carousel arrow="never" indicator-position="none">
          <el-carousel-item v-for="item in carousel" :key="item">
            <!-- <img :src="item.url" alt="" /> -->
            <!-- {{ item.url }} -->
            <img :src="item.url" alt="" />
          </el-carousel-item>
        </el-carousel>
      </div>
      <!-- 左侧下部 -->
      <ul class="left-bottom">
        <li>
          <div class="main" @click="goto(1)">
            <img src="../../assets/li_1.png" alt="" class="main_bgc" />
            <div class="title_goto">点击前往></div>
            <div class="title">
              <span>DEPOSIT SECOND KILL</span>
              <span>存款秒杀</span>
            </div>
          </div>
        </li>
        <li>
          <div class="main" @click="goto(2)">
            <img src="../../assets/li_2.png" alt="" class="main_bgc" />
            <div class="title_goto">点击前往></div>
            <div class="title">
              <span>LOAN SECOND KILL</span>
              <span>贷款秒杀</span>
            </div>
          </div>
        </li>
        <li>
          <div class="main" @click="goto(3)">
            <img src="../../assets/li_3.png" alt="" class="main_bgc" />
            <div class="title_goto">点击前往></div>
            <div class="title">
              <span>DEPOSIT COLLECTION</span>
              <span>存款收藏</span>
            </div>
          </div>
        </li>
        <li @click="goto(4)">
          <div class="main">
            <img src="../../assets/li_4.png" alt="" class="main_bgc" />
            <div class="title_goto">点击前往></div>
            <div class="title">
              <span>LOAN COLLECTION</span>
              <span>贷款收藏</span>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <!-- 右侧 -->
    <!-- <div class="right">
      <div class="right-main">
        <div class="right-main-top">
          <span class="change" @click="drawer = true">修改信息</span>
          <div class="right-main-top-img">
            <img src="../../assets/01.jpg" alt="" />
            <div class="img-block">￥{{ userInfo.balance }}</div>
          </div>
          <span>{{ userInfo.username }}</span>
        </div>
        <div class="right-main-bottom">
          <div class="notice-icon">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-gonggao"></use>
            </svg>
          </div>
        </div>
      </div>
    </div> -->
  </div>

  <!-- 修改用户信息抽屉 -->
  <el-drawer
    v-model="drawer"
    title="个人信息修改"
    direction="rtl"
    :before-close="handleClose"
  >
    <!-- 上传头像 -->
    <el-upload
      class="avatar-uploader"
      action="http://52.82.45.193:8888/server/file/image"
      :show-file-list="false"
    >
      <img v-if="imageUrl" :src="imageUrl" class="avatar" />
      <el-icon v-else class="avatar-uploader-icon"><Plus /></el-icon>
    </el-upload>
    <div>用户名:<input type="text" placeholder="请输入" /></div>
    <button>SUBMIT</button>
  </el-drawer>
</template>

<script>
import { reactive, onMounted, toRefs, ref } from "vue";
import { getUserInfo } from "@/api/welcome/index.js";
import { Plus } from "@element-plus/icons-vue";
import { useRouter } from "vue-router";
import { ElNotification } from "element-plus";

// import { UploadFile, UploadRawFile, UploadProgressEvent } from "element-plus";
export default {
  setup() {
    const router = useRouter();
    // 定义抽屉显示状态
    const drawer = ref(false);

    const data = reactive({
      userId: window.localStorage.getItem("userId"),
      userInfo: {},
    });

    // 轮播图
    const carousel = reactive([
      {
        url: require("../../assets/banner1.png"),
      },
      {
        url: require("../../assets/banner2.png"),
      },
      {
        url: require("../../assets/banner3.png"),
      },
      {
        url: require("../../assets/banner4.png"),
      },
    ]);

    onMounted(() => {
      if (window.localStorage.getItem("token") == null) {
        router.push("/login");
        ElNotification({
          title: "请先登录!",
          message: "",
          type: "warning",
        });
        return;
      }
      getUserInfo(data.userId).then((res) => {
        data.userInfo = res.data;
      });
    });

    // 上传头像
    const imageUrl = ref("");

    //点击图片路由跳转
    const goto = (val) => {
      switch (val) {
        case 1:
          router.push({ path: "/Cactivity" });
          break;
        case 2:
          router.push({ path: "/Dactivity" });
          break;
        case 3:
          router.push({ path: "/Cfavor" });
          break;
        case 4:
          router.push({ path: "/Dfavor" });
          break;
      }
    };
    return {
      carousel,
      drawer,
      ...toRefs(data),
      imageUrl,
      goto,
    };
  },
  components: {
    Plus,
  },
};
</script>

<style lang="less" scoped>
@mainColor: #cb4042;
.welcome {
  margin-top: 20px;
  height: 100%;
  width: 100%;
  .left {
    width: 1200px;
    height: 550px;
    margin: 0 auto;
    .left-top {
      position: relative;
      height: 550px;
      width: 100%;
      display: flex;
      justify-content: space-between;
      align-items: center;
      overflow: hidden;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

      .left_bgc {
        position: absolute;
        bottom: 0;
        right: 0;
        height: 500px;
        z-index: 1;
      }
      // 轮播图
      .el-carousel {
        width: 100%;
        height: 550px;
        background-color: #fff;
        .el-carousel__item {
          width: 100%;
          height: 550px;
          display: flex;
          justify-content: center;
          align-items: center;
          font-size: 30px;
          font-weight: 600;
          color: @mainColor;
          z-index: 2;
          img {
            width: 700px;
          }
        }
      }
    }
    .left-bottom {
      width: 100%;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      margin-top: 10px;
      li {
        position: relative;
        display: block;
        height: 250px;
        width: 100%;
        margin: 20px 0;
        display: flex;
        &:nth-child(1),
        &:nth-child(3) {
          flex-direction: row;
          // 主体内容
          .main {
            position: relative;
            padding: 10px;
            width: 70%;
            height: 100%;
            background-color: #fff;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: 0.5s width ease-in-out;
            &:hover {
              width: 75%;
            }
            // 背景图片定位
            .main_bgc {
              position: absolute;
              bottom: 0;
              right: 0;
              height: 250px;
            }
            // 点击前往
            .title_goto {
              color: @mainColor;
              font-weight: 600;
              font-size: 15px;
              height: 20px;
            }
            //英文标题
            .title {
              height: 230px;
              width: 60%;
              display: flex;
              flex-direction: column;
              justify-content: center;
              align-items: center;
              span {
                &:nth-child(1) {
                  color: @mainColor;
                  font-size: 30px;
                  margin-bottom: 5px;
                }
                &:nth-child(2) {
                  color: @mainColor;
                  letter-spacing: 25px;
                }
              }
            }
          }
        }
        &:nth-child(2),
        &:nth-child(4) {
          flex-direction: row-reverse;
          // 主体内容
          .main {
            position: relative;
            padding: 10px;
            width: 70%;
            height: 100%;
            background-color: #fff;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: row-reverse;
            transition: 0.5s width ease-in-out;
            &:hover {
              width: 75%;
            }
            // 背景图片定位
            .main_bgc {
              position: absolute;
              bottom: 0;
              left: 0;
              height: 250px;
            }
            // 点击前往
            .title_goto {
              color: @mainColor;
              font-weight: 600;
              font-size: 15px;
              height: 20px;
            }
            //英文标题
            .title {
              height: 230px;
              width: 50%;
              display: flex;
              flex-direction: column;
              justify-content: center;
              align-items: center;
              span {
                &:nth-child(1) {
                  color: @mainColor;
                  font-size: 30px;
                  margin-bottom: 5px;
                }
                &:nth-child(2) {
                  color: @mainColor;
                  letter-spacing: 25px;
                }
              }
            }
          }
        }
      }
    }
  }
}

// 上传头像
.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: var(--el-transition-duration-fast);
}
.avatar-uploader .el-upload:hover {
  border-color: var(--el-color-primary);
}
.el-icon.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  text-align: center;
}
.avatar {
  width: 178px;
  height: 178px;
  display: block;
}

//动画
// 波浪
// @-webkit-keyframes wive {
//   0%,
//   100% {
//     -webkit-clip-path: polygon(
//       0% 19%,
//       3% 17%,
//       7% 15%,
//       10% 13%,
//       15% 11%,
//       20% 11%,
//       24% 11%,
//       30% 12%,
//       34% 14%,
//       39% 17%,
//       42% 20%,
//       49% 24%,
//       45% 22%,
//       51% 26%,
//       54% 28%,
//       58% 30%,
//       64% 31%,
//       69% 31%,
//       76% 31%,
//       81% 29%,
//       86% 27%,
//       90% 26%,
//       94% 24%,
//       98% 22%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//     clip-path: polygon(
//       0% 19%,
//       3% 17%,
//       7% 15%,
//       10% 13%,
//       15% 11%,
//       20% 11%,
//       24% 11%,
//       30% 12%,
//       34% 14%,
//       39% 17%,
//       42% 20%,
//       49% 24%,
//       45% 22%,
//       51% 26%,
//       54% 28%,
//       58% 30%,
//       64% 31%,
//       69% 31%,
//       76% 31%,
//       81% 29%,
//       86% 27%,
//       90% 26%,
//       94% 24%,
//       98% 22%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//   }

//   50% {
//     -webkit-clip-path: polygon(
//       0% 19%,
//       2% 22%,
//       4% 25%,
//       7% 29%,
//       9% 31%,
//       14% 32%,
//       20% 33%,
//       26% 33%,
//       31% 32%,
//       36% 30%,
//       41% 28%,
//       45% 26%,
//       48% 24%,
//       52% 23%,
//       56% 21%,
//       59% 19%,
//       64% 17%,
//       69% 16%,
//       74% 15%,
//       79% 15%,
//       84% 16%,
//       88% 17%,
//       91% 19%,
//       94% 19%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//     clip-path: polygon(
//       0% 19%,
//       2% 22%,
//       4% 25%,
//       7% 29%,
//       9% 31%,
//       14% 32%,
//       20% 33%,
//       26% 33%,
//       31% 32%,
//       36% 30%,
//       41% 28%,
//       45% 26%,
//       48% 24%,
//       52% 23%,
//       56% 21%,
//       59% 19%,
//       64% 17%,
//       69% 16%,
//       74% 15%,
//       79% 15%,
//       84% 16%,
//       88% 17%,
//       91% 19%,
//       94% 19%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//   }
// }

// @keyframes wive {
//   0%,
//   100% {
//     -webkit-clip-path: polygon(
//       0% 19%,
//       3% 17%,
//       7% 15%,
//       10% 13%,
//       15% 11%,
//       20% 11%,
//       24% 11%,
//       30% 12%,
//       34% 14%,
//       39% 17%,
//       42% 20%,
//       49% 24%,
//       45% 22%,
//       51% 26%,
//       54% 28%,
//       58% 30%,
//       64% 31%,
//       69% 31%,
//       76% 31%,
//       81% 29%,
//       86% 27%,
//       90% 26%,
//       94% 24%,
//       98% 22%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//     clip-path: polygon(
//       0% 19%,
//       3% 17%,
//       7% 15%,
//       10% 13%,
//       15% 11%,
//       20% 11%,
//       24% 11%,
//       30% 12%,
//       34% 14%,
//       39% 17%,
//       42% 20%,
//       49% 24%,
//       45% 22%,
//       51% 26%,
//       54% 28%,
//       58% 30%,
//       64% 31%,
//       69% 31%,
//       76% 31%,
//       81% 29%,
//       86% 27%,
//       90% 26%,
//       94% 24%,
//       98% 22%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//   }

//   50% {
//     -webkit-clip-path: polygon(
//       0% 19%,
//       2% 22%,
//       4% 25%,
//       7% 29%,
//       9% 31%,
//       14% 32%,
//       20% 33%,
//       26% 33%,
//       31% 32%,
//       36% 30%,
//       41% 28%,
//       45% 26%,
//       48% 24%,
//       52% 23%,
//       56% 21%,
//       59% 19%,
//       64% 17%,
//       69% 16%,
//       74% 15%,
//       79% 15%,
//       84% 16%,
//       88% 17%,
//       91% 19%,
//       94% 19%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//     clip-path: polygon(
//       0% 19%,
//       2% 22%,
//       4% 25%,
//       7% 29%,
//       9% 31%,
//       14% 32%,
//       20% 33%,
//       26% 33%,
//       31% 32%,
//       36% 30%,
//       41% 28%,
//       45% 26%,
//       48% 24%,
//       52% 23%,
//       56% 21%,
//       59% 19%,
//       64% 17%,
//       69% 16%,
//       74% 15%,
//       79% 15%,
//       84% 16%,
//       88% 17%,
//       91% 19%,
//       94% 19%,
//       100% 20%,
//       100% 100%,
//       0% 100%
//     );
//   }
// }
</style>