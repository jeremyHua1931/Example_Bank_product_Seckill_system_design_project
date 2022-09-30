import service from "@/utils/request.js";
import {
    ElNotification
} from "element-plus";

// 获取商品详细信息
export function getGoodDetail(isLoans, goodId) {
    return service({
        method: "GET",
        url: '/client/good/getDetail',
        params: {
            isLoans: isLoans,
            goodId: goodId
        }
    })
}


// 立即购买
export function purchase(goodId, isLoans) {
    return service({
        method: "POST",
        url: "/client/good/purchase",
        data: {
            goodId: goodId,
            number: 1,
            isLoans: isLoans
        }
    }).then((res) => {
        if (res.data.code === 200) {
            ElNotification({
                title: "抢购成功",
                message: '',
                type: "success",
            });
            return
        } else {
            ElNotification({
                title: "抢购失败",
                message: '',
                type: "error",
            });
            return
        }
    })

}

//收藏
export function addFavor(goodId, isLoans) {
    return service({
        method: "POST",
        url: "/client/good/addFavor",
        data: {
            goodId: goodId,
            isLoans: isLoans,
        }
    })
}

//取消收藏
export function delFavor(goodId, isLoans) {
    return service({
        method: "DELETE",
        url: "/client/good/delFavor",
        params: {
            goodId: goodId,
            isLoans: isLoans,
        }
    })
}

//得到存款秒杀地址
export function getDepositMD5(goodId) {
    return service({
        method: "GET",
        url: '/client/order/getMd5Deposit',
        params: {
            goodId
        }
    })
}

//得到贷款秒杀地址
export function getLoansMD5(goodId) {
    return service({
        method: "GET",
        url: '/client/order/getMd5Loans',
        params: {
            goodId
        }
    })
}


//下单接口
export function createOrder(goodId, isLoans, number, MD5) {
    return service({
        method: "POST",
        url: `/client/order/create/${MD5}`,
        // url: "/client/order/create",
        data: {
            goodId,
            isLoans,
            number
        }
    })
}

//订单状态查询
export function checkOrder(queueId, isLoans) {
    return service({
        method: "POST",
        url: "/client/order/check",
        data: {
            queueId,
            isLoans
        }
    })

}

//支付
export function pay(isLoans, orderId, password) {
    return service({
        method: "POST",
        url: "/client/order/pay",
        data: {
            isLoans,
            orderId,
            password
        }
    })
}