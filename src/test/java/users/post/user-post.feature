Feature:  Post user on regression test

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    # def var = { "name": "Luis", "job": "Tester" }
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
      | name    | job    |
      | Luis    | Tester |
      | Alberto | Tester |

  Scenario: Post a user without job
    When method post
    Then status 201

  Scenario: Post a user with name invalid}
    When method post
    Then status 201