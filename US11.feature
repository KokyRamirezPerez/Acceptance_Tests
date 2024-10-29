Feature: US11 - Recomendaciones personalizadas de productos
  Como usuario
  Quiero recibir recomendaciones de productos basadas en mi estilo
  Para optimizar mi rutina de belleza con productos adecuados

  Scenario: Escenario 01 - Recomendación automática
    Given el usuario ha completado una simulación
    When finaliza la simulación
    Then la app recomienda productos de belleza basados en el estilo aplicado
    Examples:
    | input                  | output                                               |
    | Simulación corte Pixie | Recomendación de productos para mantener corte Pixie |
    | Sin estilo aplicado    | Error: "Completa una simulación primero"             |
