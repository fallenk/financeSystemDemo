<template>
    <div class="store bg-light">
        <!-- <h1>个人存储</h1> -->
        <!-- 用来绘制图像 -->
        <div>
            <h5>存款利率</h5>
            <hr size=70 style="COLOR:#ff9999;border-style:double;width:490;">
            <canvas id="myChart2" width="600px" height="200px" style="margin-top:30px;"></canvas>
        </div>
        <!-- 显示存款业务的类型 -->
        <h5 style="margin-top: 30px;">存款</h5>
        <hr size=7 style="COLOR:#ff9999;border-style:double;width:490;">
        <div class="row">
            
            <!-- 第一列 -->
            <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">中银E财账户、E捷账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人智能通存款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">个人外汇储蓄账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">整存整取</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">爱心理财成长账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">存款挂失服务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人预约转账</a>  
                    </router-link>
                </div>
           </div>
           <!-- 第二列 -->
           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">个人大额存单</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人联名账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">活期一本通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">存本取息</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">教育储蓄</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">代理海外开户见证</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">储蓄存款异地托收</a>  
                    </router-link>
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">中国银行(加拿大)GIC存款证</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人人民币银行结算账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">定期一本通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'currentFixed'}">
                        <a class="list-group-item list-group-item-action">定活两便</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">开立外币携带证服务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人定期到期约定转存</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">“扶贫月捐”</a>  
                    </router-link>
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">主办账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人外汇结算账户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">礼仪存单、礼仪存折</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">整存整取（定期一本通/定期存单）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">通知存款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">存款证明服务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人约定转账</a>  
                    </router-link>
                </div>
           </div>
        </div>
    </div>  
</template>
<script type="text/javascript">
    import Chart from 'chart.js';
    export default{
        components: {

        },
        data() {
            return {

            }
        },
        mounted() {
            var ctx2 = document.getElementById("myChart2");

            var myChart2 = new Chart(ctx2, {
                type: "line",
                data: {
                    labels: ["活期存款", "三个月(整存整取)", "六个月(整存整取)", "一年(整存整取)", "两年(整存整取)", "三年(整存整取)", "五年(整存整取)", "一年(整存零取)", "三年(整存零取)", "五年(整存零取)", "协定存款", "一天(通知存款)","七天(通知存款)"],
                    datasets: [
                    {
                        label: "存款利率(%)",
                        backgroundColor: "rgba(225,10,10,0.3)",
                        borderColor: "rgba(225,103,110,1)",
                        borderWidth: 1,
                        pointStrokeColor: "#fff",
                        pointStyle: "crossRot",
                        data: [0.30, 1.35, 1.55, 1.75, 2.25, 2.75, 2.75, 1.35, 1.55, 1.55, 1.00, 0.55,1.10],
                        cubicInterpolationMode: "monotone",
                        spanGaps: "true",
                        fill: "false"
                    }
                    ]
                },
                options: {

                }

            });
        },
        methods: {

        }
    }
</script>
<style>
.store {
    
}
a{
    
    height: 80px;
}
</style>
