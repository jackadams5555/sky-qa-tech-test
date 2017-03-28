Feature: Subtraction

Scenario: Subtract a number from another
    Given I enter "5" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "0"

Scenario: Subtract a number twice from another
    Given I enter "20" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "10"

@negative
Scenario: Subtract a postive number from a negative number
    Given I hit "subtract"
	And I enter "5" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "-10"

@decimal
Scenario: Subtract a decimal from a non-decimal number
    Given I enter "5" into the calculator
	And I hit "."
	And I enter "2" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
    And I hit "equals"
    Then I see a result of "0.2"

@decimal
Scenario: Subtract a decimal from a decimal
    Given I enter "5" into the calculator
	And I hit "."
	And I enter "2" into the calculator
    And I hit "subtract"
    And I enter "5" into the calculator
	And I hit "."
	And I enter "2" into the calculator
    And I hit "equals"
    Then I see a result of "0"