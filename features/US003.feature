Feature: US003 Login de Usuario
  Como usuario registrado, quiero iniciar sesion con mis credenciales,
  para acceder a mi panel y billetera de creditos.

Scenario Outline: Ingreso al panel principal con credenciales validas
Given el usuario registrado se encuentra en la pantalla "Iniciar sesion"
When ingresa el correo <correo>
And ingresa la contrasena <contrasena>
And presiona el boton "Iniciar sesion"
Then el sistema redirige al dashboard principal
And muestra la billetera de creditos y las solicitudes activas
Examples:
    | correo                | contrasena |
    | u202512345@upc.edu.pe | Upc2026*   |
    | u202598765@upc.edu.pe | Skill$54   |

Scenario Outline: Rechazo de credenciales invalidas
Given el usuario se encuentra en la pantalla "Iniciar sesion"
When ingresa el correo <correo>
And ingresa la contrasena incorrecta <contrasena>
And presiona el boton "Iniciar sesion"
Then el sistema muestra el mensaje "Correo o contrasena incorrectos"
And el usuario permanece en la pantalla de login
Examples:
    | correo                | contrasena |
    | u202512345@upc.edu.pe | clave123   |
    | u202598765@upc.edu.pe | abc999     |

Scenario: Bloqueo temporal de la cuenta por intentos fallidos
Given el usuario acumula 5 intentos fallidos consecutivos
When presiona el boton "Iniciar sesion" nuevamente
Then el sistema bloquea el acceso durante 10 minutos
And muestra el mensaje "Cuenta bloqueada temporalmente por seguridad"
