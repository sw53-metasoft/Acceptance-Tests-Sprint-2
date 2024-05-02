Feature: Búsqueda de empresas remodeladoras por ubicación o expertise

  Como visitante del segmento contratista
  Quiero poder buscar remodeladoras por ubicación o expertise
  Para obtener un resultado más personalizado en la plataforma ReStyle.

  Scenario: Búsqueda por ubicación
    Given que el visitante del segmento contratista se encuentra en la plataforma de ReStyle
    When realiza una búsqueda
    And selecciona la ubicación mediante un filtro
    Then el sistema solo le muestra las remodeladoras que cumplen con los requisitos.

    Examples:
      | Ubicación seleccionada | Resultado esperado |
      | "Ciudad A"             | Muestra empresas remodeladoras en Ciudad A |
      | "Ciudad B"             | Muestra empresas remodeladoras en Ciudad B |
      | "Ciudad C"             | Muestra empresas remodeladoras en Ciudad C |

  Scenario: Búsqueda por expertise
    Given que el visitante del segmento contratista se encuentra en la plataforma de ReStyle
    When realiza una búsqueda
    And ingresa en la barra de búsqueda el expertise de su preferencia
    Then el sistema solo le muestra las remodeladoras que cumplen con los requisitos.

    Examples:
      | Expertise ingresado | Resultado esperado |
      | "Baños"             | Muestra empresas remodeladoras con expertise en de baños |
      | "Hogar"             | Muestra empresas remodeladoras con expertise en el hogar |
      | "Sala"              | Muestra empresas remodeladoras con expertise en saldas   |

  Scenario: Búsqueda sin filtros
    Given que el visitante del segmento contratista se encuentra en la plataforma de ReStyle
    When realiza una búsqueda
    And no selecciona ningún filtro
    Then el sistema le muestra todas las remodeladoras disponibles.

    Examples: No hay ejemplos para este escenario, ya que no se aplican filtros en este caso.