@ignore
Feature:  Reusable scenarios for post user
  @create
  Scenario:
    Given url "https://reqres.in/api/users"
    And request { "name": "juan", "job": "Teacher"}
    When  method post
    Then status 201
    And def contactId = $.id