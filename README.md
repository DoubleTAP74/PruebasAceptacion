# Pruebas de Aceptación — SkillSwap Campus (SSC)

Suite de acceptance tests en lenguaje **Gherkin** para el proyecto **SkillSwap Campus**, elaborada para el Trabajo Final del curso **1ASI0786 - Ingeniería de Requisitos** (UPC, ciclo 202610).

Siguiendo la práctica del curso (*Escribiendo un Acceptance Test con Visual Studio Code*), se elaboró **un archivo `.feature` por cada una de las 30 historias de usuario del Product Backlog (los 5 Epics completos)**, con keywords estándar de Gherkin (`Feature`, `Scenario Outline`, `Given/When/Then`, `Examples`) y **data tables** que definen los conjuntos de datos de entrada y los resultados esperados de cada escenario.

## Contenido

| Epic | Historias de usuario | Archivos |
|---|---|---|
| EP001 - Gestión de Accesos, Identidad y Perfiles | US001-US006 | `US001.feature` ... `US006.feature` |
| EP002 - Matchmaking y Oferta de Habilidades (core) | US007-US012 | `US007.feature` ... `US012.feature` |
| EP003 - Sistema Transaccional Smart Escrow (core) | US013-US018 | `US013.feature` ... `US018.feature` |
| EP004 - Sistema de Reputación y Gamificación | US019-US024 | `US019.feature` ... `US024.feature` |
| EP005 - Gestión de Entregables y Comunicación | US025-US030 | `US025.feature` ... `US030.feature` |

Historias **no funcionales** obligatorias: US012, US018, US024, US030.
Historias del **flujo principal**: US001 → US003 → US007 → US008 → US013 → US025 → US014.

## Uso

Abrir la carpeta en **Visual Studio Code** con la extensión **Cucumber (Gherkin) Full Support** para el resaltado de sintaxis. Los escenarios pueden automatizarse con [Behave](https://behave.readthedocs.io/) (Python) o [Cucumber](https://cucumber.io/).

## Equipo (Startup SSC)

- Jimenez Suarez, Wilmer Edwin
- Vergaray Bravo, Nícolas Felipe
- Mamani Segovia, Rodrigo Felipe
- Quispe Ccarita, Olger Nilton
- Cam Pizarro, Gengis Gabriel
