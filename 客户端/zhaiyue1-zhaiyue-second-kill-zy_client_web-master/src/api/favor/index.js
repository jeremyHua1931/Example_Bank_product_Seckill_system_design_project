import service from "@/utils/request.js";


// 获取收藏商品信息
export function getFavors(isLoans, page) {
    return service({
        method: "GET",
        url: "/client/good/showFavor",
        params: {
            isLoans,
            page,
            size: 10,
            status: 1
        }
    })
}