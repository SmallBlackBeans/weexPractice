<template>
    <div class='page'>
        <webView class='web' :src='url' ref='web' @pagestart='pagestart' @pagefinish='pagefinished' @error='error'></webView>
        <text class='pre-button' @click='clickPre'>上一页</text>
        <text class='refresh-button' @click='refresh'>刷新</text>
    </div>
</template>


<script>
    const webview = weex.requireModule('webview');
    const modal = weex.requireModule('modal');
    export default {
        data: {
            url: 'http://www.baidu.com',
            value: 'https://m.alibaba.com'
        },
        methods: {

            loadUrl(event) {
                this.uri = this.value
                modal.toast({message: 'load url:' + this.url})
            },
            setTimeout() {
                console.log('will go back')
                modal.toast({message: 'will go back'})
                webview.goBack(this.$refs.web)
            },

            clickPre() {
                webview.goBack(this.$refs.web)
            },
            refresh() {
                webview.reload(this.$refs.web)
            },
            pagestart(e) {
                console.log('pagestart')
            },
            pagefinished(e) {
                alert('加载完成')
            }
        }
    }

</script>


<style>

    .page {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .web {
        flex: 1;
        width: 750px;
    }

    .pre-button {
        width: 500px;
        height: 88px;
        border-radius: 44px;
        background-color: burlywood;
        color: white;
        text-align: center;
        line-height: 88px;
    }

    .refresh-button {
        width:500px;
        height: 88px;
        border-radius: 44px;
        background-color: indianred;
        color:white;
        text-align: center;
        line-height: 88px;
    }

</style>