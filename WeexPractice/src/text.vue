<template>
    <div class="root">
        <text class="text" @click="click">{{text}}</text>

        <a class="a" href="http://dotwe.org/raw/dist/c1b1a5fdcf0937df1d847f8812a7ccb2.bundle.wx">
            <text class="text">跳转</text>
        </a>
    </div>
</template>

<script>

    export default {
        data: {
            text: "我是韩小醋",
        },
        methods: {
            click() {
                this.text = "nihao";
            }
        }
    }

</script>

<style>
    .root {
        display: flex;
        background-color: lightblue;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
    }
    .text {
        margin-top: 100px;
        width: 80px;
        background-color: #008000;
        color: white;
        border-style: solid;
        border-width: 2px;
        border-color: red;
        font-style: italic;/*斜体*/
        text-decoration: underline;
        text-decoration-color: #0088fb;
        font-weight: bold;
        border-radius: 10px;
        text-align: center;
        /*溢出隐藏*/
        lines:1;
        text-overflow: ellipsis;
        opacity: 0.3;
    }

    .a {
        background-color: rosybrown;
        width:300px;
        height: 50px;
    }
</style>