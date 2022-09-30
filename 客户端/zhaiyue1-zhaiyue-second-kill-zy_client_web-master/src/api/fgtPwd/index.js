import service from "@/utils/request.js";

// 发送修改数据
export function find(phone, password, verifyCode = "1234") {
    return service({
        method: "POST",
        url: "/client/user/updatePwd",
        data: {
            phone,
            password,
            verifyCode,
        }
    })
}

//获取验证码
export function getVerifyCode(phone) {
    return service({
        method: "GET",
        url: "/client/user/getCode",
        params: {
            phone,
            action: 2
        }
    })
}