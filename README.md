# Pruebas de Aceptación — SkillSwap Campus (SSC)

Suite de acceptance tests en lenguaje **Gherkin (español)** para el proyecto **SkillSwap Campus**, elaborada para el Trabajo Final del curso **1ASI0786 – Ingeniería de Requisitos** (UPC, ciclo 202610).

## Contenido

| Archivo | Cobertura | Historias de usuario |
|---|---|---|
| `features/matchmaking.feature` | EP002 – Matchmaking y Oferta de Habilidades | US007, US008, US009, US010, US011 |
| `features/smart_escrow.feature` | EP003 – Sistema Transaccional Smart Escrow | US013, US014, US015, US016, US017 |
| `features/nfr.feature` | Requisitos no funcionales obligatorios | US012, US018, US024, US030 |

Cada archivo incluye **Esquemas del escenario** con data tables (`Ejemplos:`) que definen los conjuntos de datos de entrada y los resultados esperados de cada prueba, conforme a la Tabla 4.1 del Informe de Trabajo Final.

## Uso

Abrir la carpeta en **Visual Studio Code** con la extensión [Cucumber (Gherkin) Full Support](https://marketplace.visualstudio.com/items?itemName=alexkrechik.cucumberautocomplete) para el resaltado de sintaxis. Los escenarios pueden automatizarse con [Behave](https://behave.readthedocs.io/) (Python) o [Cucumber](https://cucumber.io/).

## Equipo (Startup SSC)

- Jimenez Suarez, Wilmer Edwin
- Vergaray Bravo, Nícolas Felipe
- Mamani Segovia, Rodrigo Felipe
- Quispe Ccarita, Olger Nilton
- Cam Pizarro, Gengis Gabriel
