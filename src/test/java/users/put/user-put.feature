Feature:  Put user on regression test

  Scenario: Put a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request { "name": "Juan", "job": "Tester QA" }
    When method put
    Then status 200
    And match $.name == "Juan"