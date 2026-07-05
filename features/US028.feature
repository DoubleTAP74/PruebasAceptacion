Feature: US028 Chat en tiempo real
  Como usuario, quiero chatear dentro del contrato,
  para resolver dudas sin dar mi informacion de contacto personal.

Scenario Outline: Mensajeria activa en contrato vigente
Given el contrato se encuentra en estado "Activo"
When un usuario escribe <mensaje> en el campo de texto del chat
And presiona el boton "Enviar"
Then la contraparte visualiza el mensaje inmediatamente mediante conexion WebSocket
And se muestra la hora de envio y la confirmacion de lectura
Examples:
    | mensaje                        |
    | Ya subi el avance del capitulo |
    | Puedes revisar el ejercicio 3? |

Scenario: Chat de solo lectura en contrato finalizado
Given el contrato fue marcado como finalizado
When el usuario accede al chat
Then el campo de entrada de texto se desactiva
And se muestra la banda "Conversacion archivada: solo lectura"
