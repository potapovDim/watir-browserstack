Given(/^a user goes to timetoriot$/) do
  @new_insta = 10 
end

When(/^the user go to jobs list (.*)$/) do |clien|
  @one_new =  @new_insta+ 10
  #@command_executor.click_element(@selectors_list.menu_jobs)
  assert_it("Title should contains 'Creative jobs'") {@one_new ==20}
end

Then(/^the user go to add new job (.*)$/) do |email|
  @one_more_new = @one_new -5
  #@command_executor.click_element(@selectors_list.menu_jobs)
  assert_it("Title should contains 'New job'") {@one_more_new == 15}
end
