Feature: US024 Concurrencia de validacion
  Como estudiante usuario, quiero enviar calificaciones sin demoras ni caidas,
  para no perder mi tiempo de estudio en semanas de examenes.

Scenario Outline: Procesamiento encolado en alta concurrencia
Given <usuarios> usuarios envian calificaciones simultaneamente
When la base de datos procesa las peticiones
Then el encolamiento se realiza sin bloqueos ni caidas
And cada usuario ve la confirmacion de envio sin demora perceptible
Examples:
    | usuarios |
    | 200      |
    | 500      |

Scenario: Bloqueo preventivo ante volumen anormal
Given se detectan 500 peticiones por minuto desde una misma IP
When el firewall interviene
Then la direccion IP queda bloqueada por prevencion de ataques
And el evento se registra en el log de seguridad
