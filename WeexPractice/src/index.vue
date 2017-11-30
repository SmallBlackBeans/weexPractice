<template>

    <list @loadmore='loadmore' loadmoreoffset='10'>
        <cell class='cell' v-for='num in lists' keep-scroll-position='true'>
            <div class='cellContent'>
                <image class='cell-image'></image>
                <text class='cell-text'>韩小醋{{num}}号</text>
            </div>
        </cell>
        <loading class='loading' @loading='onloading' :display='showLoading'>
            <text class='indicator'>Loading...</text>
        </loading>
    </list>
</template>



<script>
    const modal = weex.requireModule('modal')
    const  LOADMORE_COUNT = 10

    export default  {
        data() {
            return {
                showLoading:'hide',
                lists:[1, 2, 3, 4, 5]
            }
        },
        methods: {
            onloading(event) {
                modal.toast({message:'loading',duration:1})
                this.showLoading = 'show'
                setTimeout(()=>{
                    const length = this.lists.length
                    for (let i = length; i < length + LOADMORE_COUNT; i++) {
                        this.lists.push(i + 1)
                    }
                    this.showLoading = 'hide'
                },1500)
            },
//            loadmore(evnet) {
//                modal.toast({ message: 'loadMore', duration:1 })
//                setTimeout( () => {
//                    const  length = this.lists.length
//                    for (let i = length; i < length + LOADMORE_COUNT; ++i) {
//                        this.lists.push(i + 1)
//                    }
//                },800)
//            },
            scroll(event) {
                //event.contentSize
                //event.contentOffset

            },

        }
    }
</script>

<style>
    .cellContent {
        width: 600px;
        height: 250px;
        margin-left: 75px;
        margin-top: 35px;
        margin-bottom: 35px;
        flex-direction: row;
        justify-content: flex-start;
        align-items: center;
        border-width: 2px;
        border-radius: 5px;
        border-style: solid;
        border-color: burlywood;
        background-color: indianred;
    }

    .cell-text {
        color: white;
        text-align: center;
        margin-left: 60px;
    }
    .cell-image {
        margin-top: 5px;
        margin-left: 30px;
        width: 160px;
        height: 160px;
        background-color: burlywood;
        border-radius: 80px
    }


</style>

