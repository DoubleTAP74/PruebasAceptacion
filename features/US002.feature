Feature: US002 Activar Modo Proveedor
  Como estudiante tecnico, quiero crear un perfil de proveedor indicando mi carrera,
  para ofrecer mis habilidades a otros.

Scenario Outline: Activacion del perfil de proveedor
Given el usuario se encuentra en el formulario "Modo Proveedor"
When completa el campo carrera con <carrera>
And registra las habilidades <habilidades>
And redacta la descripcion del servicio
And presiona el boton "Activar perfil"
Then el sistema muestra la etiqueta "Proveedor activo" en su perfil
And muestra el mensaje "Tu perfil de proveedor esta habilitado"
Examples:
    | carrera                 | habilidades      |
    | Ingenieria de Software  | Python, SQL      |
    | Diseno Profesional      | Photoshop, Canva |

Scenario: Bloqueo por campo obligatorio omitido
Given el campo desplegable "Carrera" esta vacio
When el usuario intenta avanzar en el formulario
Then el boton "Activar perfil" permanece deshabilitado
And se muestra el aviso "Selecciona tu carrera para continuar"
