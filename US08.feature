Feature: US08 - Simulación de procedimientos de cirugía estética facial en RA
  Como usuario
  Quiero ver un simulación de una cirugía estética facial en realidad aumentada
  Para evaluar el posible resultado antes de someterme a una intervención

  Scenario: Escenario 01 - Seleccionar tipo de cirugía facial
    Given el usuario está en la sección de simulación
    When selecciona un tipo de cirugía facil
    Then la app genera simulación en RA mostrando el posible resultado en su rostro
    Examples:
    |input         |output                               |
    |Rinoplastia   |Simulación en RA de una rinoplastia  |
    |Tipo no valido|Error:"Tipo de cirugía no disponible"|
