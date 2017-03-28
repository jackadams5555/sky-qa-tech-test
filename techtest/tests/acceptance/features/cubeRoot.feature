Feature: CubeRoot

Scenario: Determine the cuberoot of a number
    Given I enter "8" into the calculator
    And I hit "cubeRoot"
    And I hit "equals"
    Then I see a result of "2"

Scenario: Determine the cuberoot of a number and cuberoot it again
    Given I enter "512" into the calculator
    And I hit "cubeRoot"
	And I hit "cubeRoot"
    And I hit "equals"
    Then I see a result of "2"

@negative
Scenario: Determine the cuberoot of a negative number
    Given I hit "subtract"
	And I enter "8" into the calculator
    And I hit "cubeRoot"
    And I hit "equals"
    Then I see a result of "-2"
