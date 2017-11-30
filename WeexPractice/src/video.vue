<!--唯一合法的子标签 <text>-->
<template>

    <div>
        <video class='video'  src='http://flv2.bn.netease.com/videolib3/1611/01/XGqSL5981/SD/XGqSL5981-mobile.mp4' play-status='pause' @start='onstart' @pause='onpause' @finish='onfinish' @fail='onfail' controls='controls'></video>
        <!--<video class='video'  :src='src' play-status='pause' @start='onstart' @pause='onpausepause' @finish='onfinish' @fail='onfail' controls='controls'></video>-->
        <!--<video class='video' :src='src' play-status='pause' @start='onstart' @pause='onpause' @finish='onfinish' @fail='onfail'controls></video>-->
        <text class='info'>state: {{ state }}</text>
    </div>


</template>


<script>

    export default {
        data() {
            return {
                state: 'loding...',
                src: 'http://flv2.bn.netease.com/videolib3/1611/01/XGqSL5981/SD/XGqSL5981-mobile.mp4',
            }
        },
        methods: {
            onstart(e) {
                this.state = 'start'
            },
            onpause(e) {
                this.state = 'pause'
            },
            onfinish(e) {
                this.state = 'finish'
            }
        },
    }
</script>

<style scoped>

    .video {
        width: 630px;
        height: 350px;
        margin-top: 60px;
        margin-left: 60px;
    }
    .info {
        margin-top: 40px;
        font-size: 40px;
        text-align: center;
        color: black;
    }

</style>