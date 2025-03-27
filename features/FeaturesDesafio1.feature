Feature: Login de usuarios

Scenario: Login con credenciales válidas
    Given el usuario está en página de inicio de sesión
    When ingresa  "user123" en el campo de nombre de usuario
    And ingresa contraseña correcta "password123" en el campo de contraseña
    And hace clic en el botón de login
    Then accede al panel principal

Scenario: Login con credenciales inválidas
    Given el usuario está en página de inicio de sesión
    When ingresa "user123" en el campo de nombre de usuario
    And ingresa contraseña incorrecta "wrongpassword" en el campo de contraseña
    And hace clic en el botón de login
    Then se muestra mensaje "Credenciales Inválidas"