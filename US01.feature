Feature: US01 - Autenticación
  Como usuario
  Quiero poder registrarme e iniciar sesión en la aplicación
  Para acceder a mis datos de perfil y configuraciones personalizadas

  Scenario: Escenario 01 - Autenticarse por primera vez
    Given el usuario se encuentra en la página de inicio de sesión de la app
    When el usuario hace clic en el botón de "Registrarse"
    Then la aplicación muestra la pantalla de registro de nuevo usuario
    And el usuario puede completar su información para crear una cuenta
    Examples:
      | input                         | output                           |
      | Nombre, correo, contraseña    | Cuenta creada correctamente      |
      | Nombre vacío                  | Error: "El nombre es obligatorio"|

  Scenario: Escenario 02 - Ingresar por otro dispositivo
    Given el usuario no tiene su cuenta registrada en el dispositivo actual
    When el usuario presiona el botón "Iniciar sesión" en la pantalla de inicio de sesión
    And completa los campos de correo y contraseña
    Then la app permite ingresar si la información es correcta
    Examples:
      | input                             | output                         |
      | Correo y contraseña válidos       | Ingreso exitoso                |
      | Correo o contraseña inválidos     | Error: "Credenciales incorrectas"|
