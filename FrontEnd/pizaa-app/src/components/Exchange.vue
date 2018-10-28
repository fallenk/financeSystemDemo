<template>
    <div>
        <!-- 显示基本汇率表-->
        <div>
             <!-- 显示基本汇率 -->
            <h5 style="margin-top: 30px;">基本汇率</h5>
            <hr size=7 style="COLOR:#ff9999;border-style:double;width:490;">
            <!-- 基本表 -->
            <div class="">
                <div class="list-group">
                    <table class="border" style="">
                        <thead>
                            <tr>
                                <th>币种</th>
                                <th>代码</th>
                                <th>现价</th>
                                <th>涨跌</th>
                                <th>涨幅</th>
                                <th>开盘</th>
                                <th>最高</th>
                                <th>最低</th>
                                <th>买价/卖价</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{name}}
                            <!-- 遍历输出具体值 -->
                            <tr v-for="exchange in exchanges">
                                <td height="40px">{{exchange.currency}}</td>
                                <td>{{exchange.codes}}</td>
                                <td class="text-danger">{{exchange.price}}</td>
                                <td class="text-danger">{{exchange.updown}}</td>
                                <td class="text-danger">{{exchange.up}}</td>
                                <td class="text-danger">{{exchange.open}}</td>
                                <td class="text-danger">{{exchange.highest}}</td>
                                <td class="text-danger">{{exchange.lowest}}</td>
                                <td class="text-danger">{{exchange.rate}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- 用来显示一些提示信息以及换取外币 -->
        <div class="row">
            <!-- 用来展示提示信息 -->
            <div class="col-7" style="padding-top: 50px;">
                <div class="list-group">
                   <h2> <a href="#" class="text-danger">人民币中间价上调298点 连续第七天调升</a></h2>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;人民币兑美元中间价上调298点，报6.5370。
                    </p>
                    <h5><a href="#" class="text-danger">港元短期与中长期拆息走势出现分化</a></h5>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;中证网讯(记者倪伟)26日，港元短期与中长期拆息走势出现分化。其中，
                        与楼市按揭贷款相关的1个月拆息连续4日下跌。数据显示，港元1个。
                    </p>
                    <h5><a href="#" class="text-danger">逼近“7”时代：离岸人民币汇率跌破6.97 创2017年年初以来最低值</a></h5>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;10月26日早盘，人民币兑美元进一步贬值。其中人民币对美元汇率中间价报6.9510，
                        较前一交易日下跌101个基点，在岸、离岸人民币兑美元。
                    </p>
                    <h5><a href="#" class="text-danger">德拉基又要登场、意大利遭评级考验 欧元能否安然无恙</a></h5>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;周五(10月26日)亚市盘中，美元继续保持涨势，亚太股市未能延续隔
                        夜美股涨势转向下跌，美股期货盘中下滑，市场避险情绪再次升温。
                    </p>
                </div>
            </div>
            <!-- 用来显示换算 -->
             <div class="offset-sm-1 col-3" style="margin-top: 50px;background-color: #ffffff">
                <div class="list-group">
                   <h5 class="text-success">换算计算器</h5>
                   <hr size=7 style="COLOR:#ff9999;border-style:double;width:490;">
                   <table>
                       <thead>
                           <th>
                               <tr style="font-size: 10px;">
                                    我想买入的外币
                               </tr>
                           </th>
                       </thead>
                       <tbody>
                           <tr style="margin-top: 20px;">
                                <td><input type="text" name="" v-model="number" placeholder="输入数字"></td>
                                <td>
                                    <select v-model="selected">
                                        <option v-for="coin in coins" v-bind:value="coin.parities">{{coin.name}}({{coin.coincode}}) </option>
                                    </select>
                                </td>
                           </tr>
                           <tr>
                                <td style="font-size: 15px;">当前的汇率</td>
                           </tr>
                           <tr>
                                <td style=""><input type="text" name="" v-bind:value="selected"></td>
                                <td style="font-size: 10px;">银行的卖出价</td>
                           </tr>
                           <tr>
                                <td>&nbsp;</td>
                           </tr>
                           <tr style="padding-top: 30px;">
                                <td><button v-on:click="cal" class="btn-success">开始计算</button></td>
                                <td><button v-on:click="buy" class="btn-danger">购买</button></td>
                           </tr>
                       </tbody>
                   </table>
                   <div style="padding-top: 60px;">
                        <div style="padding-top: 30px;height: 150px;width: 280px;" class="bg-dark">
                            <p>总共需要人民币：</p>
                            <p><h2>{{total}}元</h2></p>
                        </div>
                       
                   </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script type="text/javascript">
    export default{
       // 存储数据
        data(){
            return{
                // 交易数据
                exchanges:[
                    {currency:'欧元/美元',codes:"EURUSD",price:"1.1401",updown:"0.0026",up:"0.2286% ",open:"1.1371",highest:"1.1420",
                    lowest:"1.1332",rate:"1.1401/1.1405"},
                    {currency:' 美元/新加坡元 ',codes:"USDSGD ",price:"1.3834 ",updown:"0.0029",up:"0.2101%   ",open:"1.3808",highest:"1.3848 ",lowest:"1.3794",rate:"1.3834/1.3839"} ,
                    {currency:'美元/人民币(离)',codes:"USDCNH ",price:"1.1401",updown:"0.0026",up:"0.2286% ",open:"1.1371",highest:"1.1420",
                    lowest:"1.1332",rate:"1.1401/1.1405"} ,
                    {currency:'美元/人民币',codes:"USDCNY ",price:"1.1401",updown:"0.0026",up:"0.2286% ",open:"1.1371",highest:"1.1420",
                    lowest:"1.1332",rate:"1.1401/1.1405"},
                    {currency:'美元指数 ',codes:"USDIND ",price:"1.1401",updown:"0.0026",up:"0.2286% ",open:"1.1371",highest:"1.1420",
                    lowest:"1.1332",rate:"1.1401/1.1405"} ,
                    {currency:'美元/瑞郎 ',codes:"USDCHF ",price:"1.1401",updown:"0.0026",up:"0.2286% ",open:"1.1371",highest:"1.1420",
                    lowest:"1.1332",rate:"1.1401/1.1405"} ,
                    {currency:'黄金/美元',codes:"XAUUSD",price:"1232.4600 ",updown:"0.7000",up:"0.0365%",open:"1232.0601",highest:"1233.1600 ",
                    lowest:"1229.3800 ",rate:"1232.4600/1232.5800"},
                     {currency:'美元/港币',codes:"USDHKD",price:"7.8405",updown:"0.0005 ",up:"0.0089%",open:"7.8401",highest:"7.8408 ",
                    lowest:"7.8395",rate:"7.8405/7.8410"} 
                ],
                //后台传过来的
                coins:[{name:'美元',coincode:'USD',parities:697.4900},{name:'英镑',coincode:'GBP',parities:895.4200}],
                selected:697.4900,
                total:0,
                number:'',
            } 

        },
        methods:{
            // 计算购买所需要的人民币
            cal(){
                //total = int(selected) * int(this.$ref.input.value),
                //console.log(this.number)
                this.total = (this.number) * (this.selected)
            },
            // 进行外汇的购买,页面跳转到购买界面
            buy(){
                //this.$emit('getTotal',this.total),
                // this.$router.push({{path:'/buyExchange'},query:{total:this.total}})
                this.$router.push({path: '/buyExchange',  query: {total:this.total}})
           }     
    }
}
</script>
<style type="text/css">
    .textColor{

    }
</style>