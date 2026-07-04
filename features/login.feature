# language: es
Característica: Inicio de sesión
  Como usuario del sistema
  Quiero iniciar sesión con mis credenciales
  Para acceder a mi cuenta

  Escenario: Inicio de sesión exitoso
    Dado que el usuario está en la página de login
    Cuando ingresa credenciales válidas
    Entonces debería ver la página principal

  Escenario: Inicio de sesión fallido
    Dado que el usuario está en la página de login
    Cuando ingresa credenciales inválidas
    Entonces debería ver un mensaje de error
