Feature: US022 Impugnar resena maliciosa
  Como estudiante proveedor, quiero reportar resenas injustas,
  para que un auditor las oculte y proteja mi promedio.

Scenario Outline: Reporte valido de una resena
Given el usuario reporta una resena mediante el boton "Impugnar"
When selecciona el motivo <motivo> del desplegable
And adjunta su justificacion
And presiona "Enviar reporte"
Then la resena entra a la cola de moderacion y se oculta temporalmente
And se muestra el estado "En revision"
Examples:
    | motivo               |
    | Contenido falso      |
    | Lenguaje ofensivo    |

Scenario: Bloqueo por limite de reportes diarios
Given el usuario excede el limite de reportes diarios
When intenta reportar nuevamente
Then el boton "Impugnar" se bloquea temporalmente
And se muestra el aviso "Has alcanzado el limite de reportes por hoy"
