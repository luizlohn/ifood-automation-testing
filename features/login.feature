@login
Feature: Login on App

Background:
  Given I on app home screen

  @smoke @regression @full @login
  Scenario: Valid token
    When I click to login
    And I fill a phone number
    And I fill a valid token
    Then I should see the dashboard

  @smoke @regression @full @login
  Scenario: Invalid token
    When I click to login
    And I fill a phone number
    And I fill a invalid token
    Then I should see the messege: "Não encontramos seus dados de acesso. Por favor, tente mais uma vez daqui a pouco."

  @regression @full @login
  Scenario: Invalid phone
    When I click to login
    And I fill a invalid phone number
    And I fill a valid token
    Then I should see the messege: "Não encontramos seus dados de acesso. Por favor, tente mais uma vez daqui a pouco."

