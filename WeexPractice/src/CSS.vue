<template>
    <div class="wrapper">
        <div class="transform panel">
            <text class="title">Transformed element</text>
        </div>
    </div>
</template>
<style>

    .wrapper {

        background-image: linear-gradient(to top, #a80077,#66ff00);
    }

    .transform {
        align-items: center;
        transform: translate(150px,200px) rotate(20deg);
        transform-origin: 0 -250px;
        border-color:red;
        border-width:2px;
    }
    .title {font-size: 48px;}


    .panel {
        margin:10px;
        top: 10px;
        align-items: center;
        justify-content: center;
        border:dashed;
        border-radius: 10px;
        transition-delay: 0s;
        transition-duration: 0.3s;
        transition-property: width, height, backgroundColor;
        transition-timing-function: cubic-bezier(0.25,0.1,0.25,1.0);
    }
</style>
