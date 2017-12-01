<template>

    <div class="list">
        <div class="group center">
            <div class="panel">
                <text class="text">{{ result }}</text>
            </div>
        </div>
        <div class="group">
            <div class="panel">
                <text class="button" @click="setValueForKey">set</text>
            </div>
            <div class="panel">
                <text class="button" @click="getByKey">get</text>
            </div>
            <div class="panel">
                <text class="button" @click="deleteValue">remove</text>
            </div>
            <div class="panel">
                <text class="button" @click="getLength">length</text>
            </div>
        </div>

    </div>

</template>


<script>
    var storage = weex.requireModule('storage');
    var modal = weex.requireModule('modal');
    export default {
        data() {
            return {
                result: '---'
            }
        },
        methods: {
            setValueForKey() {
                storage.setItem('key', 'hanxiaocu', function (e) {
                    if (e.result === 'success')
                        this.result = e.data
                    else
                        modal.toast({message: 'faild'})
                })
            },
            getByKey() {

            },
            deleteValue() {

            },
            getLength() {

            }

        }
    }
</script>

<style>

    .list {
        flex-direction: column;
        align-items: center;
    }

    .group {
        flex-direction: row;
        justify-content: space-between;

        width: 650px;
        margin-top: 50px;
        margin-bottom: 50px;
        margin-left: 50px;
    }


    .center {
        justify-content: center;
    }

    .text {
        font-size: 50px;
        text-align: center;
        padding-left: 25px;
        padding-right: 25px;
        color: #41b883;
    }

    .panel {
        height: 100px;
        flex-direction: column;
        justify-content: center;
        border-width: 2px;
        border-color: burlywood;
        border-radius: 5px;
        border-style: solid;
    }
</style>