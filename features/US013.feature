Feature: US013 Transferir creditos a Escrow
  Como estudiante demandante, quiero transferir mis creditos a custodia,
  para asegurar el pago sin entregarlo aun.

Scenario Outline: Retencion de creditos en custodia
Given la billetera del demandante tiene <saldo> CH
When acepta un acuerdo por <monto> CH presionando "Aceptar trato"
Then el sistema responde <resultado>
Examples:
    | saldo | monto | resultado                                  |
    | 10    | 4     | 4 CH En Custodia; saldo disponible 6 CH    |
    | 4     | 4     | 4 CH En Custodia; saldo disponible 0 CH    |
    | 2     | 4     | Transaccion denegada: Fondos insuficientes |

Scenario: Denegacion por fondos insuficientes
Given la billetera muestra un saldo de 2 CH
When el demandante presiona "Aceptar trato" en un acuerdo de 4 CH
Then la transaccion es denegada
And el sistema muestra el mensaje "Fondos insuficientes: recarga o gana creditos para continuar"
