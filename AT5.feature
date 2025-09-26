Feature: Inicio de sesión

  Como usuario registrado,
  Quiero iniciar sesión,
  Para acceder a mi dashboard.

  Scenario: Login válido
    Given existe un usuario "u202218664@upc.edu.pe" con password "P4ssw0rd!"
    And estoy en la página "/login"
    When inicio sesión con esas credenciales
    Then debo ser redirigido al home
    And debo ver el encabezado "Dashboard"

  Scenario: Login inválido
    Given estoy en la página "/login"
    When ingreso email "u202218664@upc.edu.pe" y password "incorrecto"
    Then debo ver el mensaje "Usuario o contraseña incorrectos"
    And debo permanecer en "/login"

  Scenario: Ruta protegida sin autenticación
    Given no estoy autenticado
    When intento acceder a "/home"
    Then debo ser redirigido a "/login"
