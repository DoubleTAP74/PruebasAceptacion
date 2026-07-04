Feature: US015 Reembolso por vencimiento
  Como estudiante demandante, quiero recuperar mis creditos si el proveedor incumple el plazo,
  para no perder mi saldo.

Scenario Outline: Devolucion de creditos segun el estado del plazo
Given el acuerdo vence el <fecha_limite> y hoy es <hoy>
When el demandante solicita el reembolso
Then el sistema responde <resultado>
Examples:
    | fecha_limite | hoy        | resultado                          |
    | 16/07/2026   | 17/07/2026 | Creditos devueltos automaticamente |
    | 16/07/2026   | 10/07/2026 | Opcion de reembolso inhabilitada   |

Scenario: Opcion inhabilitada con plazo vigente
Given el plazo del acuerdo sigue vigente
When el demandante visualiza el panel del acuerdo
Then la opcion "Solicitar reembolso" se mantiene inhabilitada
And se muestran los dias restantes del plazo
