Feature: US001 Registro Unico Universitario
  Como estudiante, quiero registrarme en la plataforma con mi correo institucional,
  para poder solicitar ayuda academica.

Scenario Outline: Creacion de cuenta con correo institucional
Given el estudiante se encuentra en la pantalla "Crear cuenta"
When ingresa el nombre completo <nombre>
And ingresa el correo institucional <correo>
And ingresa la contrasena <contrasena>
And presiona el boton "Crear cuenta"
Then el sistema muestra el mensaje <mensaje>
And envia un correo de verificacion con enlace de activacion
Examples:
    | nombre        | correo                | contrasena | mensaje                     |
    | Sofia Castro  | u202512345@upc.edu.pe | Upc2026*   | Cuenta creada correctamente |
    | Diego Ramirez | u202598765@upc.edu.pe | Skill$54   | Cuenta creada correctamente |

Scenario Outline: Rechazo de correo no institucional
Given el estudiante se encuentra en la pantalla "Crear cuenta"
When ingresa el correo <correo>
And presiona el boton "Crear cuenta"
Then el sistema resalta el campo "Correo institucional" en rojo
And muestra el mensaje "Debe usar su correo institucional UPC"
And la cuenta no se crea
Examples:
    | correo             |
    | usuario@gmail.com  |
    | alex23@hotmail.com |

Scenario: Aviso de correo ya registrado
Given el correo u202512345@upc.edu.pe ya tiene una cuenta activa
When el estudiante presiona el boton "Crear cuenta" con ese correo
Then el sistema muestra el mensaje "Este correo ya esta registrado"
And ofrece el enlace "Iniciar sesion"
