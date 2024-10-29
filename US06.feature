Feature: US06 - Simulación de corte de cabello en RA
  Como usuario
  Quiero ver una simulación de un corte de cabello en realidad aumentada
  Para evaluar cómo se vería un estilo en mi apariencia

  Scenario: Escenario 01 - Selección de estilo de corte
    Given el usuario está en la sección de cortes de cabello
    When elige un estilo de corte
    Then la aplicación muestra la simulación en RA del estilo seleccionado
    Examples:
      | input                    | output                                  |
      | Estilo de corte "Pixie"  | Visualización del estilo Pixie en RA    |
      | Estilo de corte no válido| Error: "Estilo no disponible"           |

  Scenario: Escenario 02 - Guardar simulación preferida
    Given el usuario está visualizando un corte de cabello en RA
    When presiona el botón "Guardar"
    Then la aplicación guarda la simulación en la galería del usuario
    Examples:
      | input            | output                                    |
      | Estilo guardado  | "Simulación guardada en tu galería"       |
      | Error al guardar | Error: "No se pudo guardar la simulación" |
