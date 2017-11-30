<template>
    <div class="wrap">
        <switch class="switch" checked="false"></switch>
        <switch class="switch" checked="true"></switch>
        <switch class="switch" checked="false" disabled=true></switch>
        <switch class="switch" checked="true" disabled=false  @change="change"></switch>
    </div>
</template>

<script>
    var count = 0;
    export default {
        data() {

        },
        methods: {
            change(event) {
                count ++;
                console.info("nihao"+ count)
                console.log(event.value)
            }
        },
    }

</script>


<style>
    .switch {
        border-radius: 5px;
        background-color: red;
    }

    .wrap {
        display: flex;
        flex-direction: column;
    }


</style>