import service from "@/utils/request.js";

// 登录
export function login(val) {
    return service({
        method: "POST",
        url: "/client/user/loginPwd",
        data: {
            phone: val.phone,
            password: val.password,
        }
    })
}