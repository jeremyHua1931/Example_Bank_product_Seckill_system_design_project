import service from "@/utils/request.js";
//获取用户信息
export function getUserInfo(userId) {
    return service({
        method: "GET",
        url: "/client/user/getInfo",
        params: {
            userId: userId
        }
    })
}
//添加身份证信息
export function addIdCard(uri) {
    return service({
        method: "POST",
        url: "/client/user/addIdCard",
        data: {
            uri
        }
    })
}

//将身份证信息存入库中
export function insertIdInfo(idCard, name) {
    return service({
        method: "POST",
        url: "/client/user/insertIdCard",
        data: {
            idCard,
            name
        }
    })
}

// /client/user/editInfo编辑个人信息
export function editInfo(username, avatar, id) {
    return service({
        method: "POST",
        url: "/client/user/editInfo",
        data: {
            username,
            avatar,
            id
        }
    })
}