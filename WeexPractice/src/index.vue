<template>
    <div>
        <slider class="slider" interval="1000"  :auto-play="true">
            <!--<image src="https://gd2.alicdn.com/bao/uploaded/i2/T14H1LFwBcXXXXXXXX_!!0-item_pic.jpg"class="image"></image>-->
            <!--<image src="https://gd1.alicdn.com/bao/uploaded/i1/TB1PXJCJFXXXXciXFXXXXXXXXXX_!!0-item_pic.jpg" class="image"></image>-->
            <!--<image src="https://gd3.alicdn.com/bao/uploaded/i3/TB1x6hYLXXXXXazXVXXXXXXXXXX_!!0-item_pic.jpg" class="image"></image>-->
            <!--<image :src="src1" class="image"></image>-->
            <image :src="src" v-for='(src,index) in images' class="image" @click='click(index)' @change="change"></image>
            <indicator class="indicator"></indicator>
        </slider>
    </div>
</template>


<script>
    var modal = weex.requireModule('modal')
    export default {
        data() {
            return {
                src1:"https://gd3.alicdn.com/bao/uploaded/i3/TB1x6hYLXXXXXazXVXXXXXXXXXX_!!0-item_pic.jpg",
                images:['https://gd2.alicdn.com/bao/uploaded/i2/T14H1LFwBcXXXXXXXX_!!0-item_pic.jpg',
                    'https://gd1.alicdn.com/bao/uploaded/i1/TB1PXJCJFXXXXciXFXXXXXXXXXX_!!0-item_pic.jpg',
                    'https://gd2.alicdn.com/bao/uploaded/i2/T14H1LFwBcXXXXXXXX_!!0-item_pic.jpg',
                    "http://pic19.photophoto.cn/20110417/0019032477335591_b.jpg"
                ],
            }
        },
    methods: {
            click(index) {
                console.log(index)
            },
        change(evnet) {
         modal.toast({message:event.index,duration:1})
        }
    }
    }
</script>

<style>
    .slider {
        width: 750px;
        height: 300px;
        background-color: green;
    }
    .image {
        width: 750px;
        height: 300px;
    }
    .indicator {
        position: absolute;
        left: 20px;
        bottom: 40px;
        width: 200px;
        height: 33px;
        item-color:red;
        item-selected-color:green;
        item-size:20px
    }

</style>

