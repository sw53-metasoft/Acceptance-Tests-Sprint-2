Feature: Visualizar página no encontrada en ReStyle

  Como usuario de ReStyle
  Deseo saber qué páginas no están a mi alcance
  Para visualizar las opciones disponibles para mi rol.

  Scenario: Visualizar página no encontrada como propietario de vivienda
    Given que soy un propietario de vivienda registrado en la plataforma
    When ingreso una ruta al azar en el buscador de mi navegador
    Then la aplicación me redirige a una página no encontrada.

    Examples:
      | Rol                       | Ruta al azar         | Resultado esperado              |
      | "Propietario de vivienda" | "/ruta-no-existente" | Redirige a página no encontrada |

  Scenario: Visualizar página no encontrada como remodelador
    Given que soy un remodelador registrado en la plataforma
    When ingreso una ruta al azar en el buscador de mi navegador
    Then la aplicación me redirige a una página no encontrada.

    Examples:
      | Rol           | Ruta al azar             | Resultado esperado              |
      | "Remodelador" | "/ruta-no-existente"     | Redirige a página no encontrada |
