Feature: Cambio de idioma en la Landing (ES/EN)

  Como visitante,
  Quiero cambiar el idioma de la landing,
  Para entender el contenido en mi idioma.

  Scenario: Idioma predeterminado en primera visita
    Given es mi primera visita a la landing page
    Then el idioma actual debe ser "en"

  Scenario: Cambiar de inglés a español
    Given estoy en la landing page
    When presiono el switch de idioma a "es"
    Then el idioma actual debe ser "es"
    And el texto del botón principal debe mostrarse en español

  Scenario: Persistencia del idioma seleccionado
    Given cambié el idioma a "es"
    When recargo la página
    Then el idioma actual debe ser "es"
