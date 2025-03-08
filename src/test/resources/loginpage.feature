Feature: Login Functionality for OpenCart E-commerce Website

  As a user of the OpenCart website
  I want to be able to log in with my account
  So that I can accepts my account-related features manage my orders '

  Background:
    Given  I am on the OpenCart login page

  Scenario: Successfully login with valid credentials
    Given  I have entered a valid username and password
    When   I click on the login button
    Then  I should be logged in successfully

Scenario Outline : Unsuccessful login with invalid or empty credentials
Given I have entered a valid  "<username>" and "<password>"
  When I click on the login button
Then I should be an error message indicating   "<error_message>"
Examples:
  | username          | password         | error_message                                          |
  | invalid@email.com | invalid@password | Warning : No match for E-Mail Address and/or Password. |
  | abcc              | invalid@password | Warning : No match for E-Mail Address and/or Password. |
  | valid@email.com   | abcc             | Warning : No match for E-Mail Address and/or Password. |

  Scenario:  Navigating to the forgotten password page
    When  I click on the "Forgotten password" link
    Then  I should be redirected to the password reset page
