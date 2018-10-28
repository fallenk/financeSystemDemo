<template> 
        <form class="form-horizontal offset-sm-2 offset-lg-2 col-sm-8 ">
            <div class="form-group has-feedback offset-sm-2" style="padding-top: 50px;">
               
                <div class="username input-group">
                   <!-- 给input加图标 -->
                     <!-- <span class="input-group-text col-sm-2" >user</span> -->
                    <input type="text" class="form-control col-sm-10"  placeholder="用户名">
                </div>
            </div>
            <div class="form-group pwd-top has-feedback offset-sm-2">
                <div class="password input-group">
                      <!-- 给input加图标 -->
                      <!-- <span class="input-group-text col-sm-2" >phone</span> -->
                    <input type="password" class="form-control col-sm-10"  placeholder="手机号">
                </div>
            </div>
            <div class="form-group pwd-top has-feedback offset-sm-2">
                <div class="password input-group">
                      <!-- 给input加图标 -->
                      <!-- <span class="input-group-text col-sm-2" >password</span> -->
                    <input type="password" class="form-control col-sm-10"  placeholder="密码">
                </div>
            </div>
            <div class="form-group pwd-top has-feedback offset-sm-2">
                <div class="password input-group">
                      <!-- 给input加图标 -->
                       <!-- <span class="input-group-text col-sm-2" >password</span> -->
                    <input type="password" class="form-control col-sm-10"  placeholder="确认密码">
                </div>
            </div>
            <div class="form-group pwd-top has-feedback offset-sm-2">
                <div class="password input-group">
                      <!-- 给input加图标 -->

                    <input type="password" class="form-control col-sm-7 " placeholder="验证码">
                    <button class="btn-primary offset-sm-1 col-sm-2">获取</button>
                    
                </div>
            </div>
            
            <div class="form-group offset-sm-2">
                <button class="btn btn-login col-sm-10" style="text-align:center" v-on:click="goLogin">注&nbsp;册</button>
            </div>
        </form>
  
</template>
<script type="text/javascript">
    export default{
        methods:{
            goLogin(){
                //传输注册的数据到后台

                //判断传输是否成功

                //如果成功，跳转到登录的界面
                if(true){
                    this.$router.push('/login');
                }
                else{
                    alert("注册失败");
                }

            }
        }
    }
</script>

<style type="text/css">
    form{
        margin-top: 100px;
        height: 500px;
       background: url('../../src/assets/back.jpg');
    }
    .for-center .username input,.form-center .password input{
        height: 50px;
        padding-left: 60px;
    }


    .form-control-feedback {
        line-height: 50px;
        left: 20px;
    } 
    .user{
         background: url('../../src/assets/user.jpg');
    }
</style>