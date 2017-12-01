<template>
    <div class="wrapper">
        <text class="button" @click="jump">Jump</text>
    </div>
</template>


<script>
    var navigator = weex.requireModule('navigator');
    var modal = weex.requireModule('modal');

    export default {
        data() {
            return {}
        },
        methods: {
            jump() {
                navigator.push({
                    url: 'http://dotwe.org/raw/dist/519962541fcf6acd911986357ad9c2ed.js',
                    animated: 'true'
                }, function (event) {
                    modal.toast({
                        message: 'push completed' + event,
                        duration: 0.8
                    })
                })
            }
        }

    }
</script>

<style>
.wrapper {
    flex-direction: column;
    justify-content: center;
}
    .button {
        border-style: solid;
        border-width: 2px;
        border-color: #afddff;
        border-radius: 3px;

        text-align: center;
        color: teal;
        font-size: 40px;

        width:450px;

        padding-bottom: 20px;
        padding-top: 20px;

        margin-bottom: 20px;
        margin-top: 20px;
        background-color: burlywood;
    }
</style>