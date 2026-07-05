Feature: US020 Dejar resena
  Como estudiante demandante, quiero escribir un comentario sobre mi experiencia,
  para orientar a otros.

Scenario Outline: Publicacion de una resena valida
Given el texto ingresado en el campo "Escribe tu resena" es valido y respeta las normas
When el demandante presiona el boton "Publicar resena"
Then el comentario aparece publicamente en la pestana "Resenas" del perfil del proveedor
And se muestra con <fecha> y la calificacion asociada
Examples:
    | fecha      |
    | 04/07/2026 |
    | 05/07/2026 |

Scenario: Moderacion de contenido restringido
Given el texto de la resena contiene palabras restringidas
When el demandante presiona "Publicar resena"
Then el filtro ofusca automaticamente las palabras prohibidas
And se muestra el aviso "Tu resena fue ajustada por moderacion"
