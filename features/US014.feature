Feature: US014 Aprobar y liberar creditos
  Como estudiante demandante, quiero aprobar el trabajo recibido,
  para liberar los creditos retenidos al proveedor.

Scenario: Liberacion de creditos al aprobar la entrega
Given el entregable del acuerdo fue revisado y es correcto
When el demandante presiona el boton "Aprobar entrega"
And confirma en el dialogo de verificacion
Then los 4 CH del Escrow se transfieren a la billetera del proveedor
And ambos usuarios reciben la notificacion "Acuerdo completado"

Scenario: Boton deshabilitado por acuerdo congelado
Given el acuerdo esta congelado por una disputa activa
When el demandante visualiza el panel del acuerdo
Then el boton "Liberar creditos" aparece deshabilitado
And se muestra el aviso "Acuerdo en revision por soporte"

Scenario: Cierre del contrato tras la liberacion
Given los creditos del Escrow fueron liberados al proveedor
When se completa la transferencia
Then el contrato pasa al estado "Cerrado"
And el chat del acuerdo queda en modo solo lectura
