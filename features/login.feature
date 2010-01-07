Feature: Login to Application

Scenario: Login as an existing user
  Given a user exists with email "jimbob@example.com" and password "boogieman"
  When I am on the homepage
  And I login as user
  Then I should succeed
  