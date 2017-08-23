Feature: Job

Scenario: I failed create new job 
  Given I chosen to create new job
  When I not filled data and clear all inputs 
  And I try to confirm create new job
  Then I see input error messages
