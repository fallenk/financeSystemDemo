<template>
  <div id="app" class="bg-light">
    <div class="container">
       <app-header></app-header>
    </div>
     <div class="container bg-light">
       <router-view></router-view>
     </div>
    <br>
    <!-- <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <router-view name="orderingGuide"></router-view>
        </div>
        <div class="col-sm-12 col-md-4">
          <router-view name="delivery"></router-view>
        </div>
        <div class="col-sm-12 col-md-4">
          <router-view name="history"></router-view>
        </div>
      </div>
    </div> -->
    <div class="container">
      <app-footer></app-footer>
    </div>
  </div>
</template>

<script>
  import Header from './components/Header'
  import Footer from './components/Footer'
export default {
  name: 'App',
  components:{
    "app-header":Header,
    "app-footer":Footer
  }
}
</script>

<style>

</style>
