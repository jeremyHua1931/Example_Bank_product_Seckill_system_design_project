<template>
  <!-- 注册组件 -->
  <div class="register">
    <div class="title">SIGN IN</div>
    <input
      class="phone"
      type="text"
      placeholder=" PHONE"
      v-model="data.phone"
    />
    <div class="code">
      <input
        class="verifyCode"
        type="text"
        placeholder=" VERIFYCODE"
        v-model="data.verifyCode"
      />
      <button class="getCode" @click="getPhoneCode()" :disabled="btn_crl">
        {{ btnText }}
      </button>
    </div>
    <input
      class="password"
      type="password"
      placeholder=" PASSWORD"
      v-model="data.password"
    />
    <input
      class="RePassword"
      type="password"
      placeholder=" REPASSWORD"
      v-model="data.repassword"
    />
    <div class="btn">
      <router-link to="/login" class="left">BACK</router-link>
      <div class="right" @click="submit()">SUBMIT</div>
    </div>
  </div>
</template>

<script>
import { reactive, ref } from "vue";
import { ElNotification } from "element-plus";
import { register, getVerifyCode } from "@/api/register/index.js";
import { useRouter } from "vue-router";
export default {
  setup() {
    const router = useRouter();

    // 定义表单对象数据
    let data = reactive({
      phone: "",
      password: "",
      repassword: "",
      verifyCode: "",
      // 节流阀
      isSubmit: true,
    });

    // 点击提交注册
    let submit = () => {
      if (data.isSubmit == false) {
        return;
      }
      if (data.phone == "") {
        // 弹出框
        ElNotification({
          title: "提交失败",
          message: "请填写手机号",
          type: "error",
        });
        return;
      } else if (data.verifyCode == "") {
        ElNotification({
          title: "提交失败",
          message: "请填写验证码",
          type: "error",
        });
        return;
      } else if (data.password == "") {
        ElNotification({
          title: "提交失败",
          message: "请填写密码",
          type: "error",
        });
        return;
      } else if (data.repassword == "") {
        ElNotification({
          title: "提交失败",
          message: "请确认密码",
          type: "error",
        });
        return;
      } else if (data.password != data.repassword) {
        ElNotification({
          title: "提交失败",
          message: "两次密码不一致",
          type: "error",
        });
        return;
      }
      // 发送信息
      data.isSubmit = false;
      register(data).then((res) => {
        if (res.code == 200) {
          ElNotification({
            title: "注册成功",
            message: "",
            type: "success",
          });
          router.push("/login");
          data.isSubmit = true;
        } else {
          ElNotification({
            title: "注册失败",
            message: "",
            type: "error",
          });
          data.phone = "";
          data.verifyCode = "";
          data.password = "";
          data.repassword = "";
          data.isSubmit = true;
          return;
        }
      });
    };

    let btnText = ref("GET CODE");
    let totalTime = ref(10);
    //定时器
    let timer = ref(null);
    //节流阀
    let canClick = ref(true);
    //按钮控制
    let btn_crl = ref(false);

    //*发送验证码
    let getPhoneCode = () => {
      if (data.phone == "") {
        ElNotification({
          title: "发送失败",
          message: "请填写手机号",
          type: "error",
        });
        return;
      }

      if (!canClick.value) {
        return;
      }
      getVerifyCode(data).then((res) => {
        console.log("1");

        if (res.code == 200) {
          ElNotification({
            title: "发送成功",
            message: "",
            type: "success",
          });
        } else {
          ElNotification({
            title: "发送失败",
            message: "",
            type: "error",
          });
        }
      });
      canClick.value = false;
      btn_crl.value = true;

      timer.value = setInterval(() => {
        totalTime.value--;
        btnText.value = totalTime.value + "s";
        //清除定时器
        if (totalTime.value < 0) {
          clearTimeout(timer.value);
          timer.value = null;
          btnText.value = "GET CODE";
          totalTime.value = 10;
          canClick.value = true;
          btn_crl.value = false;
        }
      }, 1000);
      //请求发送验证码
    };
    return {
      data,
      btnText,
      getPhoneCode,
      btn_crl,
      submit,
    };
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
.register {
  width: 100%;
  height: 100%;
  padding-top: 70px;
  .title {
    font-size: 20px;
    color: @main-color;
    text-align: center;
  }
  input,
  .code {
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
  }
  input,
  .btn {
    display: block;
    width: 280px;
    height: 30px;
    margin: 25px auto;
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
  .code {
    width: 280px;
    height: 30px;
    display: flex;
    flex-direction: row;
    margin: 25px auto;
    .verifyCode {
      width: 200px;
      margin: 0;
    }

    // 获取验证码按钮样式
    .getCode {
      width: 80px;
      height: 30px;
      color: @main-color;
      font-size: 10px;
      display: flex;
      justify-content: center;
      align-items: center;
      border: 2px solid @main-color;
      cursor: pointer;
      background: none;
    }
  }
}

//*动态效果
//*输入框
.phone,
.password,
.RePassword,
.code {
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

.code {
  .getCode {
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
    &:hover {
      background-color: #ece9e9;
      color: #b34d5a;
    }
  }
}

//*忘记密码
.forgetPwd {
  transition: font-size 0.5s ease-in-out;
  &:hover {
    font-size: 15px;
  }
}
</style>