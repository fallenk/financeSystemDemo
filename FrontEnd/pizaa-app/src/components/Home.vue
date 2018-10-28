<template>
    <div id="home" class="row">
        <!-- 轮播展示 -->
       <div id="demo" class="carousel slide" data-ride="carousel">
            <!-- 指示符 -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- 轮播图片 -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                </div>
                <div class="carousel-item ">
                    <img src="http://static.runoob.com/images/mix/img_nature_wide.jpg">
                </div>
                <div class="carousel-item">
                     <img src="http://static.runoob.com/images/mix/img_mountains_wide.jpg">
                </div>
             </div>

             <!-- 左右切换按钮 -->
             <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
             </a>
             <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
             </a>
        </div>  
        <div class="row">
        </div> 
    </div>
</template>
<script>
    export default{
        methods:{
            goToMenu(){
            //跳转到上次浏览的页面
            //this.$router.go(-1)
            //跳转到指定页面
            //this.$router.replace('/menu')
            //跳转都指定路由的名字下
            //this.$router.replace({name:'Menu'})
            //通过push进行跳转
            //this.$router.push('/menu')
            this.$router.push({name:'Menu'})
        }
    }
}
</script>
<style type="text/css">
#home{
    /*background: url('../../src/assets/mainBack.jpg');*/
    height: 85vh;
    width: 100%;
    padding-top: 3%;
    padding-left: 6%;
    /*margin-top: 50px;*/
    
}
.carousel-inner img {
  width: 100%;
  height: 100%;
}
h1,h2{
    margin: 6%;
}
.background{
    background: #eee;
    opacity: 0.8;
    max-width: 70vw;
    margin: 0 auto;
    padding: 20px 0; 
}
</style>