# language: es
Característica: Matchmaking y publicación de solicitudes (EP002)
  Como estudiante demandante quiero publicar solicitudes y recibir sugerencias
  para conectar con el proveedor idóneo

  Esquema del escenario: Publicación de solicitud de ayuda (US007)
    Dado que el demandante completa "Nueva solicitud" con "<titulo>", "<categoria>", <creditos> CH y "<fecha_limite>"
    Cuando presiona el botón "Publicar"
    Entonces el sistema responde "<resultado>"

    Ejemplos:
      | titulo                   | categoria   | creditos | fecha_limite | resultado                               |
      | Ayuda parcial Cálculo II | Matemáticas | 3        | 15/07/2026   | Solicitud publicada con estado Activa   |
      | Revisión ensayo APA      | Redacción   | 0        | 20/07/2026   | Error: Debes ofrecer al menos 1 crédito |

  Esquema del escenario: Filtro por facultad (US009)
    Dado que existen <total> proveedores y <en_facultad> pertenecen a "<facultad>"
    Cuando el demandante aplica el filtro "<facultad>"
    Entonces la lista muestra <resultado> proveedores

    Ejemplos:
      | total | en_facultad | facultad   | resultado |
      | 12    | 5           | Ingeniería | 5         |
      | 12    | 0           | Medicina   | 0         |

  Escenario: Sugerencia de perfiles compatibles (US008)
    Dado que existen 8 proveedores con la etiqueta "Python"
    Cuando se publica una solicitud con etiquetas "Python, Data"
    Entonces el panel "Sugerencias" muestra los 3 perfiles de mayor compatibilidad

  Escenario: Notificación de match (US010)
    Dado que un proveedor tiene notificaciones activas y el skill "React"
    Cuando se publica una solicitud con la etiqueta "React"
    Entonces recibe una alerta push con el botón "Postular ahora"

  Escenario: Cancelación bloqueada por Escrow (US011)
    Dado que una solicitud tiene créditos en custodia
    Cuando el demandante presiona "Cancelar solicitud"
    Entonces el sistema bloquea la acción con el mensaje "No puedes cancelar un acuerdo con créditos en custodia"
