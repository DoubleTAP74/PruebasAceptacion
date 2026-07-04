Feature: US008 Sugerencia de perfiles
  Como estudiante demandante, quiero que el sistema me sugiera perfiles compatibles,
  para reducir el tiempo de busqueda.

Scenario Outline: Presentacion de perfiles compatibles tras publicar
Given existen <compatibles> proveedores con las etiquetas <etiquetas>
When el demandante publica una solicitud con esas etiquetas
Then el panel "Sugerencias" muestra <mostrados> perfiles ordenados por compatibilidad
And cada tarjeta incluye foto, rango y el boton "Ver perfil"
Examples:
    | compatibles | etiquetas    | mostrados |
    | 8           | Python, Data | 3         |
    | 2           | Redaccion    | 2         |

Scenario: Estado vacio cuando no hay coincidencias
Given ningun proveedor coincide con las etiquetas de la solicitud
When el sistema procesa la busqueda
Then la vista muestra el mensaje "No encontramos coincidencias"
And presenta el boton "Ampliar filtros"
