Feature: Post a job

Scenario Outline: Users search for a variety of items
  Given a user goes to Amazon
  When the user looks for <query> and 
  Then the results returned will display <query>

  Examples:
  | client  | email           | title  | location  | salary | currency | description |
  | ro      | test@0test.test | title1 | location1 | 1000   | u        | small comp  |
  | ko      | test@1test.test | title2 | location2 | 2000   | no       | medium comp |
  | mo      | test@2test.test | title3 | location3 | 3000   | sd       | large comp  |