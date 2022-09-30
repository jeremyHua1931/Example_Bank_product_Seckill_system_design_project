import service from "@/utils/request.js";



// 获取商品信息
export function getGoods(isLoans, page, status) {
    return service({
        method: "GET",
        url: "/client/good/search",
        params: {
            isLoans,
            page,
            size: 10,
            status
        }
    })
}