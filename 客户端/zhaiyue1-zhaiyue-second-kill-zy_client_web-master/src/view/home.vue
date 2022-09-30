<template>
  <!-- 上传身份证 -->
  <!-- <div class="top"> -->
  <div class="top" :style="isIdCardShow">
    <div class="card">
      <div class="left">
        <div class="title">请先上传身份证</div>
        <el-upload
          class="upload-demo"
          :action="idCardURL"
          :on-success="handleSuccess"
          :limit="1"
          :data="userId"
          :on-exceed="handleSuccess"
          :show-file-list="false"
        >
          <div class="upload_btn">{{ uploadBtnText }}</div>
        </el-upload>
      </div>
      <div class="right">
        <div class="title">身份证信息确认</div>
        <div>
          身份证号:
          <input
            type="text"
            placeholder=" 请先上传身份证"
            v-model="idCardName"
          />
        </div>
        <div>
          名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;字:
          <input
            type="text"
            placeholder=" 请先上传身份证"
            v-model="idCardNumber"
          />
        </div>
        <button @click="submitIdCard">确认</button>
      </div>
      <div class="tip_1">上传的文件需小于500KB</div>
      <div class="tip_2">请仔细校验自己的身份信息</div>
    </div>
  </div>

  <!-- 用户修改信息 -->
  <div class="change" :style="isChangeShow">
    <div class="main">
      <div class="main-left">
        <img :src="userInfo.avatar" alt="" />
        <div class="img-block">￥{{ userInfo.balance }}</div>
        <div class="username">{{ userInfo.username }}</div>
      </div>
      <div class="main-right">
        <button class="close" @click="isChangeShow = 'display:none;'">X</button>
        <div @click="userInfoDrawer = true">修改用户信息</div>
        <div @click="userPwdDrawer = true">修改用户密码</div>
      </div>
    </div>
  </div>

  <div class="home-layout">
    <!-- 头部 -->
    <div class="head">
      <div class="footer"></div>
      <!-- 退出按钮和他的确认提示框 -->
      <el-popconfirm
        confirm-button-text="YES"
        cancel-button-text="NO"
        :icon="InfoFilled"
        icon-color="red"
        title="你确定要退出登录？"
        @confirm="quit"
        confirmButtonType="danger"
        cancelButtonType="danger"
      >
        <template #reference>
          <div class="left">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-tuichu"></use>
            </svg>
          </div>
        </template>
      </el-popconfirm>

      <div class="right">
        <!-- 菜单 -->
        <el-menu
          active-text-color="#f5de19"
          background-color="#cb4042"
          class="el-menu-demo"
          :default-active="activePath"
          mode="horizontal"
          text-color="#fff"
          router="true"
        >
          <el-menu-item index="/index" @click="saveNavState('/index')">
            <el-icon><location /></el-icon>
            <span>首页</span>
          </el-menu-item>
          <el-sub-menu index="2">
            <template #title>
              <el-icon><goods /></el-icon>
              <span>秒杀活动</span>
            </template>
            <el-menu-item index="/Cactivity" @click="saveNavState('/activity')"
              >存款秒杀</el-menu-item
            >
            <el-menu-item index="/Dactivity" @click="saveNavState('/activity')"
              >贷款秒杀</el-menu-item
            >
          </el-sub-menu>

          <el-sub-menu index="3">
            <template #title>
              <el-icon><shopping-cart-full /></el-icon>
              <span>我的收藏</span>
            </template>
            <el-menu-item index="/Cfavor" @click="saveNavState('/Cfavor')"
              >存款收藏</el-menu-item
            >
            <el-menu-item index="/Dfavor" @click="saveNavState('/Dfavor')"
              >贷款收藏</el-menu-item
            >
          </el-sub-menu>
          <el-sub-menu index="4">
            <template #title>
              <el-icon><document /></el-icon>
              <span>我的订单</span>
            </template>
            <el-menu-item index="/Corder" @click="saveNavState('/Corder')"
              >存款订单</el-menu-item
            >
            <el-menu-item index="/Dorder" @click="saveNavState('/Dorder')"
              >贷款订单</el-menu-item
            >
          </el-sub-menu>
        </el-menu>

        <div class="tx-img">
          <div>
            <div class="message">{{ userInfo.username }}</div>
            <!-- <span>陈晓澈</span> -->
            <div class="message">￥{{ userInfo.balance }}</div>
            <!-- <span>￥48000</span> -->
          </div>
          <img
            :src="userInfo.avatar"
            alt=""
            @click="isChangeShow = 'display:block'"
          />
        </div>
      </div>
    </div>
    <!-- 内容主体 -->
    <div class="main">
      <router-view></router-view>
    </div>
  </div>

  <!-- 修改用户信息抽屉 -->
  <el-drawer
    v-model="userInfoDrawer"
    title="修改用户信息"
    direction="ltr"
    class="userInfoDrawer"
    size="400px"
  >
    <div class="changeInfo">
      <div class="changeInfo_top">
        <div class="changeInfo_top_left">
          <img :src="avatarUrl" alt="" />
        </div>
        <div class="changeInfo_top_right">
          <!-- 上传头像 -->
          <el-upload
            :action="avatarURL"
            :on-success="avatarUpload"
            :limit="1"
            :data="userId"
            :on-exceed="avatarUpload"
            :show-file-list="false"
          >
            <template #trigger>
              <button>UPLOAD AVATAR</button>
            </template>
          </el-upload>
        </div>
      </div>
      <div class="changeInfo_bottom">
        <div class="changeInfo_bottom_left">
          用户名:<input type="text" v-model="DrawerUsername" />
        </div>
        <button @click="submitUserInfo()">SUBMIT</button>
      </div>
    </div>
  </el-drawer>

  <!-- 修改用户密码抽屉 -->
  <el-drawer
    v-model="userPwdDrawer"
    title="修改用户密码"
    direction="ltr"
    size="400px"
  >
    <div class="changePwd">
      <input type="text" placeholder=" 请输入手机号" v-model="DrawerPhone" />
      <input type="password" placeholder=" 请输入原密码" v-model="DrawerPwd" />
      <input
        type="password"
        placeholder=" 请输入新密码"
        v-model="DrawerNewPwd"
      />
      <input
        type="password"
        placeholder=" 请确认新密码"
        v-model="DrawerNewRePwd"
      />
      <button @click="changePwd()">SUBMIT</button>
    </div>
  </el-drawer>
</template>

<script>
import { getUserInfo, editInfo, insertIdInfo } from "@/api/welcome/index.js";
import {
  Location,
  Document,
  Goods,
  ShoppingCartFull,
} from "@element-plus/icons-vue";
import { find } from "@/api/fgtPwd/index.js";
import { ref, onMounted, reactive, toRefs } from "vue";
import { ElNotification } from "element-plus";
import { useRouter } from "vue-router";
import { baseURL } from "@/utils/request.js";
export default {
  setup() {
    const router = useRouter();
    const data = reactive({
      userId: window.localStorage.getItem("userId"),
      isChangeShow: "display:none",
      userInfo: {},
      //显示上传身份证窗口
      isIdCardShow: "display:none",
      idCardName: "",
      idCardNumber: "",
      // 修改用户信息抽屉状态
      userInfoDrawer: false,
      DrawerUsername: "",
      //修改密码信息抽屉状态
      userPwdDrawer: false,
      DrawerPhone: "",
      DrawerPwd: "",
      DrawerNewPwd: "",
      DrawerNewRePwd: "",
      //头像
      avatarUrl: "",
      uploadBtnText: "+",
      //上传地址
      idCardURL: baseURL + "/client/user/addIdCard",
      avatarURL: baseURL + "/file/image",
    });

    // 菜单栏
    const activePath = ref("");
    onMounted(() => {
      activePath.value = window.sessionStorage.getItem("activePath");
      getUser();
    });
    const saveNavState = (val) => {
      window.sessionStorage.setItem("activePath", val);
      activePath.value = val;
    };

    // 获取用户信息
    const getUser = () => {
      getUserInfo(data.userId).then((res) => {
        if (res.code == 200) {
          data.userInfo = res.data;
          data.DrawerUsername = res.data.username;
          data.avatarUrl = res.data.avatar;
          if (!("idCard" in data.userInfo)) {
            data.isIdCardShow = "";
          }
        } else {
          ElNotification({
            title: "获取用户信息失败!",
            message: "",
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };

    // 图片上传成功
    const handleSuccess = (res) => {
      console.log(res);
      if (res.code == 200) {
        data.uploadBtnText = "√";
        ElNotification({
          title: "图片上传成功!",
          message: "",
          type: "success",
          position: "bottom-right",
        });
        data.idCardName = res.data.name;
        data.idCardNumber = res.data.idCard;
        return;
      } else {
        ElNotification({
          title: "身份证信息添加失败!",
          message: `${res.msg}`,
          type: "error",
          position: "bottom-right",
        });
      }
    };

    //退出功能
    const quit = () => {
      window.localStorage.removeItem("userId");
      window.localStorage.removeItem("token");
      router.push({ path: "/login" });
      ElNotification({
        title: "退出成功!",
        message: "",
        type: "success",
        position: "bottom-right",
      });
    };

    //修改用户信息
    const submitUserInfo = () => {
      if (data.username == "") {
        return;
      }
      editInfo(data.DrawerUsername, data.avatarUrl, data.userId).then((res) => {
        if (res.code == 200) {
          ElNotification({
            title: "信息修改成功!",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          data.userInfoDrawer = false;
          router.go(0);
          return;
        } else {
          ElNotification({
            title: "信息修改失败!",
            message: `${res.msg}`,
            type: "error",
            position: "bottom-right",
          });
          return;
        }
      });
    };
    //将身份证信息提交到后台
    const submitIdCard = () => {
      insertIdInfo(data.idCardNumber, data.idCardName).then((res) => {
        if (res.code == 200) {
          ElNotification({
            title: "身份证信息添加成功!",
            message: "",
            type: "success",
            position: "bottom-right",
          });
          data.isIdCardShow = "display:none;";
        }
      });
    };

    // 头像上传
    const avatarUpload = (res) => {
      console.log(res.data);
      data.avatarUrl = res.data;
    };

    // 修改密码
    const changePwd = () => {
      if (data.DrawerNewPwd != data.DrawerNewRePwd) {
        ElNotification({
          title: "两次密码不相同!",
          message: "",
          type: "error",
          position: "bottom-right",
        });
        return;
      }
      find(data.DrawerPhone, data.DrawerNewPwd)
        .then((res) => {
          if (res.code == 200) {
            ElNotification({
              title: "密码修改成功!",
              message: "",
              type: "success",
              position: "bottom-right",
            });
            localStorage.setItem("pwd", data.DrawerPwd);
            data.userPwdDrawer = false;
            data.DrawerPwd = "";
            data.DrawerNewPwd = "";
            data.DrawerNewRePwd = "";
            return;
          } else {
            ElNotification({
              title: "密码修改失败!",
              message: "",
              type: "error",
              position: "bottom-right",
            });
            return;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    };

    return {
      saveNavState,
      activePath,
      ...toRefs(data),
      handleSuccess,
      quit,
      submitUserInfo,
      submitIdCard,
      avatarUpload,
      changePwd,
    };
  },
  components: {
    Location,
    Document,
    Goods,
    ShoppingCartFull,
  },
};
</script>


<style lang="less" scoped>
@mainColor: #cb4042;
// 遮罩
.top {
  width: 100%;
  height: 100%;
  position: fixed;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 999;
  display: flex;
  justify-content: center;
  align-items: center;
  .card {
    position: relative;
    width: 700px;
    height: 300px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    padding: 10px;
    display: flex;
    color: @mainColor;

    .left,
    .right {
      flex: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .title {
      margin-top: 30px;
      width: 100%;
      text-align: center;
      font-size: 20px;
      font-weight: 600;
      margin-bottom: 20px;
    }
    .upload_btn {
      width: 150px;
      height: 150px;
      font-size: 150px;
      background: none;
      border: 3px solid @mainColor;
      text-align: center;
      line-height: 130px;
      color: @mainColor;
      cursor: pointer;
      border-radius: 3px;
      border-radius: 10px;
      transition: background-color 0.2s ease-in-out, color 0.3s ease-in-out;
      &:hover {
        background-color: rgb(219, 117, 119);
        color: #fff;
      }
    }
    button {
      width: 100px;
      height: 30px;
      font-size: 15px;
      background: none;
      border: 1px solid @mainColor;
      text-align: center;
      color: @mainColor;
      cursor: pointer;
      border-radius: 3px;
      transition: background-color 0.2s ease-in-out, color 0.3s ease-in-out;
      &:hover {
        background-color: @mainColor;
        color: #fff;
      }
      &:active {
        background-color: rgb(219, 117, 119);
      }
    }
    input {
      width: 180px;
      height: 30px;
      border: 1px solid @mainColor;
      outline: none;
      border: none;
      border-bottom: 1px solid @mainColor;
      color: @mainColor;
      background: none;
      margin-bottom: 30px;
      //* 更改input输入框placeholder的样式
      &::-webkit-input-placeholder {
        color: @mainColor;
      }
    }
    .tip_1,
    .tip_2 {
      position: absolute;
      font-size: 10px;
      bottom: 40px;
    }
    .tip_1 {
      right: 370px;
    }
    .tip_2 {
      right: 20px;
    }
  }
}
// 内容主体
.home-layout {
  height: 100%;
  width: 100%;
  position: absolute;
  background: #fdf8f8;

  .el-container {
    height: 100%;
  }
  //   头部区域
  .head {
    position: relative;
    height: 60px;
    width: 100%;
    background-color: @mainColor;
    box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 10px;
    .footer {
      position: absolute;
      bottom: -30px;
      height: 50px;
      width: 100%;
      background-color: @mainColor;
      animation: footer_wive 3s infinite ease-in-out;
    }
    .left {
      width: 45px;
      height: 45px;
      display: flex;
      justify-content: center;
      align-items: center;
      svg {
        font-size: 20px;
        color: #fff;
        cursor: pointer;
      }
    }
    .right {
      display: flex;
      align-items: center;
      width: 750px;
      justify-content: space-around;
      z-index: 1;
      .el-menu {
        width: 600px;
        border: none;
      }
      .tx-img {
        width: 145px;
        height: 45px;
        overflow: hidden;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: space-around;
        border-radius: 5px;
        margin-right: 5px;
        box-shadow: 10px 0 10px rgba(0, 0, 0, 0.2);
        div {
          width: 100px;
          height: 100%;
          .message {
            color: #fff;
            text-align: end;
            width: 100px;
            height: 50%;
            //超出一行显示省略号
            display: -webkit-box;
            text-overflow: ellipsis;
            overflow: hidden;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 1;
          }
        }
        img {
          width: 40px;
          height: 40px;
          transition: transform 0.5s ease-in-out;
          border-radius: 50%;
          &:hover {
            transform: rotate(360deg);
          }
        }
      }
    }
  }

  .main {
    background-color: #fdf8f8;
  }
}
//用户修改信息
.change {
  position: fixed;
  right: 30px;
  top: 80px;
  width: 300px;
  height: 180px;
  background-color: #ffffff;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  z-index: 3;
  animation: change_show 1s ease-in-out;
  .main {
    position: relative;
    width: 100%;
    height: 100%;
    display: flex;
    .main-left,
    .main-right {
      width: 50%;
      height: 100%;
      display: flex;
      flex-direction: column;
      justify-content: space-around;
      align-items: center;
    }
    .main-left {
      position: relative;
      img,
      .img-block {
        width: 120px;
        height: 120px;
        border-radius: 15px;
      }
      .img-block {
        height: 60px;
        position: absolute;
        top: 70px;
        color: #fff;
        font-size: 15px;
        font-weight: 600;
        background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5));
        line-height: 100px;
        //超出一行显示省略号
        display: -webkit-box;
        text-overflow: ellipsis;
        overflow: hidden;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
      }
      .username {
        font-size: 15px;
        color: @mainColor;
      }
    }
    .main-right {
      position: relative;
      div {
        color: @mainColor;
        cursor: pointer;
        &:hover {
          font-weight: 600;
        }
      }
      // 关闭按钮
      .close {
        position: absolute;
        top: 0;
        right: 0;
        width: 30px;
        height: 20px;
        font-size: 15px;
        color: @mainColor;
        border: none;
        background: none;
        cursor: pointer;
        border-radius: 5px;
        transition: background 0.2s ease-in-out, color 0.2s ease-in-out;
        &:hover {
          background: @mainColor;
          color: #ffffff;
        }
      }
    }
  }
}
// 修改用户信息抽屉
.changeInfo {
  width: 100%;
  .changeInfo_top {
    width: 100%;
    height: 120px;
    display: flex;
    .changeInfo_top_left {
      width: 50%;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      img {
        width: 120px;
        height: 120px;
        border-radius: 5px;
      }
    }
    .changeInfo_top_right {
      display: flex;
      justify-content: center;
      align-items: center;
      button {
        width: 120px;
        height: 40px;
        font-size: 15px;
        background: none;
        border: 1px solid @mainColor;
        color: @mainColor;
        cursor: pointer;
        border-radius: 3px;
        transition: background-color 0.2s ease-in-out, color 0.3s ease-in-out;
        &:hover {
          background-color: @mainColor;
          color: #fff;
        }
      }
    }
  }
  .changeInfo_bottom {
    width: 100%;
    height: 60px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    button {
      width: 100px;
      height: 30px;
      font-size: 15px;
      background: none;
      border: 1px solid @mainColor;
      color: @mainColor;
      cursor: pointer;
      border-radius: 3px;
      transition: background-color 0.2s ease-in-out, color 0.3s ease-in-out;
      &:hover {
        background-color: @mainColor;
        color: #fff;
      }
    }
    .changeInfo_bottom_left {
      color: @mainColor;
      display: flex;
      align-items: center;
      input {
        width: 120px;
        height: 30px;
        background: none;
        border: none;
        border-bottom: 2px solid @mainColor;
        color: @mainColor;
        outline: none;
        font-size: 18px;
        font-weight: 600;
        //* 更改input输入框placeholder的样式
        &::-webkit-input-placeholder {
          color: @mainColor;
          font-size: 18px;
          font-weight: 600;
        }
      }
    }
  }
}
//修改用户密码抽屉
.changePwd {
  width: 100%;
  input {
    display: block;
    width: 280px;
    height: 30px;
    margin: 30px auto;
    background: none;
    border: none;
    border-bottom: 2px solid @mainColor;
    color: @mainColor;
    outline: none;
    //* 更改input输入框placeholder的样式
    &::-webkit-input-placeholder {
      color: @mainColor;
    }
  }
  button {
    display: block;
    margin-left: 240px;
    width: 80px;
    height: 30px;
    font-size: 15px;
    background: none;
    border: 1px solid @mainColor;
    color: @mainColor;
    cursor: pointer;
    border-radius: 3px;
    transition: background-color 0.2s ease-in-out, color 0.3s ease-in-out;
    &:hover {
      background-color: @mainColor;
      color: #fff;
    }
  }
}

// 动画
//用户穿出现动画
input {
  transition: box-shadow 0.3s ease-in-out;
  &:hover {
    box-shadow: 3px 3px 3px 3px rgba(0, 0, 0, 0.1);
  }
}
@-webkit-keyframes change_show {
  0% {
    right: -380px;
  }

  50% {
    right: 30px;
  }

  60% {
    right: 20px;
  }

  70% {
    right: 30px;
  }

  80% {
    right: 25px;
  }

  100% {
    right: 30px;
  }
}
//波纹效果
@-webkit-keyframes footer_wive {
  0%,
  100% {
    -webkit-clip-path: polygon(
      0 0,
      0 53%,
      8% 45%,
      20% 41%,
      34% 43%,
      44% 48%,
      55% 56%,
      64% 64%,
      78% 67%,
      91% 61%,
      100% 53%,
      100% 0
    );
    clip-path: polygon(
      0 0,
      0 53%,
      8% 45%,
      20% 41%,
      34% 43%,
      44% 48%,
      55% 56%,
      64% 64%,
      78% 67%,
      91% 61%,
      100% 53%,
      100% 0
    );
  }
  50% {
    -webkit-clip-path: polygon(
      0 0,
      0 53%,
      8% 61%,
      21% 66%,
      34% 65%,
      46% 57%,
      55% 48%,
      65% 42%,
      78% 40%,
      90% 46%,
      100% 53%,
      100% 0
    );
    clip-path: polygon(
      0 0,
      0 53%,
      8% 61%,
      21% 66%,
      34% 65%,
      46% 57%,
      55% 48%,
      65% 42%,
      78% 40%,
      90% 46%,
      100% 53%,
      100% 0
    );
  }
}
</style>