Feature: US007 Publicar solicitud de ayuda
  Como estudiante demandante, quiero publicar una necesidad tecnica con fecha limite,
  para encontrar a un proveedor.

Scenario Outline: Publicacion de una nueva solicitud en el feed global
Given el demandante se encuentra en el formulario "Nueva solicitud"
When ingresa el titulo <titulo>
And selecciona la categoria <categoria>
And ofrece <creditos> CH con fecha limite <fecha_limite>
And presiona el boton "Publicar"
Then la solicitud aparece en el feed global con estado "Activa"
And el sistema muestra el mensaje "Solicitud publicada"
Examples:
    | titulo                   | categoria    | creditos | fecha_limite |
    | Ayuda parcial Calculo II | Matematicas  | 3        | 15/07/2026   |
    | Asesoria en POO con Java | Programacion | 5        | 22/07/2026   |

Scenario: Bloqueo de publicacion por creditos en cero
Given el campo "Creditos ofrecidos" tiene valor 0
When el demandante intenta presionar el boton "Publicar"
Then el boton "Publicar" permanece deshabilitado
And el sistema muestra el aviso "Debes ofrecer al menos 1 Credito de Habilidad"

Scenario: Rechazo de fecha limite anterior al dia actual
Given el campo "Fecha limite" contiene la fecha 01/07/2026 y hoy es 04/07/2026
When el demandante intenta publicar la solicitud
Then el selector resalta la fecha en rojo
And muestra el aviso "La fecha limite debe ser posterior a hoy"
