Feature: US029 Proponer nuevo deadline
  Como estudiante proveedor, quiero solicitar una extension de tiempo,
  para casos de fuerza mayor con justificacion academica.

Scenario Outline: Extension aceptada por el demandante
Given el demandante revisa la propuesta de nueva fecha <nueva_fecha> en el dialogo "Solicitud de extension"
When presiona el boton "Confirmar"
Then el contrato actualiza su fecha de vencimiento a <nueva_fecha>
And ambos usuarios reciben la notificacion del cambio
Examples:
    | nueva_fecha |
    | 20/07/2026  |
    | 25/07/2026  |

Scenario: Extension rechazada por el demandante
Given el demandante presiona "Rechazar" en la solicitud de extension
When se deniega la peticion
Then se mantiene estrictamente el plazo original
And el proveedor recibe el aviso "Extension denegada: se mantiene la fecha limite"
