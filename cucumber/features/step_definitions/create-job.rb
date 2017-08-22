Given(/^I chosen to create new job$/) do
  @browser.goto 'http://new.timetoriot.com'
  @new_job = @header.go_to_jobs_list().add_new_job()
end

When(/^I create new job with valid data$/) do
  @new_job.set_compay_name('co')
          .set_compay_description('new test company')
          .set_email('test1@test.test')
          .set_title('test title')
          .set_location('test location')
          .set_salary('1000')
          .set_currency('u')
          .set_publish_at('22')
          .set_apply_by('23')
end

Then(/^I click confirm button/) do 
  @new_job.confirm_new_job()
end

And(/^My new job success created/) do
  assert_it("Title should contains 'Creative jobs'") {@browser.title.includes?'test' == true}
end
