<template>
    <div class="wrapper">
        <div ref="test" @click="move" class="box"></div>
    </div>
</template>

<script>
    const animation = weex.requireModule('animation')
    const mpdal= weex.requireModule('modal')
    export default {
        methods: {
            move() {
                var testEl = this.$refs.test;
                animation.transition(testEl, {
                    styles: {
                        color: '#FF0000',
                        transform: 'translate(250px, 100px)',
                        transformOrigin: 'center center'
                    },
                    duration: 800,
                    timingFuction: 'ease',
                    needLayout: false,
                    delay: 0
                }, function () {
                    modal.toast({ message:'animation finished.' })
                })

            }
        }
    }
</script>

<style>
    .box {
        width: 250px;
        height: 250px;
        background-color: #ddd;
    }
</style>