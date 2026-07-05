Feature: US027 Aprobar hito individual
  Como estudiante demandante, quiero aprobar solo la fase entregada,
  para liberar esa porcion del pago.

Scenario Outline: Aprobacion parcial de un hito validado
Given el archivo correspondiente al Hito <hito> fue validado
When el demandante presiona el boton "Aprobar hito"
Then se transfiere exclusivamente el porcentaje de creditos de dicho hito
And el estado del hito cambia a "Completado"
Examples:
    | hito |
    | 1    |
    | 2    |

Scenario: Bloqueo por orden secuencial de hitos
Given el Hito 1 aun esta pendiente
When el usuario intenta aprobar el Hito 2
Then el sistema bloquea la accion
And muestra el aviso "Debes aprobar los hitos en orden"
