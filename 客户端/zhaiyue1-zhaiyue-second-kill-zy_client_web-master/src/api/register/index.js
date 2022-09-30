import service from "@/utils/request.js";

// 发送注册数据

export function register(val) {
    return service({
        method: "POST",
        url: "/client/user/register",
        data: {
            phone: val.phone,
            password: val.password,
            verifyCode: val.verifyCode
        }
    })
}

//获取验证码
export function getVerifyCode(data) {
    return service({
        method: "GET",
        url: "/client/user/getCode",
        params: {
            phone: data.phone,
            action: 0
        }
    })
}