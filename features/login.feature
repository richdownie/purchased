Feature: Login

Scenario: login as user
  Given I am on the login page
  And I fill in the text field "user_session_email" with "rdownie@sample.org"
  And I fill in the text field "user_session_password" with "testing1"
  And I click the "Submit" button