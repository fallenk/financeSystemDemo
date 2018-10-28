<template> 
        <form class="form-horizontal offset-sm-2 offset-lg-2 col-sm-8" >
            <div class="form-group has-feedback offset-sm-2" style="padding-top: 50px;">
                <div class="username">
                   <!-- 给input加图标 -->

                    <input type="text" class="form-control col-sm-10" id="inputPassword" placeholder="用户名">
                </div>
            </div>
            <div class="form-group pwd-top has-feedback offset-sm-2">
                <div class="password">
                      <!-- 给input加图标 -->

                    <input type="password" class="form-control col-sm-10" id="inputPassword" placeholder="密码">
                </div>
            </div>
            <div class="form-group offset-sm-2">

                <div class="checkbox  col-sm-4 col-md-4 col-lg-4">
                    <label>
                        <input type="checkbox"> 记住密码
                    </label>    
                </div>
                <label for="" class="col-sm-4 col-md-4 col-lg-4 control-label forget-pass">
                  <router-link to="/forgetpsw">忘记密码</router-link></label>  
                <label for="" class="offset-sm-3 col-sm-4 col-md-4 col-lg-4 control-label register">
                    <router-link to="/register">注册</router-link></label>
            </div>
            <div class="form-group offset-sm-2">
                <button class="btn btn-login col-sm-10" style="text-align:center" type="submit">登&nbsp;录</button>
            </div>
        </form>
  
</template>


<style type="text/css">
    form{
        margin-top: 100px;
        height: 500px;
       background: url('../../src/assets/back.jpg');
       opacity: 0.6;
    }
    .for-center .username input,.form-center .password input{
        height: 50px;
        padding-left: 60px;
    }


    .form-control-feedback {
        line-height: 50px;
        left: 20px;
    } 
</style>