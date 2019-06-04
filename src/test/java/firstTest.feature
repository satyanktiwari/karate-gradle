Feature: to test a single get request


  Scenario: Get Request
    Given url 'http://localhost:3030/products'
    When method GET
    Then status 200
