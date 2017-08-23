Given(/^User create new job/) do
  @browser.goto 'http://new.timetoriot.com'
  @browser.window.resize_to 1600, 1200
  @new_job = @header.go_to_jobs_list().add_new_job()
end

When(/^User fills data valid data/) do
  @new_job.set_compay_name('co')
          .set_compay_description('new test company')
          .set_email('test1@test.test')
          .set_title('test title')
          .set_location('test location')
          .set_salary('1000')
          .set_currency('u')
          .set_publish_at()
          .set_apply_by()
end

Then(/^User click confirm button/) do
  @new_job.confirm_new_job()
end

And(/^User see success message/) do
  assert_it("Title should contains 'Creative jobs'") {@browser.title.include?'test'}
end
