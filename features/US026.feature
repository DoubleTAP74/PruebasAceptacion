Feature: US026 Dividir en hitos
  Como estudiante proveedor, quiero fraccionar el acuerdo en pagos parciales,
  para asegurar liquidez progresiva.

Scenario Outline: Creacion de hitos validos
Given la suma de los creditos asignados a los hitos es <suma> CH y el total del contrato es <total> CH
When el proveedor presiona el boton "Guardar hitos"
Then el sistema responde <resultado>
Examples:
    | suma | total | resultado                                            |
    | 8    | 8     | Fases creadas con su monto y fecha en el panel       |
    | 6    | 8     | Bloqueo: La suma de los hitos debe igualar el total  |

Scenario: Bloqueo por montos inconsistentes
Given la sumatoria de los hitos no coincide con el total del contrato
When el proveedor intenta guardar
Then el boton "Guardar hitos" se bloquea
And se muestra el mensaje "La suma de los hitos debe igualar el total del acuerdo"
