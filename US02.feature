Feature: US02 - Edición de la información de perfil 
  Como usuario
  Quiero editar mi información de perfil
  Para mantener mis datos personales actualizados
  
  Scenario: Escenario 01 - Modificar información
    Given el usuario está en la pantalla principal de la app
    When hace clic en el ícono "Mi cuenta" y selecciona "Configuración"
    Then se muestran los datos del usuario con un ícono de lápiz para editar 
    Examples:
    |input                       |output                               |
    |Cambiar nombre y correo     |Información actualizada correctamente|
    |Dejar campo obigatorio vacío|Error:"Este campo es obligatorio"    |
