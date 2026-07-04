Feature: US018 Seguridad transaccional
  Como estudiante universitario, quiero que mis transferencias de saldo esten fuertemente cifradas,
  para tener la seguridad de que mis creditos no seran robados ni manipulados.

Scenario Outline: Proteccion de las operaciones de saldo
Given se procesa <operacion>
When el servidor la recibe
Then el resultado es <resultado>
Examples:
    | operacion                   | resultado                            |
    | un movimiento de 4 CH       | valor cifrado con AES-256 en la base |
    | una peticion sin SSL valido | transaccion rechazada por seguridad  |

Scenario: Registro de intentos inseguros en auditoria
Given ingresa una peticion sin certificado SSL valido
When el servidor la rechaza por seguridad
Then el intento queda registrado en el log de auditoria
