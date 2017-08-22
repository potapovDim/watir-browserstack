Feature: Post a job

Scenario Outline: Users create new job
  Given a user goes to timetoriot
  When the user go to jobs list <client>
  Then the user go to add new job <email>

  Examples:
  | client  | email           | title  | location  | salary | currency | description |  
  | ro      | test@0test.test | title1 | location1 | 1000   | u        | small comp  |
  | ko      | test@1test.test | title2 | location2 | 2000   | no       | medium comp |
  | mo      | test@2test.test | title3 | location3 | 3000   | sd       | large comp  |
