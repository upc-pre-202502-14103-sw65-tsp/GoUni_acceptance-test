Feature: Registro de usuario

  Como usuario nuevo,
  Quiero registrarme en la plataforma,
  Para acceder al servicio de carpooling.

  Scenario: Registro exitoso
    Given estoy en la página "/register"
    When completo email "u202218664@upc.edu.pe" y password "P4ssw0rd!" y envío el formulario
    Then debe redirigirme para poder loguearme

  Scenario: Validaciones de formulario
    Given estoy en la página "/register"
    When envío el formulario vacío
    Then debo ver los errores de campos requeridos

  Scenario: Email ya registrado
    Given existe un usuario con email "user@test.com"
    When intento registrarme con email "user@test.com"
    Then debo ver el mensaje "email ya registrado"
