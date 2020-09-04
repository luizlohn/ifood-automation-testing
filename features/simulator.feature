@simulator
Feature: Compare other POS

Background:
  Given I on app home screen

  @smoke @regression @full
  Scenario: Compare with Rede
    When I type a value to compare
    And I choose a installments
    And I choose competitor "Rede"
    Then I should see the comparison result

   @full
  Scenario: Compare with Stone Mais
    When I type a value to compare
    And I choose a installments
    And I choose competitor "Stone Mais"
    Then I should see the comparison result

  @full
  Scenario: Compare with PagSeguro
    When I type a value to compare
    And I choose a installments
    And I choose competitor "PagSeguro"
    Then I should see the comparison result

  @full
  Scenario: Compare with GetNet
    When I type a value to compare
    And I choose a installments
    And I choose competitor "GetNet"
    Then I should see the comparison result

  @full
  Scenario: Compare with Cielo
    When I type a value to compare
    And I choose a installments
    And I choose competitor "Cielo"
    Then I should see the comparison result