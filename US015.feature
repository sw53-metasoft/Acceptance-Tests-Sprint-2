Feature: Seguimiento de proyecto en ReStyle

  Como usuario remodelador
  Quiero poder ver los hitos del seguimiento de mi proyecto
  Para saber en qué estado y etapa se encuentra el proyecto de diseño.

  Scenario: Acceder a los hitos del proyecto desde el apartado de mis proyectos
    Given que el usuario remodelador se encuentra en la plataforma de ReStyle
    When selecciona el apartado de mis proyectos
    Then el sistema le mostrará todos los hitos del proyecto.

  Scenario: Cumplir un hito y continuar al siguiente en la línea de tiempo
    Given que el usuario remodelador se encuentra en el apartado de mis proyectos
    And ha seleccionado un proyecto para ver sus hitos
    When selecciona cumplir un hito
    Then el sistema le permite continuar al siguiente en la línea de tiempo.

    Examples:
      | Hito seleccionado | Resultado esperado                                  |
      | "Diseño conceptual" | Permite avanzar al hito "Planos detallados"       |
      | "Planos detallados" | Permite avanzar al hito "Aprobación del cliente"  |
      | "Aprobación del cliente" | Permite avanzar al hito "Inicio de obra"     |

  Scenario: Guardar proyecto como culminado al completar todos los hitos
    Given que el usuario remodelador se encuentra en el apartado de mis proyectos
    And ha completado todos los hitos de un proyecto
    When todos los hitos han sido culminados
    Then el sistema le permite guardar el proyecto como culminado.

    Examples:
      | Proyecto completado                  | Resultado esperado                         |
      | "Proyecto de Diseño de cocina"       | Permite guardar el proyecto como culminado |
      | "Proyecto de Remodelación de baño"   | Permite guardar el proyecto como culminado |
      | "Proyecto de Ampliación de vivienda" | Permite guardar el proyecto como culminado |
