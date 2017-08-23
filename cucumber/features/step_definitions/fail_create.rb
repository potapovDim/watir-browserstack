Given(/^I chosen to create new job/) do
  @browser.goto 'http://new.timetoriot.com'
  @browser.window.resize_to 1600, 1200
  @new_job = @header.go_to_jobs_list().add_new_job()
end

When(/^I not filled data and clear all inputs/) do
  @new_job.clear_input_value('company')
          .clear_input_value('email')
          .clear_input_value('currency')
          .clear_input_value('link')
          .clear_input_value('title')
          .clear_input_value('location')
          .clear_input_value('publish')
          .clear_input_value('apply')
          .clear_input_value('description')
end

And(/^I try to confirm create new job/) do
  @new_job.confirm_new_job()
end

Then(/^I see input error messages/) do
  assert_it("Should get input error") {@new_job.get_data_error('company') == 'Company is required'}
  assert_it("Should get input error") {@new_job.get_data_error('email') == 'Either e-mail or application link is required'}
  assert_it("Should get input error") {@new_job.get_data_error('link') == 'Either e-mail or application link is required'}
  assert_it("Should get input error") {@new_job.get_data_error('currency') == 'Currency is required'}
  assert_it("Should get input error") {@new_job.get_data_error('publish') == 'Date job should be published at is required'}
  assert_it("Should get input error") {@new_job.get_data_error('apply') == 'Date applicants can apply job by is required'}
  assert_it("Should get input error") {@new_job.get_data_error('description') == 'Description is required'}
end
