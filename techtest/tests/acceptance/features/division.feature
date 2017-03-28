Feature: Division

Scenario: Divide a number by another
    Given I enter "10" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "5"

Scenario: Divide a number by another twice
    Given I enter "20" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "5"

Scenario: Divide a number by another then add a third
    Given I enter "20" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "12"

@negative
Scenario: Divide a negative number by a positive
    Given I hit "subtract"
	And I enter "5" into the calculator
    And I hit "divide"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "-5"

@decimal
Scenario: Divide a decimal number by a non decimal number
    Given I enter "10" into the calculator
	And I hit "decimal"
	And I enter "2" into the calculator
    And I hit "divide"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "5.1"
