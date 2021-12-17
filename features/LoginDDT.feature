Feature: LoginDDT


  Background: Common steps for all the login scenarios
    Given User launch browser
    And opens URL "https://demo.opencart.com/"
    When User navigate to MyAccount menu
    And click on Login

  Scenario Outline:  Login Data Driven
#    Given User launch browser
#    And opens URL "https://demo.opencart.com/"
#    When User navigate to MyAccount menu
#    And click on Login
    And User enters Email as "<email>" and Password as "<password>"
    And click on button
    Then user navigates to MyAccount page

    Examples:
      | email               | password |
      | ae7114961@gmail.com | test123  |
      | ae7114971@gmail.com | test123  |


    @sanity @regression
  Scenario Outline: Login Data Driven2
#    Given User launch browser
#    And opens URL "https://demo.opencart.com/"
#    When User navigate to MyAccount menu
#    And click on Login
    Then check User navigates to MyAccount Page by passing Email and Password with excel row "<row_index>"

    Examples:
      |row_index|
      |1|
      |2|
      |3|
