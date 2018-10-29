<template>
    <div class="card text-dark bg-light mb-3 col-sm-7 offset-sm-2">
        <div class="card-header">
            我的银行卡
        </div>
       <!--  <div class="card-body">
            <h4 class="card-title">联系我们</h4>
            <p class="card-text">1621321614@qq.com</p>
            <router-link :to="{name:'phoneLink'}">电话</router-link>
            <router-link :to="{name:'personnameLink'}">联系人</router-link>
            <router-view></router-view>
        </div> -->
        <!-- 遍历用户所拥有的每张银行卡 -->
        <div>
            <div class="card-text" v-for="card in cards" v-on:click="getCardInfo">
                <!-- 判断卡的类型。从而显示不同的背景 -->
                <div v-if="card.name == '中国工商银行'">
                    <div style="margin-top: 15px;padding-left: 10px;width: 300px;" class="icbc">
                        <h5>{{card.name}}</h5>
                        <p style="font-size: 10px;">{{card.cardtype}}</p>
                        <p style="font-size: 1-px;">****&nbsp;&nbsp;****&nbsp;&nbsp;****&nbsp;&nbsp;{{card.cardnumber}}</p>
                    </div>
                </div>
                <div v-else-if="card.name == '中国建设银行'">
                    <div style="padding-top: 15px;padding-left: 10px;width: 300px;" class="js">
                        <h5>{{card.name}}</h5>
                        <p style="font-size: 10px;">{{card.cardtype}}</p>
                        <p style="font-size: 1-px;">****&nbsp;&nbsp;****&nbsp;&nbsp;****&nbsp;&nbsp;{{card.cardnumber}}</p>
                    </div>
                </div>
            </div>
            <!-- 显示添加银行卡 -->
            <div>
                <div class="add" style="width: 300px;height: 80px" v-on:click="addCard"> 

                </div>
            </div>
        </div>
        
    </div>
</template>
<script type="text/javascript">
    export default{
        data(){
            return{
                cards:[{name:"中国工商银行",cardtype:"储蓄卡",cardnumber:"2129"},
                        {name:"中国工商银行",cardtype:"储蓄卡",cardnumber:"1234"},
                        {name:"中国建设银行",cardtype:"储蓄卡",cardnumber:"5890"}]
            }
        },
        methods:{
            // 获取银行卡信息
            getCardInfo(){
                alert("haha")
            },
            // 添加银行卡
            addCard(){
                this.$router.push('/addCard')
            }
        }
    }
</script>
<style type="text/css">
    .icbc{
        background: url('../../../src/assets/ICBC.jpg');
        opacity: 0.7;

    }
    .js{
        background: url('../../../src/assets/JS.jpg');
        opacity: 0.7;
    }
    .add{
       background: url('../../../src/assets/ADD.jpg');
       opacity: 0.7; 
       margin-bottom: 10px;
    }
</style>