Feature: US025 Subir entregable final
  Como estudiante proveedor, quiero subir el archivo terminado,
  para que el demandante pueda revisarlo.

Scenario Outline: Carga del entregable dentro del limite
Given el proveedor selecciona el archivo <archivo> de <peso> MB con el boton "Subir entregable"
When finaliza la carga
Then el estado del proyecto cambia a "Esperando revision"
And el demandante recibe la notificacion "Nuevo entregable disponible"
Examples:
    | archivo            | peso |
    | solucion_final.zip | 18   |
    | informe_calc.pdf   | 4    |

Scenario: Rechazo de archivo por limite de peso excedido
Given el archivo seleccionado pesa 60 MB y la cuota maxima es 50 MB
When el proveedor intenta subirlo
Then el sistema rechaza la carga
And muestra la advertencia "El archivo supera el limite permitido"

Scenario: Reemplazo de un entregable en revision
Given ya existe un entregable en estado "Esperando revision"
When el proveedor sube una nueva version del archivo
Then el sistema reemplaza el archivo anterior
And registra la fecha y hora de la nueva version
