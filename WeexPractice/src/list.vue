<template>

    <list @loadmore='loadmore' loadmoreoffset='10'>
        <cell class='cell' v-for='num in lists'>
            <div class='cellContent'>
                <image class='cell-image' style='width: 80px;height: 80px;background-color: burlywood;border-radius: 40px'></image>
                <text class='cell-text'>{{num}}</text>
            </div>
        </cell>
    </list>
</template>



<script>
    const modal = weex.requireModule('modal')
    const  LOADMORE_COUNT = 4

    export default  {
        data() {
            return {
                lists:[1, 2, 3, 4, 5]
            }
        },
        methods: {
            loadmore(evnet) {
                modal.toast({ message: 'loadMore', duration:1 })
                setTimeout( () => {
                    const  length = this.lists.length
                    for (let i = length; i < length + LOADMORE_COUNT; ++i) {
                        this.lists.push(i + 1)
                    }
                },800)
            },
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
    }


</style>

