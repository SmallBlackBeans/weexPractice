<template>

    <scroller class="scroller">

        <refresh class="refresh" @refresh="onrefresh" @pullingdown="onpullingdown"
                 v-bind:display="refreshing? 'show' : 'hide'">
            <text class="indicator">Refreshing ...</text>
        </refresh>
        <div class="cell" v-for=" num in  lists">
            <div class="cell-content">
                <text class="cell-text">{{num}}</text>
            </div>
        </div>
    </scroller>
</template>


<script>
    const modal = weex.requireModule('modal')
    export default {
        data() {
            return {
                refreshing: false,
                lists: [1, 2, 3, 4, 5],
            }
        },
        methods: {
            onrefresh() {
                console.log('is refreshing')
                modal.toast({message: 'refresh', duration: 1})
                this.refreshing = true
                setTimeout(function () {
                    this.refreshing = false

                }, 2000)
            },
            onpullingdown() {
                console.log('is onpulling down')
                modal.toast({message: 'pulling down', duration: 1})
            },
        },
    }
</script>

<style>
    .indicator {
        color: #888888;
        font-size: 42px;
        text-align: center;
    }

    .cell {

    }

    .cell-content {
        width: 600px;
        height: 250px;
        margin-left: 75px;
        margin-top: 35px;
        margin-bottom: 35px;
        flex-direction: column;
        justify-content: center;
        border-radius: 4px;
        border-width: 2px;
        border-color: indianred;
        border-style: solid;
    }

    .cell-text {
        color: #41B883;
        text-align: center;
        font-size: 50px;
    }

</style>

