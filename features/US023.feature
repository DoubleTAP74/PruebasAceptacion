Feature: US023 Dashboard de reputacion
  Como estudiante demandante, quiero ver el ratio de puntualidad del proveedor,
  para evaluar si me conviene.

Scenario Outline: Metricas visibles con historial
Given el proveedor tiene <acuerdos> acuerdos completados en su historial
When el demandante visita su perfil
Then la tarjeta "Reputacion" muestra el porcentaje de entregas a tiempo
And muestra el promedio de estrellas y el numero de acuerdos completados
Examples:
    | acuerdos |
    | 12       |
    | 45       |

Scenario: Proveedor sin historial de entregas
Given el proveedor no tiene historial de entregas
When se revisan sus metricas
Then el indicador muestra la etiqueta "Datos insuficientes" en lugar de un porcentaje
