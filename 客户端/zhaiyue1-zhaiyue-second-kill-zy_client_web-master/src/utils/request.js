import {
    TokenKey,
    getToken,
    setToken
}
from "@/utils/auth.js"

import axios from "axios"

// export const baseURL = "http://192.168.1.182:8080";
export const baseURL = "http://49.235.65.24:8080";
// export const baseURL = "http://192.168.43.192:8080";
// export const baseURL = "http://192.168.123.59:8080";
// export const baseURL = "http://192.168.43.56:8080";

const service = axios.create({
    // baseURL: "http://gcg4p3.natappfree.cc",
    // baseURL: "http://49.235.65.24:8080",
    // baseURL: "http://192.168.1.108:8080",
    // baseURL: "http://127.0.0.1:4523/mock/511901",
    // baseURL: "http://ji3wja.natappfree.cc",
    // baseURL: "http://192.168.43.56:8080",
    // baseURL: "http://52.82.45.193:8888/server",
    baseURL: baseURL,
    timeout: 15000,
    headers: {},
});

// 添加请求拦截器 
service.interceptors.request.use(
    function (config) {
        for (const key in config.params) {
            if (Object.hasOwnProperty.call(config.params, key)) {
                const element = config.params[key];
                if (element === null || element === "" || element === undefined) {
                    delete config.params[key];
                }
            }
        }
        // 在发送请求之前做些什么
        config.headers[TokenKey] = getToken() || "";
        return config;
    },
    function (error) {
        // 对请求错误做些什么
        return Promise.reject(error);
    }
);

// 添加响应拦截器
service.interceptors.response.use(
    function (response) {

        if (Object.prototype.hasOwnProperty.call(response.headers, TokenKey)) {
            setToken(response.headers[TokenKey]);
        }

        return response.data;
    },
    function (error) {
        // 对响应错误做点什么
        return Promise.reject(error);
    }
);

export default service;