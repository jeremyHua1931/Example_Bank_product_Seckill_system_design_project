<template>
  <!-- 登录组件 -->
  <div class="login">
    <div class="title">LOG IN</div>
    <input
      class="phone"
      type="text"
      placeholder=" PHONE/USERNAME"
      v-model="data.phone"
    />
    <input
      class="password"
      type="password"
      placeholder=" PASSWORD"
      v-model="data.password"
      @keydown.enter="submit"
    />
    <div class="btn">
      <div class="left" @click="submit">LOG IN</div>
      <router-link to="/register" class="right">SIGN IN</router-link>
    </div>
    <router-link to="/fgtPwd"
      ><div class="forgetPwd">FORGET YOUR PASSWORD?</div></router-link
    >
  </div>
</template>

<script>
import { login } from "@/api/login/index.js";
import { reactive } from "vue";
import { ElNotification } from "element-plus";
import { useRouter } from "vue-router";

export default {
  setup() {
    const router = useRouter();

    // 定义数据
    let data = reactive({
      phone: "gu_777",
      password: "123123",
      // phone: "",
      // password: "",
      userId: "",
      token: "",
      // 登录节流阀
      isLogin: true,
    });

    // 登陆发送
    let submit = () => {
      if (data.isLogin == false) {
        return;
      }
      if (data.phone == "") {
        ElNotification({
          title: "登录失败",
          message: "请填写手机号",
          type: "error",
        });
        return;
      } else if (data.password == "") {
        ElNotification({
          title: "登录失败",
          message: "请填写密码",
          type: "error",
          position: "bottom-right",
        });
        return;
      }
      data.isLogin = false;
      login(data).then((res) => {
        console.log(res);
        if (res.code == 200) {
          data.userId = res.data.userId;
          data.token = res.data.token;
          console.log(data.token);
          ElNotification({
            title: "登录成功",
            message: `欢迎${data.userId}`,
            type: "success",
            position: "bottom-right",
          });
          data.isLogin = true;
          window.sessionStorage.setItem("activePath", "/index");
          window.localStorage.setItem("userId", data.userId);
          window.localStorage.setItem("token", data.token);
          router.push({ path: "/home" });
          return;
        } else {
          ElNotification({
            title: "登录失败",
            message: "帐号或密码错误",
            type: "error",
            position: "bottom-right",
          });
          data.isLogin = true;

          return;
        }
      });
    };
    return { data, submit };
  },
};
</script>

<style lang="less" scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
}
@main-color: rgb(236, 233, 233);
.login {
  width: 100%;
  height: 100%;
  padding-top: 80px;
  .title {
    font-size: 20px;
    color: @main-color;
    text-align: center;
  }
  input {
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
  }
  input,
  .btn,
  .forgetPwd {
    display: block;
    width: 280px;
    height: 30px;
    margin: 30px auto;
    background: none;
    border: none;
    border-bottom: 2px solid @main-color;
    color: @main-color;
    outline: none;
    //* 更改input输入框placeholder的样式
    &::-webkit-input-placeholder {
      color: @main-color;
    }
  }
  .btn {
    margin-top: 40px;
    height: 37px;
    border: none;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    .left,
    .right {
      height: 100%;
      width: 45%;
      border: 2px solid @main-color;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      color: @main-color;
    }
  }
  .forgetPwd {
    margin-top: 50px;
    border: none;
    font-size: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
  }
}

//*动态效果
//*输入框
input {
  transition: box-shadow 0.3s ease-in-out;
  &:hover {
    box-shadow: 3px 3px 3px 3px rgba(0, 0, 0, 0.3);
  }
}

//*按钮
.btn {
  .left,
  .right {
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
    &:hover {
      background-color: #ece9e9;
      color: #b34d5a;
    }
  }
}

//*忘记密码
.forgetPwd {
  transition: font-size 0.2s ease-in-out;
  &:hover {
    font-size: 15px;
  }
}
</style>