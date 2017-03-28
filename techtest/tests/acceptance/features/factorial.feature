Feature: Factorial

Scenario: Determine the factorial of a number
    Given I enter "5" into the calculator
    And I hit "factorial"
    And I hit "equals"
    Then I see a result of "120"

Scenario: Determine the factorial of a number and press factorial again
    Given I enter "3" into the calculator
    And I hit "factorial"
	And I hit "factorial"
    And I hit "equals"
    Then I see a result of "720"

@negative
Scenario: Determine the factorial of a negative number
    Given I hit "subtract"
	And I enter "3" into the calculator
	And I hit "factorial"
    And I hit "equals"
    Then I see a result of "invalid input"
