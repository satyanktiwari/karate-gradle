Feature: Single product input from another file

  Background:
    * url 'http://localhost:3030'
    * def CreateProduct = read('CreateProduct.json')
#   Since the file is in the same folder as the feature only the file name is expected
#   Make sure the the json file has all the brackets (square and curly) other wise the test will fail


  Scenario Outline: create Single products with input from different file and verify their id and name
      Given path '/products'
      * request {name:<name>, type:<type>,price:<price>, shipping:<shipping>,upc:<upc>,description:<description>, manufacturer:<manufacturer>,model:<model>, url:<url>, image:<image> }
      When method POST
      Then status 201
      * def newProduct = response
      * print 'the value in newProduct is: ', newProduct
      And match newProduct contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}

      Given path '/products/'+ newProduct.id
      When method GET
      Then status 200
      And match response contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}


      Examples:
        |CreateProduct |



