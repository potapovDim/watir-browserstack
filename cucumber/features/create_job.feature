Feature: Job

Scenario: Users create new job
  Given I chosen to create new job
  When I create new job with valid data
  Then I click confirm button
  And My new job success created

  # Examples:
  # | client  | email           | title  | location  | salary | currency | description |  
  # | ro      | test@0test.test | title1 | location1 | 1000   | u        | small comp  |
  # | ko      | test@1test.test | title2 | location2 | 2000   | no       | medium comp |
  # | mo      | test@2test.test | title3 | location3 | 3000   | sd       | large comp  |
