Feature: Revisar críticas y opiniones de remodeladores

  Como visitante del segmento contratista
  Quiero ver las opiniones de otros clientes
  Para tener una idea de la calidad del trabajo del remodelador en la plataforma ReStyle.

  Scenario: Acceder a la sección de reviews de un remodelador
    Given que el visitante del segmento contratista se encuentra en el perfil de un remodelador en la plataforma de ReStyle
    When accede a la sección de reviews
    Then el sistema le muestra todas las reviews hechas al remodelador escogido.

    Examples:
      | Remodelador     | Resultado esperado                         |
      | "Remodelador A" | Muestra todas las reviews de Remodelador A |
      | "Remodelador B" | Muestra todas las reviews de Remodelador B |
      | "Remodelador C" | Muestra todas las reviews de Remodelador C |

  Scenario: Acceder al portafolio del remodelador desde una review seleccionada
    Given que el visitante del segmento contratista se encuentra en el perfil de un remodelador en la plataforma de ReStyle
    When accede a la sección de reviews
    And selecciona un review
    Then el sistema le redirige al portafolio del remodelador para ver los proyectos.

    Examples:
      | Remodelador     | Review seleccionada | Resultado esperado                     |
      | "Remodelador A" | Review 1           | Redirige al portafolio de Remodelador A |
      | "Remodelador B" | Review 2           | Redirige al portafolio de Remodelador B |
      | "Remodelador C" | Review 3           | Redirige al portafolio de Remodelador C |
