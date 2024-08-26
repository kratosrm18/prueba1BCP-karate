Feature: Prueba Tecnica BCP 1

  Background:
    * url 'https://reqres.in/api'

  Scenario: Validar respuesta codigo 200 y la pagina numero 2
    Given path 'users'
    And param page = 2
    When method get
    Then status 200

    * def pagina = response.page
    * print 'la pagina obtenida es: ', pagina
    * assert response.page == 2