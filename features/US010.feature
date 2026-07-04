Feature: US010 Notificaciones de match
  Como estudiante proveedor, quiero recibir alertas si publican algo acorde a mis skills,
  para postular rapido.

Scenario Outline: Alerta push por solicitud compatible
Given el proveedor tiene el interruptor "Notificaciones" activado y el skill <skill>
When se publica una solicitud con la etiqueta <skill>
Then el proveedor recibe una alerta push con el titulo de la solicitud
And la alerta incluye el boton "Postular ahora"
Examples:
    | skill  |
    | React  |
    | Python |

Scenario: Omision de alerta en modo inactivo
Given el proveedor desactivo el interruptor "Disponible" en su perfil
When surge una solicitud coincidente con sus skills
Then el sistema omite la notificacion push
And el evento queda registrado solo en la bandeja "Actividad"
