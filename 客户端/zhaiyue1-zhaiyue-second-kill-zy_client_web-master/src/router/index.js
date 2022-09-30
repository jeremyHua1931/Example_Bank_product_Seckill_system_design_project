import {
    createRouter,
    createWebHistory
} from 'vue-router'

import startPage from "@/view/startPage.vue"
import login from "@/components/startPage/login.vue"
import fgtPwd from "@/components/startPage/fgtPwd.vue"
import register from "@/components/startPage/register.vue"
import home from "@/view/home.vue"
import index from "@/components/home/welcome.vue"
import Cactivity from "@/components/home/Cactivity.vue"
import Dactivity from "@/components/home/Dactivity.vue"
import Cfavor from "@/components/home/Cfavor.vue"
import Dfavor from "@/components/home/Dfavor.vue"
import Corder from "@/components/home/Corder.vue"
import Dorder from "@/components/home/Dorder.vue"
import goodDetail from "@/components/home/goodDetail.vue"
import orderDetail from "@/components/home/orderDetail.vue"
import error from "@/components/home/error.vue"

const routes = [{
    path: '/',
    component: startPage,
    redirect: '/login',
    children: [{
            path: '/login',
            component: login
        },
        {
            path: '/register',
            component: register
        },
        {
            path: '/fgtPwd',
            component: fgtPwd
        }
    ]
}, {
    path: '/home',
    component: home,
    redirect: '/index',
    children: [{
            path: '/index',
            component: index
        },
        {
            path: '/Cactivity',
            component: Cactivity
        },
        {
            path: '/Dactivity',
            component: Dactivity
        },
        {
            path: '/Cfavor',
            component: Cfavor
        },
        {
            path: '/Corder',
            component: Corder
        },
        {
            path: '/Dorder',
            component: Dorder
        },
        {
            path: '/goodDetail',
            component: goodDetail
        },
        {
            path: "/Dfavor",
            component: Dfavor
        },
        {
            path: "/error",
            component: error
        },
        {
            path: "/orderDetail",
            component: orderDetail
        }
    ]
}]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router