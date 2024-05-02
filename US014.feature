Feature: Búsqueda de portafolios en ReStyle

  Como usuario contratista
  Quiero poder buscar proyectos realizados por remodeladores
  Para saber qué remodelador puede hacer el proyecto que me interesa.

  Scenario 1: Acceder a la sección de portafolios desde la pantalla de búsqueda
    Given que el usuario contratista se encuentra en la pantalla de búsqueda
    When selecciona la opción portafolios
    Then el sistema mostrará todos los proyectos realizados por el remodelador.

  Scenario 2: Redirigir al perfil del remodelador desde un portafolio seleccionado
    Given que el usuario contratista se encuentra en el apartado de portafolios
    When selecciona un portafolio
    Then el sistema le redirige al perfil del remodelador que es dueño del portafolio.

    Examples:
      | Proyecto seleccionado                | Resultado esperado                                            |
      | "Proyecto de Diseño de cocina"       | Redirige al perfil del remodelador que realizó el proyecto    |
      | "Proyecto de Remodelación de baño"   | Redirige al perfil del remodelador que realizó el proyecto    |
      | "Proyecto de Ampliación de vivienda" | Redirige al perfil del remodelador que realizó el proyecto    |
