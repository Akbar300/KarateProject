Feature: Adding new Spartan in spartan app

  Background:
    * url 'http://3.86.82.1:8000'

  Scenario: create a spartan and then get it by id
    * def spartanJson =
      """
      {
        "name"   : "Karate",
        "gender" : "Male",
        "phone"  : 1231231231
      }
      """
    Given path 'api/spartans/'
    And request spartanJson
    When method post
    Then status 201

    * def id = response.data.id
    * print 'created id is: ', id

    Given path 'api/spartans/' + id
     When method get
     Then status 200
    And match response contains spartanJson
