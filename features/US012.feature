Feature: US012 Rendimiento de busqueda
  Como estudiante, quiero que el algoritmo de busqueda responda en menos de 2 segundos,
  para tener una experiencia fluida.

Scenario Outline: Respuesta de busqueda dentro del umbral
Given la base de datos contiene <perfiles> perfiles de proveedores
When el usuario ejecuta una busqueda con filtros
Then los resultados se renderizan en menos de <umbral> ms
Examples:
    | perfiles | umbral |
    | 500      | 2000   |
    | 5000     | 2000   |

Scenario: Indicador de carga ante latencia excedida
Given la latencia de la consulta supera los 2000 ms
When la interfaz espera la respuesta de la API
Then se muestra un indicador de carga animado con el texto "Buscando perfiles..."
