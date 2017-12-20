Feature: BBC SignUp

  Scenario: Inputting incorrect dob shows an error
    Given I access the bbc homepage
    And I try to sign in
    When I click on register link
    And I input incorrect dob details
    When I try to login
    Then I receive an error for incorrect DOB details

  Scenario: Inputting the correct details and successfully signup for BBC website
    Given I access the bbc homepage
    And I try to sign in
    When I click on register link
    And I input the correct dob details
    When I move on to the next page
    And I fill email, password, postcode and gender correctly
    When I click Register
    Then I can Register succesfully
