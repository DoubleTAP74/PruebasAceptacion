Feature: US016 Historial de transacciones
  Como usuario, quiero ver el registro de mis gastos y ganancias,
  para llevar el control de mis creditos.

Scenario Outline: Listado cronologico de movimientos
Given la cuenta registra <movimientos> transacciones
When el usuario ingresa a la pestana "Billetera"
Then la lista muestra <movimientos> filas con fecha, tipo, monto y contraparte
Examples:
    | movimientos |
    | 7           |
    | 25          |

Scenario: Estado vacio en cuenta nueva
Given la cuenta no registra transacciones
When el usuario ingresa a la pestana "Billetera"
Then se muestra el mensaje "Aun no tienes movimientos"
And se presenta el boton "Explorar solicitudes"
