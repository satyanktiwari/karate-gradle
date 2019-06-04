Feature: add product and verify it

  Background:
    * url 'http://localhost:3030'

  Scenario Outline: create multiple products and verify their id and name
    Given path '/products'
    # list down all the keys for the json request
    And request {name:<name>, type:<type>,price:<price>, shipping:<shipping>,upc:<upc>,description:<description>, manufacturer:<manufacturer>,model:<model>, url:<url>, image:<image> }
    When method POST
    Then status 201
    # Store the response received for the POST call this will be used to verify during GET call
    And def newProduct = response

    Given path '/products/'+newProduct.id
    When method GET
    Then status 200
    #newProduct contains the response to the Post method and we will now comparing response of GET and POST methods
    And match response contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}


    Examples:
      |name|type|price|shipping|upc|description|manufacturer|model|url|image|
      |kt4 |ty4 |4    |1234569 |abc|testdesc4  |mf4         |mod4 |url|image|
      |kt5 |ty5 |5    |1234570 |abc|testdesc5  |mf5         |mod5 |url|image|
      |kt6 |ty6 |6    |1234571 |abc|testdesc6  |mf6         |mod6 |url|image|

