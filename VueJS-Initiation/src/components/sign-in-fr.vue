<template>
<div class="box">
  <div class="banner_high">
    <img src="../assets/logo.svg" alt="">
  </div>
 
  <h1>Conectarse</h1>
 
  <div class="in">
      <label for="name">Correo electrónico</label>
    
      <div>  <input type="text" v-model="username" placeholder="E-mail"
           /><img v-if="username.length >= 4" src="../assets/ok.svg" alt=""></div>

  <div class="button_action">
    <button v-on:click="username = '@gmail.com' ">@gmail.com</button> 
    <button v-on:click="username = '@outlook.com' ">@outlook.com</button>
  </div>
  </div>

  <div class="in">
  <label for="name">Contraseña</label>
  <div>
      <input v-model="password" type="password" :name="string" placeholder="Ingrese su contraseña" required/><img v-if="password.length >= 8" src="../assets/ok.svg" alt="">
  </div>

  </div>

 
 
  <div class="check_bar">
    <div> <input type="checkbox" name="" id="">
    <label for="">Recordar</label></div>
   
    <a href="">Recordar contraseña </a>

  </div>


  <button class="log">
    Ingresar
    </button>
   

<span>¿No tienes cuenta aún? <a href="/signup"> Registrase</a> </span> 
</div>

</template>


<script>
export default {

  data() {
    return {
      password:"",
      userLoggedIn: false,
      username:"",    
      isActive: false,
    };
    
  },toggle() {
this.isActive = ! this.enable ;
},
};

</script>




