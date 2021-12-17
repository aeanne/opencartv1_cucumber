Feature: Login
  @sanity
  Scenario: Successful login with Valid credentials
    Given User launch browser
    And opens URL "https://demo.opencart.com/"
    When User navigate to MyAccount menu
    And click on Login
    And User enters Email as "ae7114961@gmail.com" and Password as "test123"
    And Click on Login button
    Then User navigates to MyAccount Page

