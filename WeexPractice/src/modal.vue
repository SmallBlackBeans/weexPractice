<template>

    <div class="wrapper">
        <text class="button" @click="showToast">showToast</text>
        <text class="button" @click="showAlert">showAlert</text>
        <text class="button" @click="showConfirm">showConfirm</text>
        <text class="button" @click="showPrompt">showPrompt</text>
    </div>
</template>


<script>
    const modal = weex.requireModule('modal');
    export default {
        data() {
            return {}
        },
        methods: {
            showToast(event) {
                modal.toast({
                    message: 'this is a toast',
                    duration: 0.8
                })
            },
            showAlert(envet) {
                modal.alert({
                    message: 'this is a alert',
                    duration: 0.9
                }, function (value) {
                    console.log('alert callback' + value)
                })
            },
            showConfirm(event) {
                modal.confirm({
                    message: 'this is a confirm',
                    duration: 0.9
                }, function (value) {
                    console.log('confirm callback' + value)
                })
            },
            showPrompt(evnet) {
                modal.prompt({
                    message: 'this is a prompt',
                    duration: 0.9
                }, function (value) {
                    console.log('prompt callback' + value)
                })
            }
        }
    }
</script>


<style>
    .wrapper {
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .button {
        border-color: #afddff;
        border-width: 2px;
        border-radius: 3px;
        border-style: solid;

        margin-top: 20px;
        margin-bottom: 20px;

        padding-top: 20px;
        padding-bottom: 20px;

        width: 400px;
        height: 80px;

        color: #afddff;
        text-align: center;

    }
</style>