<template>
    <div class="wrapper" @click="update">
        <image :src="logoUrl" class="logo"></image>
        <text class="title">韩小醋  BlackBeans  ddd {{target}}</text>
        <text class="desc">Now, let's use vue to build your weex app.</text>
        <text v-on:click="click" class="text">点我啊</text>
        <text class="text">nihao</text>
        <text class="text">jj</text>
    </div>
</template>

<script>
    //文件输出
    export default {
        //页面数据和方法
        data: {
            logoUrl: 'http://img1.vued.vanthink.cn/vued08aa73a9ab65dcbd360ec54659ada97c.png',
            target: 'World'
        },
        methods: {
            update: function (e) {
                this.target = 'Weex'
                console.log('target:', this.target)
            },

            click () {//新语法
                alert("谁让你点我的")
            }
        }
    }
</script>

//样式
<style>
    .text {
        width: 100%;
        height: 88px;
        background-color: lightblue;
        text-align: center;
        line-height: 88px;
        font-size: 40px;
    }

    .wrapper {
        display: flex; /*设置子控件是flex弹性布局*/
        flex-direction: column; /*子控件垂直布局*/
        align-items: center;
    }

    .title {
        padding-top: 40px;
        padding-bottom: 40px;
        font-size: 48px;
    }

    .logo {
        width: 360px;
        height: 156px;
    }

    .desc {
        padding-top: 20px;
        color: #888;
        font-size: 24px;
    }
</style>
