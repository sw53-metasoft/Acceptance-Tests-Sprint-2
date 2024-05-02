Feature: Agregar críticas y opiniones sobre remodeladores

  Como visitante del segmento contratista
  Quiero agregar un review para compartir mi experiencia con otros usuarios
  Sobre el remodelador con el que realicé un proyecto en la plataforma ReStyle.

  Scenario: Agregar una reseña con éxito
    Given que el visitante del segmento contratista se encuentra en la plataforma de ReStyle
    And accede a su perfil
    When selecciona la opción agregar reseña
    Then el sistema le muestra un formulario donde puede agregar la información correspondiente

    Examples:
      | Información a ingresar                                        | Resultado esperado                                        |
      | "Título de la reseña: Experiencia positiva"                   | Muestra el campo para ingresar el título de la reseña     |
      | "Descripción de la reseña: Excelente trabajo realizado"       | Muestra el campo para ingresar la descripción de la reseña|
      | "Calificación: 5 estrellas"                                   | Muestra la opción para seleccionar la calificación        |
      | "Nombre de usuario: Contratista123"                           | Muestra el campo para ingresar el nombre de usuario       |
      | "Correo electrónico: contratista123@email.com"                | Muestra el campo para ingresar el correo electrónico      |
      | "Comentario adicional: Recomendaría este remodelador"         | Muestra el campo para ingresar un comentario adicional    |
      | "Imagen adjunta: archivo_imagen.jpg"                          | Muestra el botón para adjuntar una imagen (opcional)      |
      | "Selecciona guardar"                                          | Guarda la reseña y muestra un mensaje de éxito            |

  Scenario: Intento de agregar una reseña sin guardar
    Given que el visitante del segmento contratista se encuentra en la plataforma de ReStyle
    And accede a su perfil
    When selecciona la opción agregar reseña
    And ingresa la información requerida
    And no selecciona guardar
    Then el sistema no guarda la reseña
    And no muestra un mensaje de éxito.

    Examples: No hay ejemplos adicionales para este escenario.
