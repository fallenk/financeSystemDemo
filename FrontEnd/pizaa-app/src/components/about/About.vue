<template>
   <div>
       <div class="row mb-5">
           <div class="col-4">
                <!-- 导航 -->
                <div class="list-group mb-5">
                    <router-link tag="li" class="nav-link" :to="{name:'credit'}">
                        <a class="list-group-item list-group-item-action">银行卡</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'account'}">
                        <a class="list-group-item list-group-item-action">账单</a>  
                    </router-link>

                    <router-link tag="li" class="nav-link" :to="{name:'setting'}">
                        <a class="list-group-item list-group-item-action">设置</a>  
                    </router-link>
                    <router-link tag="li" class="nav-link" :to="{name:'evaluate'}">
                        <a class="list-group-item list-group-item-action">评价</a>  
                    </router-link>
                </div>
           </div>
           <div class="col-8">
               <!-- 导航所对应的内容 -->
               <router-view></router-view>
           </div>
       </div>
   </div>
</template>