Feature: US019 Calificar con estrellas
  Como estudiante demandante, quiero calificar del 1 al 5 al proveedor,
  para nutrir su perfil publico.

Scenario Outline: Registro de la calificacion
Given el pago del acuerdo fue liberado exitosamente
When el demandante selecciona <estrellas> estrellas en el widget "Califica tu experiencia"
And presiona el boton "Enviar calificacion"
Then el promedio del proveedor se recalcula
And se muestra el mensaje "Gracias por tu calificacion!"
Examples:
    | estrellas |
    | 5         |
    | 3         |

Scenario: Envio sin calificacion seleccionada
Given el usuario no ha seleccionado ninguna estrella
When presiona el boton "Enviar calificacion"
Then el formulario resalta el widget de estrellas
And muestra el aviso "Selecciona una calificacion del 1 al 5"
