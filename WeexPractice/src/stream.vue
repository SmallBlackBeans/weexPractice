<template>

    <div class="wrapper">
        <div class="group">
            <text class="title">
                Weex start:
            </text>
            <text class="count">
                {{ weexStar }}
            </text>
        </div>
        <div class="group">
            <text class="title">
                Vue start:
            </text>
            <text class="count">
                {{ vueStar }}
            </text>
        </div>
    </div>

</template>


<script>
    var stream = weex.requireModule('stream')
    export default {
        data() {
            return {
                weexStar: '0',
                vueStar: '0',
            }
        },
        methods: {
            getStarCount(repo, callback) {
                return stream.fetch({
                    url: 'https://api.github.com/repos/' + repo,
                    type: 'json',
                    method: 'GET'
                }, callback)
            }
        },
        created() {
            this.getStarCount('alibaba/weex', res => {
                this.weexStar = res.ok ? res.data.stargazers_count : '(network error)'
            })
            this.getStarCount('vuejs/vue', res => {
                this.vueStar = res.ok ? res.data.stargazers_count : '(network error)'
            })
        },

    }
</script>

<style scoped>
    .wrapper {
        flex-direction: column;
        justify-content: center;
    }

    .group {
        flex-direction: row;
        justify-content: center;
        margin-bottom: 40px;
    }

    .title {
        font-size: 45px;
        color: #888888;
    }

    .count {
        font-size: 45px;
        font-weight: bold;
        margin-left: 12px;
        color: #41B883;
    }
</style>