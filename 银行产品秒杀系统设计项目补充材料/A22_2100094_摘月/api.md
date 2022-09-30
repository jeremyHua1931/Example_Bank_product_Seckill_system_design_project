---
title: 摘月 v1.0.0
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
code_clipboard: true
highlight_theme: darkula
headingLevel: 2
generator: "@tarslib/widdershins v4.0.4"

---

# 摘月

> v1.0.0

# Second Kill(客户端)/商品

## GET 显示收藏

GET /client/good/showFavor

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|userId|query|string|true|用户id|
|isLoans|query|string|true|1：贷款，0：存款|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": [
    {
      "id": 2,
      "name": "摘月1w存款",
      "price": 10000,
      "totalNumber": 100000,
      "remainNumber": 764,
      "startTime": "2022-03-10 00:00:00",
      "endTime": "2022-05-19 00:00:00",
      "restrictNumber": 1,
      "totalPrice": 1000000000,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600555.jpg",
      "isFilter": 0,
      "description": "<h1 id=\"1dxm3\">摘月1w存款</h1><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><p><br/></p>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 5,
      "totalRepeatTimes": 5
    },
    {
      "id": 3,
      "name": "存款2号",
      "price": 13232,
      "totalNumber": 4,
      "remainNumber": 4,
      "startTime": "2022-04-09 23:59:00",
      "endTime": "2022-04-10 00:00:00",
      "restrictNumber": 1,
      "totalPrice": 52928,
      "image": "",
      "isFilter": 0,
      "description": "<p>323232</p>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 0,
      "totalRepeatTimes": 5
    },
    {
      "id": 4,
      "name": "存款3号",
      "price": 2000,
      "totalNumber": 400,
      "remainNumber": 400,
      "startTime": "2022-04-08 00:00:00",
      "endTime": "2022-04-11 00:00:00",
      "restrictNumber": 2,
      "totalPrice": 800000,
      "image": "",
      "isFilter": 0,
      "description": "<p>233252</p><p><br/></p><p><br/></p><p>253</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th></th><th></th><th></th><th></th><th></th></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>245</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 1,
      "totalRepeatTimes": 5
    },
    {
      "id": 5,
      "name": "存款4号",
      "price": 2000,
      "totalNumber": 87,
      "remainNumber": 87,
      "startTime": "2022-04-07 00:00:00",
      "endTime": "2022-04-10 00:00:00",
      "restrictNumber": 87,
      "totalPrice": 7569,
      "image": "",
      "isFilter": 1,
      "description": "<p>143</p>",
      "ruleList": [
        11,
        8,
        9,
        10
      ],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 1,
      "totalRepeatTimes": 5
    },
    {
      "id": 6,
      "name": "存款5号",
      "price": 123,
      "totalNumber": 34,
      "remainNumber": 34,
      "startTime": "2022-04-13 00:00:00",
      "endTime": "2022-04-15 00:00:00",
      "restrictNumber": 2,
      "totalPrice": 4182,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600575.jpg",
      "isFilter": 0,
      "description": "<ul><li><br/></li></ul>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 5,
      "totalRepeatTimes": 5
    },
    {
      "id": 8,
      "name": "1w存款",
      "price": 10000,
      "totalNumber": 100000,
      "remainNumber": 1466,
      "startTime": "2022-03-23 00:00:00",
      "endTime": "2023-04-14 00:00:00",
      "restrictNumber": 100,
      "totalPrice": 1000000000,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/3/31/1648656000253.jpg",
      "isFilter": 0,
      "description": "<h1 id=\"p4jks\">1W存款</h1><p><img src=\"https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/3/30/1648569600701.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 0,
      "repeatTimes": 0,
      "totalRepeatTimes": 0
    },
    {
      "id": 9,
      "name": "1000存款",
      "price": 1000,
      "totalNumber": 103,
      "remainNumber": 0,
      "startTime": "2022-04-02 00:00:00",
      "endTime": "2022-05-11 00:00:00",
      "restrictNumber": 1,
      "totalPrice": 103000,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/3/1648915200152.png",
      "isFilter": 0,
      "description": "<p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/摘月白底.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 5,
      "totalRepeatTimes": 5
    },
    {
      "id": 10,
      "name": "2000存款",
      "price": 2000,
      "totalNumber": 1000000,
      "remainNumber": 1000000,
      "startTime": "2022-04-03 00:00:00",
      "endTime": "2022-05-19 00:00:00",
      "restrictNumber": 5,
      "totalPrice": 2000000000,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600773.jpg",
      "isFilter": 0,
      "description": "",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 2,
      "repeatTimes": 5,
      "totalRepeatTimes": 5
    },
    {
      "id": 11,
      "name": "1w存款",
      "price": 10000,
      "totalNumber": 100000,
      "remainNumber": 100000,
      "startTime": "2022-03-08 00:00:00",
      "endTime": "2022-04-19 00:00:00",
      "restrictNumber": 1,
      "totalPrice": 1000000000,
      "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/7/1649260800524.jpg",
      "isFilter": 0,
      "description": "<p><span style=\"background-color: rgb(255, 255, 255);\"><br/></span></p><h1><font face=\"华文楷体\" id=\"o1s89\" style=\"background-color: rgb(255, 255, 255);\" color=\"#c24f4a\">1W存款限购活动</font></h1><div><font face=\"华文楷体\" style=\"background-color: rgb(255, 255, 255);\"><br/></font></div><div><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td><span style=\"background-color: rgb(255, 255, 255);\">额度</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">10000元</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">限购</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">每用户限购1份</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">年利率</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">0.05%</span></td></tr><tr><td><span style=\"background-color: rgb(255, 255, 255);\">起存时间</span></td><td><span style=\"background-color: rgb(255, 255, 255);\">1年</span></td></tr></tbody></table><p><span style=\"background-color: rgb(255, 255, 255);\"></span></p></div><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><h2 id=\"hlznv\"><font color=\"#c24f4a\">产品简介</font></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;个人结构性存款是指吸收嵌入金融衍生产品的人民币存款，通过与利率、汇率、指数等波动挂钩或者与某实体的信用情况挂钩，使存款人在承担一定风险的基础上获得相应收益的产品。<br/></p><h2 id=\"dh2td\"><font color=\"#c24f4a\">功能特色</font></h2><ol><li><p>资管时代，存款新选择</p></li><li><p><span style=\"color: var(--el-text-color-primary);\">攻守兼备，本金有保障</span></p></li><li><p><span style=\"color: var(--el-text-color-primary);\">收益可期，博弈至高点</span></p></li><li><p><span style=\"color: var(--el-text-color-primary);\">专业团队，品质可信赖</span></p></li></ol><h2 id=\"9wcpa\"><font color=\"#c24f4a\">温馨提示</font></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;客户在购买个人结构性存款前请仔细阅读产品说明书，并确保充分了解条款内容。结构性存款非普通存款、产品有风险、投资须谨慎。<br/></p>",
      "ruleList": [],
      "status": 0,
      "isLoans": 0,
      "repeatDelay": 0,
      "repeatTimes": 0,
      "totalRepeatTimes": 0
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|[object]|true|none|none|
|»» id|integer|true|none|none|
|»» name|string|true|none|none|
|»» price|integer|true|none|none|
|»» totalNumber|integer|true|none|none|
|»» remainNumber|integer|true|none|none|
|»» startTime|string|true|none|none|
|»» endTime|string|true|none|none|
|»» status|integer|true|none|none|
|»» restrictNumber|integer|true|none|none|
|»» image|string|true|none|none|
|»» totalPrice|number|true|none|none|
|»» isFilter|integer|true|none|none|
|»» description|string|true|none|none|

## DELETE 取消收藏

DELETE /client/good/delFavor

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|goodId|query|string|true|商品id|
|userId|query|string|true|用户id|
|isLoans|query|string|true|1：贷款，0：存款|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 搜索

GET /client/good/search

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|name|query|string|false|用户Id|
|minPrice|query|string|false|最小价格|
|maxPrice|query|string|false|最大价格|
|startTime|query|string|false|开始时间|
|endTime|query|string|false|结束时间|
|status|query|string|false|0：未开始，1：进行中，2“已结束|
|sort|query|string|false|1：按价格降序，0：按价格升序|
|page|query|string|true|当前为第几页|
|size|query|string|true|一页多少条数据|
|isLoans|query|string|true|1：贷款，0：存款|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "goodList": [
      {
        "id": 2,
        "name": "摘月1w存款",
        "price": 10000,
        "totalNumber": 100000,
        "remainNumber": 764,
        "startTime": "2022-03-10 00:00:00",
        "endTime": "2022-05-19 00:00:00",
        "restrictNumber": 1,
        "totalPrice": 1000000000,
        "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600555.jpg",
        "isFilter": 0,
        "description": "<h1 id=\"1dxm3\">摘月1w存款</h1><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><p><br/></p>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      },
      {
        "id": 3,
        "name": "存款2号",
        "price": 13232,
        "totalNumber": 4,
        "remainNumber": 4,
        "startTime": "2022-04-09 23:59:00",
        "endTime": "2022-04-10 00:00:00",
        "restrictNumber": 1,
        "totalPrice": 52928,
        "image": "",
        "isFilter": 0,
        "description": "<p>323232</p>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 0,
        "totalRepeatTimes": 5
      },
      {
        "id": 4,
        "name": "存款3号",
        "price": 2000,
        "totalNumber": 400,
        "remainNumber": 400,
        "startTime": "2022-04-08 00:00:00",
        "endTime": "2022-04-11 00:00:00",
        "restrictNumber": 2,
        "totalPrice": 800000,
        "image": "",
        "isFilter": 0,
        "description": "<p>233252</p><p><br/></p><p><br/></p><p>253</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th></th><th></th><th></th><th></th><th></th></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>245</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 1,
        "totalRepeatTimes": 5
      },
      {
        "id": 5,
        "name": "存款4号",
        "price": 2000,
        "totalNumber": 87,
        "remainNumber": 85,
        "startTime": "2022-04-07 00:00:00",
        "endTime": "2022-04-10 00:00:00",
        "restrictNumber": 87,
        "totalPrice": 7569,
        "image": "",
        "isFilter": 1,
        "description": "<p>143</p>",
        "ruleList": [
          11,
          8,
          9,
          10
        ],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 1,
        "totalRepeatTimes": 5
      },
      {
        "id": 6,
        "name": "存款5号",
        "price": 123,
        "totalNumber": 34,
        "remainNumber": 34,
        "startTime": "2022-04-13 00:00:00",
        "endTime": "2022-04-15 00:00:00",
        "restrictNumber": 2,
        "totalPrice": 4182,
        "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600575.jpg",
        "isFilter": 0,
        "description": "<ul><li><br/></li></ul>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      }
    ],
    "count": 11
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» goodList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» price|integer|true|none|none|
|»»» totalNumber|integer|true|none|none|
|»»» remainNumber|integer|true|none|none|
|»»» startTime|string|true|none|none|
|»»» endTime|string|true|none|none|
|»»» restrictNumber|integer|true|none|none|
|»»» totalPrice|integer|true|none|none|
|»»» image|string|true|none|none|
|»»» isFilter|integer|true|none|none|
|»»» description|string|true|none|none|
|»»» ruleList|[integer]|true|none|none|
|»»» status|integer|true|none|none|
|»» count|integer|true|none|none|

## GET 获取商品详情

GET /client/good/getDetail

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|isLoans|query|string|true|1：贷款，0：存款|
|goodId|query|string|true|商品id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "id": 2,
    "name": "贷款100000元",
    "price": 100000,
    "totalNumber": 10,
    "remainNumber": 88,
    "startTime": "2022-04-10 21:30:00",
    "endTime": "2022-04-11 00:00:00",
    "restrictNumber": 1,
    "totalPrice": 1000000,
    "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600567.jpg",
    "isFilter": 1,
    "description": "<p>est Duis in cillum</p>",
    "ruleList": [
      12,
      13
    ],
    "status": 0,
    "filterFailList": [],
    "filterStatus": "notFound",
    "isFavor": 0,
    "isLoans": 1,
    "repeatDelay": 2,
    "repeatTimes": 2,
    "totalRepeatTimes": 5
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» id|integer|true|none|none|
|»» name|string|true|none|none|
|»» price|integer|true|none|none|
|»» totalNumber|integer|true|none|none|
|»» remainNumber|integer|true|none|none|
|»» startTime|string|true|none|none|
|»» endTime|string|true|none|none|
|»» restrictNumber|integer|true|none|none|
|»» totalPrice|integer|true|none|none|
|»» image|string|true|none|none|
|»» isFilter|integer|true|none|none|
|»» description|string|true|none|none|
|»» ruleList|[integer]|true|none|none|
|»» status|integer|true|none|none|
|»» filterFailList|[object]|true|none|none|
|»» filterStatus|string|true|none|none|

## GET 客户端获取所有订单列表

GET /client/good/orderList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|page|query|string|true|none|
|size|query|string|true|none|
|isLoans|query|string|true|none|
|orderId|query|string|false|none|
|goodName|query|string|false|商品名称|
|startTime|query|string|false|开始时间|
|endTime|query|string|false|结束时间|
|status|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 5,
    "orderList": [
      {
        "id": 2552,
        "createTime": "2022-04-09 16:08:37",
        "userId": 1840644411,
        "number": 1,
        "name": "10w 存款 5%利率",
        "username": "gu_123",
        "totalPrice": 20000,
        "status": 1,
        "goodId": 7
      },
      {
        "id": 2556,
        "createTime": "2022-04-09 16:15:19",
        "userId": 1840644411,
        "number": 1,
        "name": "摘月1w存款",
        "username": "gu_123",
        "totalPrice": 10000,
        "status": 1,
        "goodId": 2
      },
      {
        "id": 2557,
        "createTime": "2022-04-09 16:15:39",
        "userId": 1840644411,
        "number": 1,
        "name": "存款4号",
        "username": "gu_123",
        "totalPrice": 2000,
        "status": 1,
        "goodId": 5
      },
      {
        "id": 2558,
        "createTime": "2022-04-09 16:16:06",
        "userId": 1840644411,
        "number": 1,
        "name": "存款4号",
        "username": "gu_123",
        "totalPrice": 2000,
        "status": 1,
        "goodId": 5
      },
      {
        "id": 2559,
        "createTime": "2022-04-09 16:17:16",
        "userId": 1840644411,
        "number": 1,
        "name": "1w存款",
        "username": "gu_123",
        "totalPrice": 10000,
        "status": 1,
        "goodId": 8
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» orderList|[object]|true|none|none|
|»»» type|integer|true|none|订单类型 0存款 1贷款|
|»»» id|string|true|none|订单ID|
|»»» goodName|string|true|none|产品名称|
|»»» goodId|integer|true|none|产品ID|
|»»» username|string|true|none|买家用户名|
|»»» userId|integer|true|none|买家ID|
|»»» number|integer|true|none|购买份数|
|»»» totalPrice|number|true|none|订单总金额|
|»»» createTime|string|true|none|成交时间|
|»»» status|integer|true|none|0 待支付 1已完成 2已退款|

## POST 添加收藏

POST /client/good/addFavor

> Body 请求参数

```json
{
  "userId": 0,
  "goodId": 0,
  "isLoans": true
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» userId|body|integer|true|用户id|
|» goodId|body|integer|true|商品id|
|» isLoans|body|boolean|true|1：贷款，0：存款|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "收藏成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

# Second Kill(客户端)/用户

## POST 注册

POST /client/user/register

> Body 请求参数

```json
{
  "phone": "string",
  "username": "string",
  "password": "string",
  "verifyCode": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» phone|body|string|true|none|
|» username|body|string|true|none|
|» password|body|string|true|none|
|» verifyCode|body|integer|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "注册成功",
  "data": {}
}
```

```json
{
  "code": 400,
  "msg": "注册失败",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 编辑个人信息(不包括手机号)

POST /client/user/editInfo

> Body 请求参数

```json
{
  "username": "string",
  "avatar": "string",
  "id": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» username|body|string|true|用户名|
|» avatar|body|string|true|头像|
|» id|body|integer|true|用户id|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "修改成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 获取手机验证码

GET /client/user/getCode

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|phone|query|string|true|手机号|
|action|query|string|true|类型（0注册，1登录）|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "发送验证码成功",
  "data": null
}
```

```json
{
  "code": 400,
  "msg": "手机验证码获取失败",
  "data": {
    "verifyCode": ""
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 忘记密码

POST /client/user/updatePwd

> Body 请求参数

```json
{
  "phone": "string",
  "password": "string",
  "verifyCode": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» phone|body|string|true|none|
|» password|body|string|true|none|
|» verifyCode|body|integer|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "修改成功",
  "data": null
}
```

```json
{
  "code": 400,
  "msg": "修改失败",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 获取用户信息

GET /client/user/getInfo

获取头像，姓名等信息

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|userId|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "success",
  "data": {
    "name": "龙桂英",
    "idCard": "83653818671110761X",
    "username": "thrhngq",
    "head": "http://tmjbgm.lr/xxnkayadu",
    "phone": "18144472783"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» name|string|true|none|none|
|»» idCard|string|true|none|none|
|»» username|string|true|none|none|
|»» avatar|string|true|none|none|
|»» phone|string|true|none|none|

## POST 将身份证信息存入数据库

POST /client/user/insertIdCard

> Body 请求参数

```json
{
  "idCard": "string",
  "name": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» idCard|body|string|true|none|
|» name|body|string|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "添加成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## POST 手机验证码登录

POST /client/user/loginSMS

> Body 请求参数

```json
{
  "phone": "string",
  "code": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» phone|body|string|true|手机号|
|» code|body|integer|true|手机验证码|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "登录成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## POST 添加身份证信息

POST /client/user/addIdCard

> Body 请求参数

```yaml
file: string

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» file|body|string(binary)|false|身份证照片|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "返回成功",
  "data": {
    "idCard": "330902200109190317",
    "name": "郑钧元"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» idCard|string|true|none|none|
|»» name|string|true|none|none|

## POST 手机密码登录

POST /client/user/loginPwd

> Body 请求参数

```json
{
  "phone": "string",
  "password": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» phone|body|string|true|手机号|
|» password|body|string|true|密码|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "登录成功",
  "data": {
    "userId": 1840644411,
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwaG9uZSI6IjE0NTQzMjcxMTA0IiwidGltZSI6IjE2NDk0OTM3NTMzNDIiLCJleHAiOjE2NDk3NTI5NTMsInVzZXJJZCI6IjE4NDA2NDQ0MTEifQ.LmzCrYJHNPXnPvktM1XUU20nlkAdhOmuJ8nHrRwkGG4"
  }
}
```

```json
{
  "code": 400,
  "msg": "用户名或密码错误",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» token|string|true|none|none|
|»» userId|integer|true|none|none|

# Second Kill(客户端)/kill

## POST 订单状态查询（轮询接口）

POST /client/order/check

客户端需要在创建订单后主动轮询此接口直至接口返回code不是102（msg不是“正在处理”）

> Body 请求参数

```json
{
  "queueId": "string",
  "isLoans": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» queueId|body|string|true|create中返回的queueId|
|» isLoans|body|integer|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "成功查询到订单信息",
  "data": {
    "status": 0,
    "msg": "创建订单成功",
    "price": 100000,
    "orderTime": "2022-04-09 18:19:03",
    "number": 1000,
    "orderId": 26867846
  }
}
```

```json
{
  "code": 102,
  "msg": "订单查询号不存在或尚未生成",
  "data": null
}
```

```json
{
  "code": 200,
  "msg": "成功查询到订单信息",
  "data": {
    "status": -1,
    "msg": "系统繁忙，请稍后再试"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|102表示该请求尚未被处理，需要稍后再次请求该接口|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» status|integer|true|none|生成状态（ -1:表更改失败,-2:商品部分下单成功，-3：商品售罄，-4：用户超过限购，-5：初筛未通过，-6：商品未开始售卖或已停止售卖，0成功|
|»» msg|string|true|none|状态说明|
|»» orderId|integer|false|none|订单ID|
|»» createTime|string|false|none|订单生成时间（用于计算过期）|
|»» price|number|false|none|用户需要支付的总价|
|»» number|integer|false|none|成功下单的量（可能不完全下单,status==-2返回）|

## POST 支付

POST /client/order/pay

> Body 请求参数

```json
{
  "orderId": 0,
  "password": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» orderId|body|integer|true|none|
|» password|body|string|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "支付成功",
  "data": {
    "result": 0
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» result|integer|true|none|支付结果（0：成功，-1：密码错误，-2：余额不足）|

## GET 贷款获取md5

GET /client/order/getMd5Loans

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|goodId|query|string|false|商品id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "获取成功",
  "data": "f7df34157749161d16822e9d9cae15fb"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|string|true|none|none|

## POST 下单

POST /client/order/create

该接口若返回code为200，则返回的QueueId表示一个排队的ID，而不一定购买成功。用户需要轮询`/client/order/check`查询订单创建结果

> Body 请求参数

```json
{
  "goodId": 0,
  "number": 0,
  "isLoans": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» goodId|body|integer|true|none|
|» number|body|integer|true|none|
|» isLoans|body|integer|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "下单成功",
  "data": {
    "queueId": "128732-382928"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» queueId|string|true|none|none|

## POST 退款

POST /client/order/refund

> Body 请求参数

```json
{
  "orderId": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» orderId|body|integer|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "退款处理成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 存款获取md5

GET /client/order/getMd5Deposit

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|goodId|query|string|true|商品id|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "获取成功",
  "data": "f7df34157749161d16822e9d9cae15fb"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|string|true|none|none|

# 工具

## POST 图片上传

POST /file/image

> Body 请求参数

```yaml
file: file:///Users/zhengjunyuan/Desktop/截屏2022-03-05 上午11.26.52.png

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» file|body|string(binary)|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "上传成功",
  "data": "http://dummyimage.com/120x240"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|string|true|none|none|

# Second Kill(管理端)/用户（管理员）

## PUT 修改管理员信息

PUT /admin/user/updateInfo

> Body 请求参数

```json
{
  "id": 0,
  "password": "string",
  "name": "string",
  "username": "string",
  "avatar": "string",
  "phone": 0,
  "registerTime": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» id|body|integer|true|管理员ID|
|» password|body|string|true|管理员密码|
|» name|body|string|true|管理员名字（姓名）|
|» username|body|string|true|管理员用户名（登录用）|
|» avatar|body|string|true|管理员头像（URL）|
|» phone|body|integer|true|管理员手机号|
|» registerTime|body|string|true|注册时间|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "修改成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取管理员列表

GET /admin/user/adminList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|page|query|string|true|none|
|size|query|string|true|none|
|username|query|string|false|none|
|phone|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "返回成功",
  "data": {
    "count": 49,
    "userList": [
      {
        "id": 65462365,
        "name": "杜敏",
        "username": "dm_123",
        "avatar": "http://dummyimage.com/160x600",
        "phone": 18141066316,
        "createTime": "1998-05-18 18:03:24"
      },
      {
        "id": 65462366,
        "name": "梁军",
        "username": "D_liang",
        "avatar": "http://dummyimage.com/120x240",
        "phone": 18663353378,
        "createTime": "2017-11-04 02:58:06"
      },
      {
        "id": 65462367,
        "name": "汪洋",
        "username": "wangyang",
        "avatar": "http://dummyimage.com/120x90",
        "phone": 18120058597,
        "createTime": "2011-07-08 19:16:27"
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» userList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|姓名|
|»»» username|string|true|none|用户名|
|»»» avatar|string|true|none|头像|
|»»» phone|integer|true|none|none|
|»»» createTime|string|true|none|none|

## GET 获取管理员信息

GET /admin/user/getInfo

获取头像，姓名等信息

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "获取成功",
  "data": {
    "name": "谢芳",
    "idCard": "32127518410420857x",
    "username": "nbn",
    "avatar": "http://dummyimage.com/120x60",
    "phone": "18604317422"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» name|string|true|none|管理员名字（姓名）|
|»» idCard|string|true|none|管理员身份证号（非脱敏）|
|»» username|string|true|none|管理员用户名|
|»» avatar|string|true|none|管理员头像|
|»» phone|string|true|none|管理员手机号|

## DELETE 删除管理员

DELETE /admin/user/delete

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|管理员ID|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除管理员成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 登录

POST /admin/user/login

> Body 请求参数

```json
{
  "username": "string",
  "password": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» username|body|string|true|none|
|» password|body|string|true|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "登录成功",
  "data": {
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhZG1pbiI6IllFUyIsInRpbWUiOiIxNjQ5NDk4Mzc4MTY3IiwiZXhwIjoxNjQ5NzU3NTc4LCJ1c2VySWQiOiIyMTMwNjI0NTIxIn0._Zz--1p-bxcTz_NSAXkkAXY1qcpVJUM34fdSEXUNkSY"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» token|string|true|none|none|

## POST 新建管理员

POST /admin/user/add

> Body 请求参数

```json
{
  "username": "string",
  "password": "string",
  "avatar": "string",
  "name": "string",
  "phone": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» username|body|string|true|用户名|
|» password|body|string|true|密码|
|» avatar|body|string|true|头像|
|» name|body|string|true|真实姓名|
|» phone|body|string|true|手机号|

> 返回示例

> 成功

```json
{
  "code": 93235804,
  "msg": "id est proident exercitation reprehenderit",
  "data": {}
}
```

```json
{
  "code": 93235804,
  "msg": "id est proident exercitation reprehenderit",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# Second Kill(管理端)/规则

## PUT 修改规则组合

PUT /admin/rule/updateRuleGroup

> Body 请求参数

```yaml
groupId: string
groupName: string
description: string
ruleList: string

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» groupId|body|string|true|规则组合Id|
|» groupName|body|string|true|规则组合名称|
|» description|body|string|true|规则组合描述|
|» ruleList|body|string|true|规则id数组|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "修改成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取规则组合列表

GET /admin/rule/getRuleGroupList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|name|query|string|false|组合名字|
|page|query|string|true|页码|
|size|query|string|true|每页个数|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "成功",
  "data": {
    "count": 1,
    "ruleGroupList": [
      {
        "id": 100,
        "name": "有钱的成年人",
        "description": "有钱的成年人",
        "ruleList": [
          {
            "id": 1736,
            "name": "工资充足",
            "description": "该用户有足够的收入",
            "type": 1,
            "value": "3000",
            "variable": "income",
            "control": 1
          },
          {
            "id": 1736,
            "name": "大于18岁",
            "description": "该用户已成年",
            "type": 1,
            "value": "18",
            "variable": "age",
            "control": 1
          }
        ]
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» ruleGroupList|[object]|true|none|none|

## PUT 修改规则

PUT /admin/rule/modifyRule

> Body 请求参数

```json
{
  "id": 0,
  "name": "string",
  "description": "string",
  "type": 0,
  "value": [
    "string"
  ],
  "control": 0,
  "variable": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» id|body|integer|true|规则ID|
|» name|body|string|true|规则名（用于显示）|
|» description|body|string|true|描述|
|» type|body|integer|true|处理类型（如何判断）|
|» value|body|[string]|true|用于比对的值|
|» control|body|integer|true|处理（是否通过）|
|» variable|body|string|true|变量名|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## POST 创建规则

POST /admin/rule/addRule

> Body 请求参数

```yaml
name: string
description: string
type: string
value: string
variable: string
control: string

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» name|body|string|true|规则名称|
|» description|body|string|true|规则描述|
|» type|body|string|true|逻辑类型（大于、小于等）|
|» value|body|string|true|数值 数组|
|» variable|body|string|true|变量名|
|» control|body|string|true|风险控制|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "成功",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## DELETE 删除规则

DELETE /admin/rule/deleteRule

> Body 请求参数

```yaml
{}

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|规则ID|
|token|header|string|false|none|
|body|body|object|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取存款初筛规则列表

GET /admin/rule/depositRuleList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|存款id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": [
    {
      "id": 1736,
      "name": "工资充足",
      "description": "该用户有足够的收入",
      "type": 1,
      "value": "3000",
      "variable": "income",
      "control": 1
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|[object]|true|none|none|
|»» id|integer|true|none|规则ID|
|»» name|string|true|none|规则名|
|»» description|string|true|none|规则说明|
|»» type|integer|true|none|规则类型（判断方法）|
|»» value|[string]|true|none|用于判断的值|
|»» variable|string|true|none|比较变量（对应用户Attribute）|
|»» control|integer|true|none|处理方法|

## GET 获取规则列表

GET /admin/rule/getRuleList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|ruleName|query|string|false|名称筛选|
|type|query|string|false|类型|
|page|query|string|true|第几页|
|size|query|string|true|一共多少行|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 1,
    "ruleList": [
      {
        "id": 1736,
        "name": "工资充足",
        "description": "该用户有足够的收入",
        "type": 1,
        "value": "3000",
        "variable": "income",
        "control": 1
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» ruleList|[object]|true|none|none|
|»»» id|integer|false|none|none|
|»»» name|string|false|none|none|
|»»» description|string|false|none|none|
|»»» type|integer|false|none|none|
|»»» value|string|false|none|none|
|»»» variable|string|false|none|none|
|»»» control|integer|false|none|none|

## GET 获取贷款初筛规则列表

GET /admin/rule/loanRuleList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|存款id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": [
    {
      "id": 1736,
      "name": "工资充足",
      "description": "该用户有足够的收入",
      "type": 1,
      "value": "3000",
      "variable": "income",
      "control": 1
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|[object]|true|none|none|
|»» id|integer|true|none|规则ID|
|»» name|string|true|none|规则名|
|»» description|string|true|none|规则描述|
|»» type|integer|true|none|比较类型|
|»» value|[string]|true|none|比较值|
|»» variable|string|true|none|比较变量（对应用户Attribute）|
|»» control|integer|true|none|处理方式|

## DELETE 删除规则组合

DELETE /admin/rule/deleteRuleGroup

> Body 请求参数

```yaml
{}

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|规则组合ID|
|token|header|string|false|none|
|body|body|object|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|

## POST 添加规则组合

POST /admin/rule/addRuleGroup

> Body 请求参数

```json
{
  "name": "string",
  "description": "string",
  "ruleList": [
    0
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» name|body|string|true|规则组合名|
|» description|body|string|true|规则组合介绍|
|» ruleList|body|[integer]|true|规则列表|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "添加成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# Second Kill(管理端)/商品

## GET 获取存款列表

GET /admin/good/getDepositList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|page|query|string|true|页码|
|size|query|string|true|行数|
|name|query|string|false|筛选条件:商品名字|
|status|query|string|false|筛选条件:状态 null所有，0未开始，1进行中，2已结束|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 11,
    "depositList": [
      {
        "id": 2,
        "name": "摘月1w存款",
        "price": 10000,
        "totalNumber": 100000,
        "remainNumber": 764,
        "startTime": "2022-03-10 00:00:00",
        "endTime": "2022-05-19 00:00:00",
        "restrictNumber": 1,
        "totalPrice": 1000000000,
        "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600555.jpg",
        "isFilter": 0,
        "description": "<h1 id=\"1dxm3\">摘月1w存款</h1><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><p><br/></p>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      },
      {
        "id": 3,
        "name": "存款2号",
        "price": 13232,
        "totalNumber": 4,
        "remainNumber": 4,
        "startTime": "2022-04-09 23:59:00",
        "endTime": "2022-04-10 00:00:00",
        "restrictNumber": 1,
        "totalPrice": 52928,
        "image": "",
        "isFilter": 0,
        "description": "<p>323232</p>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 0,
        "totalRepeatTimes": 5
      },
      {
        "id": 4,
        "name": "存款3号",
        "price": 2000,
        "totalNumber": 400,
        "remainNumber": 400,
        "startTime": "2022-04-08 00:00:00",
        "endTime": "2022-04-11 00:00:00",
        "restrictNumber": 2,
        "totalPrice": 800000,
        "image": "",
        "isFilter": 0,
        "description": "<p>233252</p><p><br/></p><p><br/></p><p>253</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th></th><th></th><th></th><th></th><th></th></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>245</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></tbody></table>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 1,
        "totalRepeatTimes": 5
      },
      {
        "id": 5,
        "name": "存款4号",
        "price": 2000,
        "totalNumber": 87,
        "remainNumber": 85,
        "startTime": "2022-04-07 00:00:00",
        "endTime": "2022-04-10 00:00:00",
        "restrictNumber": 87,
        "totalPrice": 7569,
        "image": "",
        "isFilter": 1,
        "description": "<p>143</p>",
        "ruleList": [
          11,
          8,
          9,
          10
        ],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 1,
        "totalRepeatTimes": 5
      },
      {
        "id": 6,
        "name": "存款5号",
        "price": 123,
        "totalNumber": 34,
        "remainNumber": 34,
        "startTime": "2022-04-13 00:00:00",
        "endTime": "2022-04-15 00:00:00",
        "restrictNumber": 2,
        "totalPrice": 4182,
        "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600575.jpg",
        "isFilter": 0,
        "description": "<ul><li><br/></li></ul>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» depositList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» price|integer|true|none|单价|
|»»» totalNumber|integer|true|none|none|
|»»» remainNumber|integer|true|none|余量（非实时数据）|
|»»» startTime|string|true|none|开始时间|
|»»» endTime|string|true|none|结束时间|
|»»» status|integer|true|none|商品状态 。0：未开始，1：正在售卖，2已结束|
|»»» restrictNumber|integer|true|none|none|
|»»» image|string|true|none|none|
|»»» totalPrice|number|true|none|总价|
|»»» isFilter|integer|true|none|是否开启了初筛|
|»»» description|string|true|none|商品描述|
|»»» repeatDelay|integer|true|none|重复发售延迟|
|»»» repeatTimes|integer|true|none|重复发售次数|

## PUT 更新贷款

PUT /admin/good/updateLoan

> Body 请求参数

```json
{
  "goodsName": "string",
  "startTime": "string",
  "endTime": "string",
  "price": 0,
  "number": 0,
  "totalPrice": 0,
  "restrictNumber": 0,
  "description": "string",
  "isFilter": 0,
  "ruleList": [
    0
  ],
  "image": "string",
  "id": 0,
  "repeatDelay": 0,
  "repeatTimes": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» goodsName|body|string|true|none|
|» startTime|body|string|true|none|
|» endTime|body|string|true|none|
|» price|body|integer|true|none|
|» number|body|integer|true|none|
|» totalPrice|body|integer|true|none|
|» restrictNumber|body|integer|true|none|
|» description|body|string|true|none|
|» isFilter|body|integer|true|none|
|» ruleList|body|[integer]|true|none|
|» image|body|string|true|none|
|» id|body|integer|true|none|
|» repeatDelay|body|integer|true|循环添加间隔|
|» repeatTimes|body|integer|true|循环添加次数|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "更新贷款",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|

## GET 获取贷款详情

GET /admin/good/getLoanDetail

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|商品Id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "id": 2,
    "name": "贷款100000元",
    "price": 100000,
    "totalNumber": 10,
    "remainNumber": 88,
    "startTime": "2022-04-10 21:30:00",
    "endTime": "2022-04-11 00:00:00",
    "restrictNumber": 1,
    "totalPrice": 1000000,
    "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600567.jpg",
    "isFilter": 1,
    "description": "<p>est Duis in cillum</p>",
    "ruleList": [
      12,
      13
    ],
    "status": 0,
    "repeatDelay": 2,
    "repeatTimes": 2,
    "totalRepeatTimes": 5
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|

## GET 获取贷款规则列表

GET /admin/good/loanRuleList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "aliquip voluptate aliqua",
  "data": [
    {
      "ruleId": 9063,
      "ruleName": "内",
      "description": "给果步引表件头王又步场求。",
      "type": 1,
      "value": "8458670994534639",
      "variable": "mhdgeuc",
      "control": 1
    },
    {
      "ruleId": 4271,
      "ruleName": "里",
      "description": "验老历采已层情土生影厂图教花办头。",
      "type": 1,
      "value": "5691332157402611",
      "variable": "ayy",
      "control": 1
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|[object]|true|none|none|

## POST 新建贷款

POST /admin/good/addLoan

> Body 请求参数

```json
{
  "name": "string",
  "startTime": "string",
  "endTime": "string",
  "price": 0,
  "totalNumber": 0,
  "totalPrice": 0,
  "restrictNumber": 0,
  "description": "string",
  "isFilter": 0,
  "ruleList": [
    0
  ],
  "image": "string",
  "repeatDelay": 0,
  "repeatTimes": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» name|body|string|true|none|
|» startTime|body|string|true|none|
|» endTime|body|string|true|none|
|» price|body|integer|true|none|
|» totalNumber|body|integer|true|none|
|» totalPrice|body|integer|true|none|
|» restrictNumber|body|integer|true|none|
|» description|body|string|true|none|
|» isFilter|body|integer|true|none|
|» ruleList|body|[integer]|true|none|
|» image|body|string|true|none|
|» repeatDelay|body|integer|true|循环添加间隔|
|» repeatTimes|body|integer|true|循环添加次数|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "新建成功",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取贷款订单列表（详情页中）

GET /admin/good/getLoanListById

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|贷款Id|
|page|query|string|true|none|
|size|query|string|true|none|
|orderId|query|string|false|订单ID|
|username|query|string|false|买家用户名|
|startTime|query|string|false|none|
|endTime|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 3,
    "orderList": [
      {
        "id": 10,
        "name": "银行理财产品1号",
        "totalPrice": 12000,
        "status": 1
      },
      {
        "id": 11,
        "name": "银行理财产品1号",
        "totalPrice": 12000,
        "status": 1
      },
      {
        "id": 13,
        "name": "银行理财产品1号",
        "totalPrice": 864000,
        "status": 1
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» orderList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» totalPrice|integer|true|none|none|
|»»» status|integer|true|none|none|

## DELETE 删除贷款

DELETE /admin/good/deleteLoan

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## PUT 更新存款

PUT /admin/good/updateDeposit

> Body 请求参数

```json
{
  "goodsName": "string",
  "startTime": "string",
  "endTime": "string",
  "price": 0,
  "number": 0,
  "totalPrice": 0,
  "restrictNumber": 0,
  "description": "string",
  "isFilter": 0,
  "ruleList": [
    0
  ],
  "image": "string",
  "id": 0,
  "repeatDelay": 0,
  "repeatTimes": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» goodsName|body|string|true|none|
|» startTime|body|string|true|none|
|» endTime|body|string|true|none|
|» price|body|integer|true|none|
|» number|body|integer|true|none|
|» totalPrice|body|integer|true|none|
|» restrictNumber|body|integer|true|none|
|» description|body|string|true|none|
|» isFilter|body|integer|true|none|
|» ruleList|body|[integer]|true|none|
|» image|body|string|true|none|
|» id|body|integer|true|none|
|» repeatDelay|body|integer|true|循环添加间隔|
|» repeatTimes|body|integer|true|循环添加次数|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "更新成功",
  "data": {}
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|

## GET 获取存款规则列表

GET /admin/good/getDepositRule

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "sed quis ut fugiat",
  "data": [
    {
      "ruleId": 1309,
      "ruleName": "素",
      "description": "就金总器她人响治步现史老争要。",
      "type": 1,
      "value": "73604571248780",
      "variable": "kncw",
      "control": 1
    },
    {
      "ruleId": 2409,
      "ruleName": "将",
      "description": "切军且集品高非达因水用没级车一系命目。",
      "type": 1,
      "value": "267483046693909",
      "variable": "pedwmlb",
      "control": 1
    },
    {
      "ruleId": 1920,
      "ruleName": "专",
      "description": "器么政连始指形火持积是比或劳县文。",
      "type": 1,
      "value": "1630633403023324",
      "variable": "lrdoxosba",
      "control": 1
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|[object]|true|none|none|

## DELETE 删除存款

DELETE /admin/good/deleteDeposit

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 获取贷款列表

GET /admin/good/getLoanList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|name|query|string|false|筛选条件:商品名字|
|startTime|query|string|false|筛选条件:开始时间|
|status|query|string|false|筛选条件:状态|
|page|query|string|true|none|
|size|query|string|true|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 5,
    "loansList": [
      {
        "id": 2,
        "name": "贷款100000元",
        "price": 100000,
        "totalNumber": 10,
        "remainNumber": 88,
        "startTime": "2022-04-10 21:30:00",
        "endTime": "2022-04-11 00:00:00",
        "restrictNumber": 1,
        "totalPrice": 1000000,
        "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600567.jpg",
        "isFilter": 1,
        "description": "<p>est Duis in cillum</p>",
        "ruleList": [
          12,
          13
        ],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 2,
        "totalRepeatTimes": 5
      },
      {
        "id": 3,
        "name": "国债期货",
        "price": 10000,
        "totalNumber": 10000,
        "remainNumber": 9990,
        "startTime": "2022-03-21 21:30:00",
        "endTime": "2022-04-26 00:00:00",
        "restrictNumber": 10,
        "totalPrice": 1000000,
        "image": "",
        "isFilter": 1,
        "description": "<p>ajdjfshjkd</p>",
        "ruleList": [
          11,
          12,
          13
        ],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      },
      {
        "id": 4,
        "name": "银行理财产品1号",
        "price": 12000,
        "totalNumber": 576,
        "remainNumber": 501,
        "startTime": "2022-03-31 21:30:00",
        "endTime": "2022-04-10 00:00:00",
        "restrictNumber": 75,
        "totalPrice": 70848,
        "image": "",
        "isFilter": 0,
        "description": "",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 0,
        "totalRepeatTimes": 5
      },
      {
        "id": 18,
        "name": "银行理财产品2号",
        "price": 12000,
        "totalNumber": 45634,
        "remainNumber": 44971,
        "startTime": "2022-03-21 21:52:00",
        "endTime": "2022-05-01 00:00:00",
        "restrictNumber": 3333,
        "totalPrice": 6546521,
        "image": "",
        "isFilter": 1,
        "description": "sint dolore qui laboris",
        "ruleList": [
          11,
          12,
          13
        ],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      },
      {
        "id": 19,
        "name": "银行贷款3号",
        "price": 20000,
        "totalNumber": 22,
        "remainNumber": 22,
        "startTime": "2022-04-23 21:15:00",
        "endTime": "2022-05-26 00:00:00",
        "restrictNumber": 3,
        "totalPrice": 2200,
        "image": "",
        "isFilter": 0,
        "description": "<p>sdsdw</p>",
        "ruleList": [],
        "status": 0,
        "repeatDelay": 2,
        "repeatTimes": 5,
        "totalRepeatTimes": 5
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» loansList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» price|integer|true|none|单价|
|»»» totalNumber|integer|true|none|总数|
|»»» remainNumber|integer|true|none|剩余（非实时数据）|
|»»» startTime|string|true|none|开始时间|
|»»» endTime|string|true|none|结束时间|
|»»» status|integer|true|none|商品状态 。0：未开始，1：正在售卖，2已结束|
|»»» restrictNumber|integer|true|none|限购数量|
|»»» image|string|true|none|none|
|»»» totalPrice|number|true|none|none|
|»»» isFilter|integer|true|none|是否开启初筛|
|»»» description|string|true|none|none|
|»»» repeatDelay|integer|true|none|重复发售延迟|
|»»» repeatTimes|integer|true|none|重复发售次数|

## GET 获取存款详情

GET /admin/good/getDepositDetail

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|商品Id|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "id": 2,
    "name": "摘月1w存款",
    "price": 10000,
    "totalNumber": 100000,
    "remainNumber": 764,
    "startTime": "2022-03-10 00:00:00",
    "endTime": "2022-05-19 00:00:00",
    "restrictNumber": 1,
    "totalPrice": 1000000000,
    "image": "https://zjy-1307765026.cos.ap-nanjing.myqcloud.com/ms/2022/4/4/1649001600555.jpg",
    "isFilter": 0,
    "description": "<h1 id=\"1dxm3\">摘月1w存款</h1><p><img src=\"https://xzj-pic-1306183757.cos.ap-nanjing.myqcloud.com/picgo/deposit.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/><br/></p><p><br/></p>",
    "ruleList": [],
    "status": 0,
    "repeatDelay": 2,
    "repeatTimes": 5,
    "totalRepeatTimes": 5
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|

## GET 获取所有订单列表

GET /admin/good/getOrderList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|page|query|string|true|none|
|size|query|string|true|none|
|type|query|string|false|订单类型（0：存款，1：贷款）|
|orderId|query|string|false|none|
|name|query|string|false|none|
|startTime|query|string|false|none|
|endTime|query|string|false|none|
|status|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 6,
    "orderList": [
      {
        "id": 44,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840645416,
        "number": 100,
        "name": "1w存款",
        "username": "gu_1128",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 45,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840645456,
        "number": 100,
        "name": "1w存款",
        "username": "gu_1168",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 46,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840644728,
        "number": 100,
        "name": "1w存款",
        "username": "gu_440",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 7,
        "createTime": "2022-04-08 17:16:27",
        "userId": 1840644411,
        "username": "gu_123",
        "totalPrice": 100000,
        "number": 10,
        "name": "国债期货",
        "status": 1,
        "goodId": 3
      },
      {
        "id": 8,
        "createTime": "2022-04-09 16:14:23",
        "userId": 1840644411,
        "username": "gu_123",
        "totalPrice": 12000,
        "number": 1,
        "name": "银行理财产品1号",
        "status": 1,
        "goodId": 4
      },
      {
        "id": 10,
        "createTime": "2022-04-09 16:48:27",
        "userId": 1840644411,
        "username": "gu_123",
        "totalPrice": 12000,
        "number": 1,
        "name": "银行理财产品1号",
        "status": 1,
        "goodId": 4
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» orderList|[object]|true|none|none|
|»»» type|integer|true|none|订单类型 0存款 1贷款|
|»»» id|string|true|none|订单ID|
|»»» name|string|true|none|产品名称|
|»»» goodId|integer|true|none|产品ID|
|»»» username|string|true|none|买家用户名|
|»»» userId|integer|true|none|买家ID|
|»»» number|integer|true|none|购买份数|
|»»» totalPrice|number|true|none|订单总金额|
|»»» createTime|string|true|none|成交时间|
|»»» status|integer|true|none|0 待支付 1已完成 2已退款|

## GET 获取存款订单列表（详情页中）

GET /admin/good/getDepositListById

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|存款Id|
|page|query|string|true|none|
|size|query|string|true|none|
|orderId|query|string|false|none|
|username|query|string|false|none|
|startTime|query|string|false|none|
|endTime|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 5,
    "orderList": [
      {
        "id": 44,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840645416,
        "number": 100,
        "name": "1w存款",
        "username": "gu_1128",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 45,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840645456,
        "number": 100,
        "name": "1w存款",
        "username": "gu_1168",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 46,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840644728,
        "number": 100,
        "name": "1w存款",
        "username": "gu_440",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 47,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840644850,
        "number": 100,
        "name": "1w存款",
        "username": "gu_562",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      },
      {
        "id": 48,
        "createTime": "2022-04-07 21:43:56",
        "userId": 1840644889,
        "number": 100,
        "name": "1w存款",
        "username": "gu_601",
        "totalPrice": 1000000,
        "status": 1,
        "goodId": 8
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|none|
|»» orderList|[object]|true|none|none|
|»»» id|integer|true|none|none|
|»»» createTime|string|true|none|none|
|»»» userId|integer|true|none|none|
|»»» number|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» username|string|true|none|none|
|»»» totalPrice|integer|true|none|none|
|»»» status|integer|true|none|none|
|»»» goodId|integer|true|none|none|

## POST 新建存款

POST /admin/good/addDeposit

> Body 请求参数

```json
{
  "name": "string",
  "startTime": "string",
  "endTime": "string",
  "price": 0,
  "number": 0,
  "totalPrice": 0,
  "image": "string",
  "description": "string",
  "isFilter": 0,
  "ruleList": "string",
  "restrictNumber": 0,
  "repeatDelay": 0,
  "repeatTimes": 0
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» name|body|string|true|产品名称|
|» startTime|body|string|true|开始时间|
|» endTime|body|string|true|结束时间|
|» price|body|number|true|单份价格|
|» number|body|number|true|销售总数|
|» totalPrice|body|number|true|活动总价|
|» image|body|string|true|主图链接|
|» description|body|string|true|产品详情|
|» isFilter|body|integer|true|是否开启初筛|
|» ruleList|body|string|true|初筛规则ID列表|
|» restrictNumber|body|number|true|限制购买数量|
|» repeatDelay|body|integer|true|循环添加间隔|
|» repeatTimes|body|integer|true|循环添加次数|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "新建成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

# Second Kill(管理端)/客户

## GET 获取客户列表

GET /admin/client/userList

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|page|query|string|true|none|
|size|query|string|true|none|
|username|query|string|false|模糊搜索用户名|
|phone|query|string|false|查找的手机号|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "userList": [
      {
        "id": 0,
        "name": "系统账户",
        "username": "boss",
        "phone": "X",
        "createTime": "2000-01-01 00:00:00",
        "balance": 1991082304
      },
      {
        "id": 1840644289,
        "name": "陈小澈",
        "idCard": "330902197312312215",
        "username": "gu_1",
        "phone": "18850884352",
        "createTime": "2022-03-90 23:01:18",
        "attribute": {
          "elder18": "0",
          "hasWork": "1",
          "balance": "42.195858482849701",
          "loanNumber": "77",
          "username": "gu_1"
        },
        "balance": 29997000000
      },
      {
        "id": 1840644290,
        "name": "陈小澈",
        "idCard": "330902197312312215",
        "username": "gu_2",
        "phone": "13334171322",
        "createTime": "2022-03-90 23:01:18",
        "attribute": {
          "elder18": "1",
          "hasWork": "1",
          "balance": "839.15508411150495",
          "loanNumber": "23",
          "username": "gu_2"
        },
        "balance": 29998990000
      }
    ],
    "count": 2001
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» userList|[object]|true|none|查询到的用户列表|
|»»» id|integer|true|none|none|
|»»» name|string|true|none|none|
|»»» username|string|true|none|none|
|»»» phone|string|true|none|none|
|»»» createTime|string|true|none|none|
|»»» balance|integer|true|none|none|
|»»» idCard|string|true|none|none|
|»»» attribute|object|true|none|none|
|»» count|integer|true|none|查询到的记录总数|

## GET 下载模板

GET /admin/client/download

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 用户属性表格上传

POST /admin/client/userAttribute

> Body 请求参数

```yaml
file: file:///Users/zhengjunyuan/Desktop/template.xlsx

```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|
|body|body|object|false|none|
|» file|body|string(binary)|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "上传成功",
  "data": null
}
```

> 文件中的用户名不存在

```json
{
  "code": 400,
  "msg": "文件中的用户名不存在",
  "data": {
    "row": 4
  }
}
```

> 文件中有空缺

```json
{
  "code": 600,
  "msg": "文件中有空缺",
  "data": {
    "row": 3,
    "column": "F"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|文件中的用户名不存在|Inline|
|600|Unknown|文件中有空缺|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

状态码 **400**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» row|integer|true|none|用户名不存在的行号|

状态码 **600**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» row|integer|true|none|出错的行号|
|»» column|string|true|none|出错的列号|

## GET 获取存款初筛结果

GET /admin/client/depositFilterResult

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|产品ID|
|page|query|string|true|none|
|size|query|string|true|none|
|username|query|string|false|none|
|startTime|query|string|false|none|
|endTime|query|string|false|none|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 238,
    "resultList": [
      {
        "userId": 1840644411,
        "result": 0,
        "reason": [
          {
            "id": 8,
            "name": "金额锁",
            "description": "限制金额区间",
            "type": 3,
            "value": [
              "3w",
              "8w"
            ],
            "control": true,
            "variable": "fund"
          }
        ],
        "username": "gu_123",
        "phone": "13967217344",
        "createTime": "2022-04-06T12:07:44.000+00:00"
      },
      {
        "userId": 1840644411,
        "result": 0,
        "reason": [
          {
            "id": 8,
            "name": "金额锁",
            "description": "限制金额区间",
            "type": 3,
            "value": [
              "3w",
              "8w"
            ],
            "control": true,
            "variable": "fund"
          }
        ],
        "username": "gu_123",
        "phone": "13967217344",
        "createTime": "2022-04-06T12:07:24.000+00:00"
      },
      {
        "userId": 1840644411,
        "result": 0,
        "reason": [
          {
            "id": 8,
            "name": "金额锁",
            "description": "限制金额区间",
            "type": 3,
            "value": [
              "3w",
              "8w"
            ],
            "control": true,
            "variable": "fund"
          }
        ],
        "username": "gu_123",
        "phone": "13967217344",
        "createTime": "2022-04-06T12:09:21.000+00:00"
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|返回的记录总数|
|»» resultList|[object]|true|none|返回的结果列表|
|»»» userId|integer|true|none|用户ID|
|»»» createTime|string|true|none|创建时间|
|»»» reason|[object]|true|none|初筛未通过原因|
|»»»» id|integer|true|none|none|
|»»»» type|integer|true|none|none|
|»»»» variable|string|true|none|none|
|»»»» value|string|true|none|none|
|»»»» name|string|true|none|none|
|»»»» control|integer|true|none|none|
|»»»» description|string|true|none|none|
|»»» phone|string|true|none|手机号|
|»»» username|string|true|none|用户名|
|»»» result|integer|true|none|初筛结果（pass表示初筛通过，reject表示初筛拒绝，notFound、notFinish表示初筛还未处理完成）|

## DELETE 删除客户

DELETE /admin/client/delete

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|要删除的用户ID|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "删除成功",
  "data": null
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|null|true|none|none|

## GET 获取贷款初筛结果

GET /admin/client/loanFilterResult

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|id|query|string|true|产品ID|
|page|query|string|true|none|
|size|query|string|true|none|
|username|query|string|false|筛选用户名|
|startTime|query|string|false|筛选开始时间|
|endTime|query|string|false|筛选结束时间|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "查询成功",
  "data": {
    "count": 2,
    "resultList": [
      {
        "userId": 1840644411,
        "result": 3,
        "reason": [],
        "phone": "13967217344",
        "username": "gu_123",
        "createTime": "2022-04-09T08:38:49.000+00:00"
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» count|integer|true|none|查询到的记录总数|
|»» resultList|[object]|true|none|查询到的记录列表|
|»»» username|string|true|none|用户名|
|»»» createTime|string|true|none|创建时间|
|»»» userId|integer|true|none|用户ID|
|»»» result|integer|true|none|初筛结果（pass表示初筛通过，reject表示初筛拒绝，notFound、notFinish表示初筛还未处理完成）|
|»»» phone|string|true|none|手机号|
|»»» reason|[object]|true|none|未通过的原因（为rule对象列表，表示未通过的原因）|
|»»»» id|integer|false|none|none|
|»»»» name|string|false|none|none|
|»»»» description|string|false|none|none|
|»»»» type|integer|false|none|none|
|»»»» value|string|false|none|none|
|»»»» variable|string|false|none|none|
|»»»» control|integer|false|none|none|

# Second Kill(管理端)/仪表盘

## GET 用户

GET /admin/dashboard/user

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "culpa fugiat ut in elit",
  "data": {
    "visitsDay": -4624088,
    "visitsMonth": 48826508,
    "visitsDayOnDay": 12.4,
    "visitsWeekOnWeek": 4.118,
    "newUserDay": 64759137,
    "newUserMonth": -73855277,
    "newUserWeekOnWeek": 12.35,
    "newUserDayOnDay": 15.372,
    "visitChart": [
      {
        "number": 81,
        "date": "00-10-27"
      },
      {
        "number": 73,
        "date": "91-6-5"
      },
      {
        "number": 81,
        "date": "17-11-27"
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» visitsDay|integer|true|none|none|
|»» visitsMonth|integer|true|none|none|
|»» visitsDayOnDay|number|true|none|none|
|»» visitsWeekOnWeek|number|true|none|none|
|»» newUserDay|integer|true|none|none|
|»» newUserMonth|integer|true|none|none|
|»» newUserWeekOnWeek|number|true|none|none|
|»» newUserDayOnDay|number|true|none|none|
|»» visitChart|[object]|true|none|访问统计|
|»»» number|integer|true|none|次数|
|»»» date|string|true|none|日期|

#### 枚举值

|属性|值|
|---|---|
|date|未消费客户|
|date|消费一次客户|
|date|老客户|

## GET 销售

GET /admin/dashboard/sale

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|token|header|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "sint Duis sed Lorem",
  "data": {
    "amountDay": 96,
    "amountMonth": 84,
    "amountDayOnDay": 4.727,
    "amountWeekOnWeek": 9.29,
    "orderDay": 91,
    "orderMonth": 64,
    "orderWeekOnWeek": 16.76,
    "orderDayOnDay": 13.4,
    "saleRank": [
      {
        "name": "原效平持改下它",
        "number": 62
      },
      {
        "name": "安办资空市照合",
        "number": 83
      },
      {
        "name": "构选儿较业相",
        "number": 93
      },
      {
        "name": "约资更么日",
        "number": 96
      },
      {
        "name": "温步则图许",
        "number": 81
      }
    ],
    "customerChart": [
      {
        "number": 91,
        "type": "未消费客户"
      },
      {
        "number": 93,
        "type": "未消费客户"
      },
      {
        "number": 94,
        "type": "消费一次客户"
      }
    ],
    "saleChart": [
      {
        "date": "91-7-21",
        "deposit": -26542083.626694128,
        "loans": 71782873.22305113
      },
      {
        "date": "13-9-4",
        "deposit": 21091550.27352956,
        "loans": 69425811.26871228
      },
      {
        "date": "96-9-22",
        "deposit": 53785682.77753258,
        "loans": 57412423.06552148
      }
    ]
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

状态码 **200**

|名称|类型|必选|约束|说明|
|---|---|---|---|---|
|» code|integer|true|none|none|
|» msg|string|true|none|none|
|» data|object|true|none|none|
|»» amountDay|number|true|none|none|
|»» amountMonth|number|true|none|none|
|»» amountDayOnDay|number|true|none|none|
|»» amountWeekOnWeek|number|true|none|none|
|»» orderDay|integer|true|none|none|
|»» orderMonth|integer|true|none|none|
|»» orderWeekOnWeek|number|true|none|none|
|»» orderDayOnDay|number|true|none|none|
|»» depositRank|[object]|true|none|none|
|»»» name|string|true|none|none|
|»»» number|integer|true|none|none|
|»»» id|integer|true|none|none|
|»» loansRank|[object]|true|none|none|
|»»» name|string|true|none|none|
|»»» number|integer|true|none|none|
|»»» id|integer|true|none|none|
|»» saleChart|[object]|true|none|none|
|»»» date|string|true|none|日期|
|»»» deposit|number|true|none|存款销售额|
|»»» loans|number|true|none|贷款销售额|
|»» customerChart|[object]|true|none|客户组成|
|»»» number|integer|true|none|人数|
|»»» type|string|true|none|消费类型（未消费客户、消费一次客户、老客户，按顺序来）|

# 数据模型

