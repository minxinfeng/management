# 接口文档说明
## banner列表信息
`curl -H "Content-type: application/json" -X POST -d '{"start":"0","size":10 }' http://localhost:8080/manage/getBannerInfo`
### 输入参数：
start：从第几条开始

size：共获取多少条记录
### 输出参数：
```
{
    "bannerInfoList":[
        {
            "bannerImageUrl":"http://bmob-cdn-12955.b0.upaiyun.com/2017/07/18/9df92213404655e680777b143eebd227.png",
            "bannerGourl":"http://cnblogs.com/fengxm",
            "bannerId":1,
            "bannerName":"banner1"
        }
    ],
    "reason":"成功",
    "status":0
}
```
status：状态，0返回成功

reason：返回结果说明

bannerInfoList：返回结果数据列表	
```
private int bannerId;//banner ID
private String bannerName;//banner名称
private String bannerImageUrl;//banner图片地址
private String bannerGourl;//banner跳转地址
```

## 分类列表信息
`curl -H "Content-type: application/json" -X POST -d '{"start":"0","size":10 }' http://localhost:8080/manage/getTypeInfoList`
### 输入参数：
start：从第几条开始

size：共获取多少条记录
### 输出参数：
```
{
    "typeInfoList":[
        {
            "typeId":1,
            "typeMoneyFrom":"1000",
            "typeMoneyTo":"30000",
            "typeGoto":"http://cnblogs.com/fengxm",
            "typeTitle":"typetitle1",
            "typeLogoUrl":"http://bmob-cdn-12955.b0.upaiyun.com/2017/07/18/9df92213404655e680777b143eebd227.png",
            "typeMoney":"1000-30000",
            "typeName":"type1"
        },
        {
            "typeId":2,
            "typeMoneyFrom":"2000",
            "typeMoneyTo":"20000",
            "typeGoto":"http://cnblogs.com/fengxm",
            "typeTitle":"typetitle2",
            "typeLogoUrl":"http://bmob-cdn-12955.b0.upaiyun.com/2017/07/18/9df92213404655e680777b143eebd227.png",
            "typeMoney":"2000-20000",
            "typeName":"type2"
        }
    ],
    "reason":"成功",
    "status":0
}
```
status：状态，0返回成功

reason：返回结果说明

typeInfoList：返回结果数据列表	
```
private int TypeId;//类别ID
private String typeName;//类别名称
private String typeTitle;//类别标题
private String typeLogoUrl;//类别图片地址
private String typeMoney;//金额范围
private String typeMoneyFrom;//金额最小值
private String typeMoneyTo;//金额最大值
private String typeGoto;//类别跳转（在 列表名称维护 页面进行维护）
```


## 热门列表
`curl -H "Content-type: application/json" -X POST -d '{"start":"0","size":10 }' http://localhost:8080/manage/getHotInfoList`
### 输入参数：
start：从第几条开始

size：共获取多少条记录
### 输出参数：
```
{
    "hotInfoList":[
        {
            "hotId":1,
            "hotType":"type1",
            "hotLogoUrl":"http://bmob-cdn-12955.b0.upaiyun.com/2017/07/18/9df92213404655e680777b143eebd227.png",
            "hotName":"hottitle1",
            "hotGourl":"http://cnblogs.com/fengxm"
        }
    ],
    "status":0,
    "reason":"成功"
}
```
status：状态，0返回成功

reason：返回结果说明

hotInfoList：返回结果数据列表	
```
private int hotId;//热门列表ID
private String hotType;//热门分类
private String hotLogoUrl;//图片地址
private String hotName;//热门贷款名称
private String hotGourl;//跳转地址
```
## 列表配置信息
### 获取某一类别的列表内容
`curl -H "Content-type: application/json" -X POST -d '{"start":"0","size":10 ,"listName":"热门贷款"}' http://localhost:8080/manage/getConfigInfoList`
#### 输入参数：
start：从第几条开始

size：共获取多少条记录
listName：列表名称获取哪类列表
#### 输出参数：
```
{
    "configInfoList":[
        {
            "listName":"热门贷款",
            "configId":1,
            "channelName":"金牛贷",
            "channelLogoUrl":"http://bmob-cdn-12955.b0.upaiyun.com/2017/07/18/9df92213404655e680777b143eebd227.png",
            "channelGourl":"http://cnblogs.com/fengxm",
            "moneyRange":"1000-1000",
            "moneyRangeFrom":"1000",
            "moenyRangeTo":"10000",
            "tags":"不用征信|身份证|审核步骤少"
        }
    ],
    "status":0,
    "reason":"成功"
}
```
status：状态，0返回成功

reason：返回结果说明

configInfoList：返回结果数据列表	
```
private int configId;//主键ID
private String listName;//列表名称，可重复，在页面添加过程中下拉选择，与tagInfo关联 （在 列表名称维护 页面进行维护）
private String channelName;//渠道名称
private String channelLogoUrl;//渠道logo地址
private String channelGourl;//渠道跳转地址
private String moneyRange;//金额范围
private String moneyRangeFrom;//金额范围
private String moenyRangeTo;//金额范围
private String tags;//标签信息，用|分隔
```
### 获取所有列表信息
`curl -H "Content-type: application/json" -X POST -d '{"start":"0","size":10 }' http://localhost:8080/manage/getConfigInfoList`
#### 输入参数：
start：从第几条开始

size：共获取多少条记录
#### 输出参数：
同上

## 列表名称信息维护
仅在管理后台有，在分类编辑页面和列表配置页面下拉选择关联
