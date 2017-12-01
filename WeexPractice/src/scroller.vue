<!--当需要一个水平方向的 scroller 时，使用 scroll-direction:horizontal 和 flex-direction: row。-->
<!--当需要一个竖直方向的 scroller 时，使用 scroll-direction:vertical 和 flex-direction: column。-->


<template>
    <div>
        <scroller class="scroller" show-scrollbar=false       @loadmore='loadmore' loadmoreoffset="10">
            <div class="row" v-for="(name , index) in rows" :ref="'item' + index">
                <text class="row-text" :ref="'text'+index">{{ name }}</text>
            </div>
        </scroller>
        <div class="group">
            <text @click="goto10" class="button"> go to 10 </text>
            <text @click="goto20" class="button"> go to 20 </text>
        </div>
    </div>
</template>


<script>
    const dom = weex.requireModule('dom')
    export default {
        data: function () {
            return {
                rows: [],
            }
        },

        created() {
            for (let i = 0; i < 30; i++) {
                this.rows.push('row' + i)
            }
        },

        methods: {
            goto10() {
                const el = this.$refs.item10[0]
                dom.scrollToElement(el, {})
            },
            goto20() {
                const el = this.$refs.item20[0]
                dom.scrollToElement(el, {offset: 0})
            }
        }
    }
</script>


<style>
    .scroller {
        width: 700px;
        height: 700px;
        border-width: 2px;
        border-style: solid;
        margin-left: 25px;
        border-color: #afddff;
    }

    .row {
        height: 100px;
        flex-direction: column;
        justify-content: center;
        padding-left: 30px;
        border-bottom-width: 2px;
        border-bottom-color: #ddd;
        border-bottom-style: solid;
    }

    .row-text {
        font-size: 45px;
        color: #666;
    }

    .group {
        flex-direction: row;
        justify-content: center;
        margin-top: 60px;
    }

    .button {
        width: 200px;
        padding-top: 20px;
        padding-bottom: 20px;
        font-size: 40px;
        margin-left: 30px;
        margin-right: 30px;
        border-style: solid;
        text-align: center;
        color: #41B883;
        border-width: 2px;
        border-style: solid;
        border-color: burlywood;
        background-color: indianred;
    }


</style>