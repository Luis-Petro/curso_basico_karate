Feature:  Delete user on regression test

  Scenario: Delete a user
    * call read("../post/user_post_snippers.feature@create")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204