Feature: User API Tests

  Background:
    Given url "https://petstore.swagger.io/"
    And print "--opening petstore API--"


  Scenario: Add New User createWithList
    * def reqBody = [{"id": 0,"username": "string","firstName": "string","lastName": "string","email": "string","password": "string","phone": "string","userStatus": 0},{"id": 1,"username": "string","firstName": "string","lastName": "string","email": "string","password": "string","phone": "string","userStatus": 0}]
    When path 'v2/user/createWithList'
    And request reqBody
    And method post
    Then print response
    And status 200


  Scenario: Test Inquiry User
    Given path 'v2/user/string'
    When method get
    Then status 200

  Scenario: Test Update User
    * def reqBody = {"id": 0,"username": "string1","firstName": "string1","lastName": "string1","email": "string1","password": "string1","phone": "string1","userStatus": 1}
    Given path 'v2/user/string'
    And request reqBody
    When method put
    Then status 200

  Scenario: Test Delete User
    Given path 'v2/user/string'
    When method delete
    Then status 200

  Scenario: Test Login User
    Given path 'v2/user/login'
    And param username = 'string'
    And param password = 'string'
    When method get
    Then status 200

  Scenario: Test Logout User
    Given path 'v2/user/logout'
    When method get
    Then status 200


  Scenario: Test Add User With Array
    * def reqBody = [{"id": 0,"username": "string","firstName": "string","lastName": "string","email": "string","password": "string","phone": "string","userStatus": 0},{"id": 1,"username": "string","firstName": "string","lastName": "string","email": "string","password": "string","phone": "string","userStatus": 0}]
    Given path 'v2/user/createWithArray'
    And request reqBody
    When method post
    Then status 200


  Scenario: Test Add User
    * def reqBody = {"id": 0,"username": "string","firstName": "string","lastName": "string","email": "string","password": "string","phone": "string","userStatus": 0}
    Given path 'v2/user'
    And request reqBody
    When method post
    Then status 200