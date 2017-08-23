Feature: Job

Scenario: I success create new job
  Given I chosen to create new job 
  When I fills valid data
  And I confirm create new job 
  Then I see success message 
