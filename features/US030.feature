Feature: US030 Accesibilidad Mobile First
  Como usuario, quiero usar la plataforma desde mi celular,
  para gestionar mis acuerdos en cualquier lugar.

Scenario Outline: Adaptacion del diseno a resoluciones moviles
Given la plataforma se abre en una resolucion de <ancho>x<alto> px
When carga la interfaz
Then los contenedores se apilan en una sola columna vertical
And el menu de navegacion se colapsa en el icono de hamburguesa
Examples:
    | ancho | alto |
    | 375   | 667  |
    | 360   | 800  |

Scenario: Salto de linea forzado ante texto extenso
Given se introduce una cadena de 300 caracteres sin espacios
When se renderiza en pantalla movil
Then el sistema aplica un salto de linea forzado
And el diseno no sufre distorsion horizontal
