Feature: US009 Filtrar por facultad
  Como estudiante demandante, quiero filtrar los resultados por facultad,
  para priorizar a companeros de mi misma carrera.

Scenario Outline: Actualizacion de la lista segun la facultad elegida
Given existen <total> proveedores y <en_facultad> pertenecen a la facultad <facultad>
When el demandante aplica el filtro <facultad>
Then la lista muestra <resultado> proveedores
And el contador de resultados queda visible
Examples:
    | total | en_facultad | facultad   | resultado |
    | 12    | 5           | Ingenieria | 5         |
    | 12    | 0           | Medicina   | 0         |

Scenario: Mensaje de facultad sin proveedores
Given no hay proveedores registrados en la facultad "Medicina"
When el demandante aplica el filtro "Medicina"
Then la lista aparece vacia con el mensaje "No hay proveedores disponibles en esta facultad"
And se muestra la opcion "Quitar filtro"
