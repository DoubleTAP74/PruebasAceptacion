Feature: US005 Subir muestras a Portafolio
  Como estudiante proveedor, quiero subir ejemplos visuales a mi perfil,
  para demostrar la calidad de mis conocimientos.

Scenario Outline: Carga de una muestra valida
Given el usuario selecciona el archivo <archivo> de <peso> MB con el boton "Subir muestra"
When finaliza la carga
Then la imagen se renderiza en la galeria "Portafolio" de su perfil publico
And se muestra la miniatura con la fecha de subida
Examples:
    | archivo          | peso |
    | logo_startup.png | 2    |
    | mockup_app.jpg   | 4    |

Scenario: Rechazo de formato no permitido
Given el archivo seleccionado tiene la extension .exe
When se inicia la carga
Then la plataforma rechaza el archivo
And muestra el mensaje "Formato no valido: solo se aceptan JPG o PNG"
