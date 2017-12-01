<template>
    <div class='wrapper'>
        <div class="div">
            <text class="text" @click="onItemClick">
                {{message}}
            </text>
        </div>
        <div class="div">
            <text class="text" @click="setContent">
                click to copy: {{tobecopied}}
            </text>
        </div>
    </div>
</template>


<script>
    const clipboard = weex.requireModule('clipboard')
    export default {
        data() {
            return {
                tobecopied: 'yay!',
                message: 'nothing'
            }
        },
        methods: {
            setContent() {
                clipboard.setString(this.tobecopied)
            },
            onItemClick() {
                this.message = 'clicked!'
                clipboard.getString(ret => {
                    this.message = 'text from clipboard:' + ret.data
                })
            }
        }
    }
</script>


<style>
    .div {
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        width: 750px;
        height: 90px;
        padding-left: 30px;
        padding-right: 30px;

        border-bottom-width: 1px;
        border-style: solid;
        border-color: #DDD;
    }

    .text {
        width: 750px;
        height: 90px;
    }


</style>