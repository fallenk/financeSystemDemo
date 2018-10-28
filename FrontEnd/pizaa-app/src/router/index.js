import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/components/Home'
import Loan from '@/components/Loan'
import Store from '@/components/Store'
import Transfer from '@/components/Transfer'
import Financial from '@/components/Financial'
import ForgetPsw from '@/components/ForgetPsw'
import Exchange from '@/components/Exchange'
import Menu from '@/components/Menu'
import Admin from '@/components/Admin'
import About from '@/components/about/About'
import Login from '@/components/Login'
import Contact from '@/components/about/Contact'
import Credit from '@/components/about/Credit'
import Account from '@/components/about/Account'
import Setting from '@/components/about/Setting'
import Evaluate from '@/components/about/Evaluate'
import Delivery from '@/components/about/Delivery'
import History from '@/components/about/History'
import OrderingGuide from '@/components/about/OrderingGuide'
import Register from '@/components/Register'
import Phone from '@/components/about/contact/Phone'
import Personname from '@/components/about/contact/Personname'
import BuyExchange from '@/components/exchange/BuyExchange'
import AddCard from '@/components/about/credit/AddCard'
import CurrentFixed from '@/components/store/CurrentFixed'
Vue.use(Router)

const router = new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      //component: Home
      components:{
        default:Home,
        'orderingGuide':OrderingGuide,
        'delivery':Delivery,
        'history':History,
      }
    },
    {
      path: '/loan',
      name: 'loan',
      component: Loan 
    },
    {
      path: '/transfer',
      name: 'transfer',
      component: Transfer
    },
    {
      path: '/financial',
      name: 'financial',
      component: Financial
    },
    {
      path: '/exchange',
      name: 'exchange',
      component: Exchange
    },
    // 外汇购买路由路径
    {
      path:'/buyExchange',
      name:'buyExchange',
      component:BuyExchange
    },
    {
      path: '/store',
      name: 'store',
      component: Store,
      // beforeEnter:(to,from,next)=>{
        //路由独享守卫
        // alert("非登陆状态不可以访问！");
        // next();
      // }
    },
    {
      path: '/currentFixed',
      name: 'currentFixed',
      component: CurrentFixed
      // beforeEnter:(to,from,next)=>{
        //路由独享守卫
        // alert("非登陆状态不可以访问！");
        // next();
      // }
    },
    {
      path: '/about',
      name: 'about',
      redirect: '/about/credit',
      component: About,children:[
        {
          path: '/about/credit',
          name: 'credit',
          redirect:'/Phone',
          component: Credit,children:[
            {
              path: '/Phone',
              name: 'phoneLink',
              component: Phone
            },
            {
               path: '/Personname',
               name: 'personnameLink',
               component: Personname
            }
          ]
        },
        {
           path: '/account',
           name: 'account',
           component: Account
        },
        {
           path: '/setting',
           name: 'setting',
           component: Setting
        },
        {
           path: '/evaluate',
           name: 'evaluate',
           component: Evaluate
        },
        {
          path: '/addCard',
          name: 'addCard',
          component: AddCard
        }
        ]
    },
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/register',
      name: 'register',
      component: Register
    },
    {
      path: '/forgetpsw',
      name: 'forgetpsw',
      component: ForgetPsw
    },
    {
      path:'*',
      name:'default',
      redirect:'/'
    }
  ],
  mode:"history",
  scrollBehavior(to,from,savedPosition){
         // return {x:0,y:100} 
         //return {selector:'.btn'}
         if(savedPosition){
          return savedPosition
         }else{
          return {x:0,y:0}
         }
        }
})
//全局守卫
// router.beforeEach((to,from,next
//   )=>{
//   //alert("还没登陆，请先登录！");
//   //判断store.gettes.isLogin === false
//   if(to.path == '/login' || to.path == '/register' || to.path == '/forgetpsw'){
//     next();
//   }else{
//     alert("还没有登录，请先登陆");
//     next('/login');
//   }
// })

//后置钩子
// router.afterEach((to,form)=>{
//   alert("after each")
// })


export default router;