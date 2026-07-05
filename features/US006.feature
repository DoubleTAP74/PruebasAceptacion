Feature: US006 Alta disponibilidad de perfiles
  Como usuario, quiero que los perfiles y accesos esten siempre en linea,
  para no bloquear la operatividad de los usuarios.

Scenario Outline: Respuesta bajo operacion normal
Given el flujo de trafico es <trafico>
When un usuario solicita iniciar sesion
Then el sistema responde desde el servidor principal en menos de <umbral> segundos
And mantiene un SLA del 99.9%
Examples:
    | trafico | umbral |
    | normal  | 2      |
    | pico    | 2      |

Scenario: Conmutacion por error del servidor principal
Given el servidor principal experimenta una caida
When entra una nueva peticion
Then el balanceador de carga redirige automaticamente al servidor secundario en menos de 5 segundos
And el usuario no visualiza ningun error
