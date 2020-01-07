Feature: ZipCode to City Data in US


  Background:
    * url 'https://api.zippopotam.us/'

  Scenario: get single city data by zip code
    Given path 'US/22030'
    When method get
    Then status 200
    Then match response.country == 'United States'