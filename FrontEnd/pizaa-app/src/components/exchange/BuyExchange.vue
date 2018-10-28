<template>
    <h1>{{total}}</h1>
</template>
<script type="text/javascript">
   
    export default{
        data(){
            return{
                total:0
            }
        },
     
           mounted(){
            // this.$on("getTotal",function(msg){
            //     console.log("jjj")
            //     //this.total = msg
            // })
            this.total = this.$route.query.total
            console.log("hhh")
            } 
        
        
    }
</script>