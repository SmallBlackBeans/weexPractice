<template>

    <div><text>Hello World</text></div>

</template>


<script>
    var modal = weex.requireModule('modal');
    var config = weex.config;

    const  deviceH = config.deviceHeight
    const deviceW = config.deviceWidth

    const weexVersion = config.weexVersion
    const appName = config.appName
    const appVersion = config.appVersion

    const platform = config.platform //iOS  Android Web
    const osName = config.osName //iOS android 操作系统名称
    const osVersion = config.osVersion
    const deviceModel = config.deviceModel //设备型号


    //返回当前文档对象
    const document = weex.document

    //检测是否支持某个组件
    weex.supports('@component/slider')//true
    weex.supports('@component/my-tab')//false

    //检测是否支持某个模块
    weex.supports('@module/stream')//true
    weex.supports('@module/abc')//false


    //检测是否支持某个模块中的方法
    weex.supports('@module/dom.getComponentRect')//true

    //无效输入

</script>