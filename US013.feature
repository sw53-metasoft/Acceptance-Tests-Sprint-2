Feature: Crear cuenta remodelador en ReStyle

  Como usuario remodelador
  Quiero poder crear una cuenta en ReStyle
  Para poder promocionar mis servicios en la plataforma.

  Scenario: Acceder a la pantalla de Creación de Cuenta Nueva
    Given que el usuario remodelador se encuentra en la pantalla inicial de ReStyle
    When le da click al botón de Crear cuenta
    Then le aparecerá la pantalla de Creación de Cuenta Nueva.

  Scenario: Llenar datos y aceptar para crear cuenta con éxito
    Given que el usuario remodelador se encuentra en la pantalla de Creación de Cuenta Nueva
    When llena los datos solicitados correctamente
    And le da click al botón Aceptar
    Then le aparecerá la pantalla de Iniciar Sesión.

    Examples:
      | Nombre de usuario | Contraseña      | Correo electrónico         | Tipo de usuario | Resultado esperado                                     |
      | "Remodelador123"  | "contraseña456" | "remodelador123@email.com" | Remodeler       | Muestra pantalla de Iniciar Sesión tras crear la cuenta|

  Scenario: Intentar crear cuenta sin llenar todos los datos solicitados
    Given que el usuario remodelador se encuentra en la pantalla de Creación de Cuenta Nueva
    And no ha llenado todos los datos solicitados
    When le da click al botón Aceptar
    Then le aparecerá un mensaje de error.

    Examples:
      | Nombre de usuario | Contraseña   | Correo electrónico | Resultado esperado                              |
      | ""                | "contraseña456" | "remodelador123@email.com" | Muestra un mensaje de error por datos incompletos |
      | "Remodelador123"  | ""            | "remodelador123@email.com" | Muestra un mensaje de error por datos incompletos |
      | "Remodelador123"  | "contraseña456" | ""                               | Muestra un mensaje de error por datos incompletos |
