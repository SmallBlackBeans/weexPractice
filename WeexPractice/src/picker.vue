<template>
    <div class="wrapper">
        <div class="group">
            <text class="label">Time:</text>
            <text class="title">{{value}}</text>
        </div>
        <div class="group">
            <text class="button" @click="pickTime">pick time</text>
        </div>
    </div>
</template>


<script>
    const picker = weex.requireModule('picker')
    export default {
        data() {
            return {
                value: ''
            }
        },
        methods: {
            pickTime() {
                picker.pickTime({
                    value: this.value
                }, event => {
                    if (event.result === 'success') {
                        this.value = event.data
                    }
                })
            }
        }
    }
</script>

<style>
    .wrapper {
        flex-direction: column;
        /*布局在垂直方向的正中心，即屏幕中心*/
        justify-content: center;
    }

    .group {
        flex-direction: row;
        justify-content: center;
        margin-bottom: 40px;
        align-items: center;
    }

    .label {
        font-size: 40px;
        color: #888888;
    }

    .title {
        font-size: 80px;
        color: #41B883;
    }

    .button {
        font-size: 40px;
        width: 280px;
        color: #41b883;
        text-align: center;
        padding-top: 25px;
        padding-bottom: 25px;
        border-width: 2px;
        border-style: solid;
        border-color: rgb(162, 217, 192);
        background-color: rgba(162, 217, 192, 0.2);
    }
</style>