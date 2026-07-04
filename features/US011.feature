Feature: US011 Cancelar solicitud
  Como estudiante demandante, quiero cancelar mi publicacion si ya resolvi el tema,
  para evitar postulaciones innecesarias.

Scenario: Cancelacion de una solicitud sin acuerdos
Given la solicitud publicada no tiene acuerdos iniciados
When el demandante presiona el boton "Cancelar solicitud"
And confirma en el dialogo "Estas seguro?"
Then la publicacion se oculta del feed global
And su estado cambia a "Cancelada"

Scenario: Bloqueo de cancelacion con creditos en custodia
Given la solicitud se encuentra en estado "Escrow"
When el demandante intenta cancelar la publicacion
Then el boton "Cancelar solicitud" aparece deshabilitado
And el sistema muestra el aviso "No puedes cancelar un acuerdo con creditos en custodia"
