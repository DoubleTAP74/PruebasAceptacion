Feature: US021 Asignacion de rango
  Como estudiante proveedor, quiero que mi titulo de rango evolucione segun mis trabajos,
  para destacar mi experiencia.

Scenario Outline: Ascenso automatico de rango
Given el usuario acumula <creditos> creditos completados
When el sistema evalua su perfil
Then le asigna automaticamente la insignia de rango <rango> visible junto a su nombre
And le notifica "Has ascendido de rango!"
Examples:
    | creditos | rango   |
    | 1000     | Experto |
    | 1500     | Experto |

Scenario: Rango base para usuarios nuevos
Given el usuario recien inicia en la plataforma
When el sistema valida su nivel
Then mantiene la insignia de rango base "Novato" en su perfil publico
