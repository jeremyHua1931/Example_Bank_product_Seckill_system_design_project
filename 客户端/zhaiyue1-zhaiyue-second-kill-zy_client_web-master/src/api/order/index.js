import service from "@/utils/request.js";


// 获取订单列表信息
export function getOrders(isLoans, page) {
    return service({
        method: "GET",
        url: "/client/good/orderList",
        params: {
            isLoans,
            page,
            size: 10
        }
    })
}

//退款
export function refund(orderId, isLoans) {
    return service({
        method: "POST",
        url: "/client/order/refund",
        data: {
            orderId,
            isLoans
        }
    })
}