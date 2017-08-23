Feature: Job

Scenario: I success create new job
  Given I chosen to create new job 
  When I fills valid data
  And I confirm create new job 
  Then I see success message 

  # Examples:
  # | client  | email           | title  | location  | salary | currency | description |  
  # | ro      | test@0test.test | title1 | location1 | 1000   | u        | small comp  |
  # | ko      | test@1test.test | title2 | location2 | 2000   | no       | medium comp |
  # | mo      | test@2test.test | title3 | location3 | 3000   | sd       | large comp  |
