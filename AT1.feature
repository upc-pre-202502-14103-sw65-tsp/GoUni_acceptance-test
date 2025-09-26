Feature: Acceso a la aplicación desde la Landing (CTA)

  Como visitante de la plataforma,
  Quiero acceder a la aplicación desde el botón "Iniciar Sesión",
  Para comenzar a usar el producto.

  Scenario: Navegación al hacer clic en el CTA
    Given estoy en la landing page
    When hago clic en el botón "Iniciar Sesión"
    Then debo ser redirigido a la app web

  Scenario: Accesibilidad con teclado
    Given estoy en la landing page
    When navego con el teclado hasta el botón "Iniciar Sesión" y presiono Enter
    Then debo ser redirigido a la app web
