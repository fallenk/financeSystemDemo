<template>
   <div class="loan">
        <div>
            <h5>贷款利率</h5>
             <hr size=70 style="COLOR:#ff9999;border-style:double;width:490;">
            <canvas id="myChart2" width="600px" height="200px" style="margin-top:30px;"></canvas>
        </div>

         <!-- 显示贷款业务的类型 -->
        <h5 style="margin-top: 30px;">贷款</h5>
        <hr size=7 style="COLOR:#ff9999;border-style:double;width:490;">
        <div class="row">
            
            <!-- 第一列 -->
            <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">理想之家•个人留学贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">益农贷-个人涉农贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">个人住房公积金贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">“安心宝”二手房交易资金委托监管业务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">商业性教育助学贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人存单质押贷款</a>  
                    </router-link>
                </div>
           </div>
           <!-- 第二列 -->
           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">中银E贷（个人网络消费贷款）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">理想之家·双享贷</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">个人一手房住房贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人消费类汽车贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人信用循环贷款（一般只对VIP客户）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">国债质押贷款</a>  
                    </router-link>
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">个人网络循环贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人理财产品融资便利贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">个人二手住房贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人营运类汽车贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人投资经营贷款</a>  
                    </router-link>
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">工薪贷-企事业员工的专属贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">个人商业用房贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">“安易宝”二手房交易资金委托管理业务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">国家助学贷款</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人抵（质）押循环贷款</a>  
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
                    labels: ["一年以内（含一年）", "一至五年（含五年）", "五年以上"],
                    datasets: [
                    {
                        label: "贷款利率(%)",
                        backgroundColor: "rgba(225,10,10,0.3)",
                        borderColor: "rgba(225,103,110,1)",
                        borderWidth: 1,
                        pointStrokeColor: "#fff",
                        pointStyle: "crossRot",
                        data: [4.35 , 4.75, 4.90],
                        cubicInterpolationMode: "monotone",
                        spanGaps: "false",
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
    
    height: 200px;
}
a{
    
    height: 80px;
}
</style>
</template>