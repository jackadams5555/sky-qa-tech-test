Feature: Addition

Scenario: Add two numbers together
    Given I enter "5" into the calculator
    And I hit "add"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "10"

Scenario: Add three numbers together
    Given I enter "5" into the calculator
    And I hit "add"
    And I enter "10" into the calculator
    And I hit "add"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "17"

Scenario: Add two numbers and multiply them by another
    Given I enter "5" into the calculator
    And I hit "add"
    And I enter "10" into the calculator
    And I hit "multiply"
    And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "30"

@negative
Scenario: Add a negative number to a positive number
    Given I hit "subtract"
	And I enter "5" into the calculator
    And I hit "add"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "0"

@decimal
Scenario: Add a decimal number to a another number
    Given I enter "5" into the calculator
	And I hit "decimal"
	And I enter "1" into the calculator
    And I hit "add"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "10.1"

@decimal
Scenario: Add a decimal number to a another decimal
    Given I enter "5" into the calculator
    And I hit "decimal"
	And I enter "1" into the calculator
    And I hit "add"
    And I enter "5" into the calculator
	And I hit "decimal"
	And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "10.3"