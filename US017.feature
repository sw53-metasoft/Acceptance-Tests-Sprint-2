Feature: Visualizar home de la plataforma ReStyle

  Como usuario de ReStyle
  Deseo poder acceder al home de la aplicación
  Para visualizar las opciones disponibles para mi rol.

  Scenario: Acceder al home como propietario de vivienda
    Given que soy un propietario de vivienda registrado en la plataforma
    When accedo a la sección de inicio
    Then el sistema me redirige al home de la aplicación.

    Examples:
      | Rol                       | Resultado esperado                |
      | "Propietario de vivienda" | Redirige al home de la aplicación |

  Scenario: Acceder al home como remodelador
    Given que soy un remodelador registrado en la plataforma
    When accedo a la sección de inicio
    Then el sistema me redirige al home de la aplicación.

    Examples:
      | Rol           | Resultado esperado                |
      | "Remodelador" | Redirige al home de la aplicación |
