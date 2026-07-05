Feature: US004 Recuperar Contrasena
  Como usuario, quiero solicitar un enlace de recuperacion,
  para restaurar mi acceso si olvido mi contrasena.

Scenario Outline: Envio del enlace de recuperacion
Given el correo <correo> existe en la base de datos
When el usuario presiona el boton "Enviar enlace de recuperacion"
Then el sistema muestra el mensaje "Revisa tu bandeja de entrada"
And envia un email con un token temporal valido por <vigencia> minutos
Examples:
    | correo                | vigencia |
    | u202512345@upc.edu.pe | 15       |
    | u202598765@upc.edu.pe | 15       |

Scenario: Solicitud con correo no registrado
Given el correo ingresado no esta registrado en la plataforma
When el usuario solicita la recuperacion
Then el sistema muestra el mensaje generico "Si el correo existe, recibiras un enlace"
And no revela si la cuenta existe
