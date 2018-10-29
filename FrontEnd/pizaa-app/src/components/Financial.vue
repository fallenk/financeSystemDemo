<template>
    <div>
        <!-- 用来显示一些理财利率的数据图像,获取 -->
        <div>
        </div>
        <!-- 显示理财的类型 -->
        
         <!-- 显示贷款业务的类型 -->
        <h5 style="margin-top: 30px;">理财</h5>
        <hr size=7 style="COLOR:#ff9999;border-style:double;width:490;">
        <div class="row">
            
            <!-- 第一列 -->
            <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">中银慧投</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">中银国际证券开户</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">中银基智通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">贵金属代理交易</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">银期转账</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银债富</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银日积月累.月计划</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">指标钩挂理财系列</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">“中银成长组合”人民币理财产品</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银精选基金理财计划</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银理财计划（人民币系列）</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">汇聚宝（外币理财产品）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">两得宝（卖出外汇及贵金属期权）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">开放式基金投资业务</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">储蓄国债（电子式）</a>  
                    </router-link>
                </div>
           </div>
           <!-- 第二列 -->
           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">原油宝（个人账户原油业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">中银货币增值理财计划-信利通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">中银基智通理财计划-优利系列</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人期权客户端</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">第三方存管</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银稳富</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银平稳理财计划</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银理财计划之中银资产支持理财计划(人民币)</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">自动滚续</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银进取”理财计划</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">保险超市</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">期金宝（个人买入黄金期权业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">搏·弈理财 (人民币理财产品)</a>  
                    </router-link>
                   <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">定期定额</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">储蓄国债（凭证式）</a>  
                    </router-link> 
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">原油宝（个人账户原油业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">中银货币增值理财计划-信利通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">中银基智通理财计划-优利系列</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人期权客户端</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">第三方存管</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银稳富</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银平稳理财计划</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银理财计划之中银资产支持理财计划(人民币)</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">自动滚续</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银进取”理财计划</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">保险超市</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">期金宝（个人买入黄金期权业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">搏·弈理财 (人民币理财产品)</a>  
                    </router-link>
                   <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">定期定额</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">储蓄国债（凭证式）</a>  
                    </router-link> 
                </div>
           </div>

           <div class="col-3">
                <!--  -->
                <div class="list-group ">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">原油宝（个人账户原油业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">中银货币增值理财计划-信利通</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">中银基智通理财计划-优利系列</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">个人期权客户端</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">第三方存管</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银稳富</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银平稳理财计划</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银理财计划之中银资产支持理财计划(人民币)</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">自动滚续</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">中银进取”理财计划</a>  
                    </router-link>
                     <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">保险超市</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">期金宝（个人买入黄金期权业务）</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">搏·弈理财 (人民币理财产品)</a>  
                    </router-link>
                   <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">定期定额</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">储蓄国债（凭证式）</a>  
                    </router-link> 
                </div>
           </div>
        </div>
    </div>
</template>

