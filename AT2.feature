Feature: Notificación de bienvenida a usuario nuevo

  Como usuario recién registrado,
  Quiero recibir una notificación de bienvenida,
  Para saber que mi cuenta fue creada correctamente y qué hacer a continuación.

  Scenario: Enviar notificación de bienvenida tras registro exitoso
    Given el usuario "u202218664@upc.edu.pe" se ha registrado correctamente
    When el sistema confirma la creación de la cuenta
    Then se envía una notificación de bienvenida al usuario "u202218664@upc.edu.pe" con el asunto "¡Bienvenido a UniRider!"
    And el mensaje incluye un enlace para iniciar sesión

  Scenario: No enviar bienvenida si el registro falla
    Given el usuario "u202218664@upc.edu.pe" intenta registrarse
    When el registro es rechazado por datos inválidos
    Then no se envía ninguna notificación de bienvenida

  Scenario: Abrir la app desde la notificación
    Given el usuario "u202218664@upc.edu.pe" recibió la notificación de bienvenida
    When el usuario toca el botón "Ir a la app" en la notificación
    Then se abre la aplicación en la página de inicio de sesión "/login"
