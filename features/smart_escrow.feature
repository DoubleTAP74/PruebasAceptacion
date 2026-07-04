# language: es
Característica: Sistema transaccional Smart Escrow (EP003)
  Como usuario que intercambia Créditos de Habilidad quiero custodia, liberación
  y reembolso seguros para intercambiar servicios sin riesgo de incumplimiento

  Esquema del escenario: Transferencia de créditos a custodia (US013)
    Dado que la billetera del demandante tiene <saldo> CH
    Cuando acepta un acuerdo por <monto> CH
    Entonces el sistema responde "<resultado>"

    Ejemplos:
      | saldo | monto | resultado                                  |
      | 10    | 4     | 4 CH En Custodia; saldo disponible 6 CH    |
      | 2     | 4     | Transacción denegada: Fondos insuficientes |

  Esquema del escenario: Reembolso por vencimiento (US015)
    Dado que el acuerdo vence el <fecha_limite> y hoy es <hoy>
    Cuando el demandante solicita el reembolso
    Entonces el sistema responde "<resultado>"

    Ejemplos:
      | fecha_limite | hoy        | resultado                          |
      | 16/07/2026   | 17/07/2026 | Créditos devueltos automáticamente |
      | 16/07/2026   | 10/07/2026 | Opción de reembolso inhabilitada   |

  Escenario: Liberación de créditos (US014)
    Dado que el entregable del acuerdo fue aprobado
    Cuando el demandante presiona "Aprobar entrega"
    Entonces los 4 CH del Escrow se transfieren a la billetera del proveedor

  Escenario: Apertura de disputa (US017)
    Dado que un contrato activo presenta un desacuerdo severo
    Cuando el usuario envía el formulario "Reportar problema"
    Entonces el contrato se congela y el caso se deriva a soporte

  Escenario: Historial de cuenta nueva (US016)
    Dado que la cuenta no registra transacciones
    Cuando el usuario ingresa a "Billetera"
    Entonces se muestra el mensaje "Aún no tienes movimientos"
