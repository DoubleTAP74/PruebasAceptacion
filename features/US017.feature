Feature: US017 Sistema de Disputas
  Como usuario, quiero abrir una disputa si hay un desacuerdo severo,
  para que el soporte retenga los fondos.

Scenario: Congelamiento del contrato al abrir una disputa
Given un contrato activo presenta un desacuerdo severo
When el usuario completa los campos "Motivo" y "Descripcion" del formulario "Reportar problema"
And presiona el boton "Enviar disputa"
Then el contrato se congela automaticamente con el estado "En revision"
And el caso se deriva al equipo de soporte

Scenario: Rechazo de disputa sobre contrato cerrado
Given el contrato fue finalizado y los creditos liberados
When el usuario intenta abrir una disputa
Then el sistema rechaza la accion
And muestra el mensaje "No es posible disputar un acuerdo cerrado"
