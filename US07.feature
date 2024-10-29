Feature: US07 - Simulación de procedimientos dentales en RA
  Como usuario
  Quiero ver una simulación de un procedimiento dental en realidad aumentada
  Para visualizar el resultado potencial del tratamiento

  Scenario: Escenario 01 - Visualización de resultados dentales
    Given el usuario ha seleccionado un procedimiento dental
    When activa la simulación
    Then la app muestra cómo se verá la sonrisa después del tratamiento usando RA
    Examples:
      | input                          | output                                 |
      | Procedimiento "Blanqueamiento" | Visualización del blanqueamiento en RA |
      | Procedimiento no válido        | Error: "Procedimiento no disponible"   |

  Scenario: Escenario 02 - Guardar resultados simulados
    Given el usuario ha completado la simulación dental
    When presiona el botón "Guardar resultado"
    Then la aplicación almacena la imagen del resultado en su perfil
    Examples:
      | input                  | output                                   |
      | Simulación guardada    | "Resultado guardado en tu perfil"        |
      | Error al guardar       | Error: "No se pudo guardar el resultado" |
