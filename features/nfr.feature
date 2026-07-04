# language: es
Característica: Atributos de calidad del sistema (NFR)

  Esquema del escenario: Rendimiento de búsqueda (US012)
    Dado que la base de datos contiene <perfiles> perfiles
    Cuando el usuario ejecuta una búsqueda con filtros
    Entonces los resultados se renderizan en menos de <umbral> ms

    Ejemplos:
      | perfiles | umbral |
      | 500      | 2000   |
      | 5000     | 2000   |

  Esquema del escenario: Seguridad transaccional (US018)
    Dado que se procesa <operacion>
    Cuando el servidor la recibe
    Entonces el resultado es "<resultado>"

    Ejemplos:
      | operacion                   | resultado                            |
      | un movimiento de 4 CH       | valor cifrado con AES-256 en la base |
      | una petición sin SSL válido | transacción rechazada por seguridad  |

  Escenario: Concurrencia de calificaciones (US024)
    Dado que 200 usuarios envían calificaciones simultáneamente
    Cuando la base de datos procesa las peticiones
    Entonces el encolamiento se realiza sin bloqueos ni caídas

  Escenario: Accesibilidad Mobile First (US030)
    Dado que la plataforma se abre en una resolución de 375x667 px
    Cuando carga la interfaz
    Entonces los contenedores se apilan en una sola columna vertical
