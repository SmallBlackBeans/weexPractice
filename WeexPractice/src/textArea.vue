
<!--1.pxlacehold 设置占位符,提醒用户应该输入什么内容,或者输入的规则,只能输入数字等等-->
<!--2.disabled 设置是否支持用户输入,设置为true-->
<!--3.autofocus进入页面是否自动获得焦点-->
<!--4.rows 组件允许显示的行数-->
<!--5.如何将数据和变量进行绑定-->
<!--6.慎用伪类,前方有坑-->
<!--7.高度和行数同时设置,会怎么样-->
<!--8.textarea事件检测-->


<template>
    <div>

        <textarea class="textarea" placeholder="请输入您的姓名" disabled='false' autofocus="true" rows='10' v-model='value'
                  @input='input' @focus='focus' @blur='blur'>
        </textarea>

    </div>
</template>


<script>
    export default {
        data: function () {
            return {
                value: '',
            }
        },
        methods: {
            input(e) {
                console.log(e)

            },
            focus(e) {
                console.log(e)
            },
            blur(e) {
                console.log(e)
            }
        }
    }

</script>


<style>
    /*伪类格式*/
    .textarea:disabled {
        background-color: lightgray;
    }

    .textarea:active {
        background-color: cornflowerblue;
    }

    .textarea:focus {
        background-color: green;
    }

    .textarea:enabled {
        background-color: palegoldenrod;
    }
</style>