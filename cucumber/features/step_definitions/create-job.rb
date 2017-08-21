Given(/^a user goes to Amazon$/) do
  @browser.goto "http://www.amazon.com"
end

When(/^the user looks for (.*)$/) do |query|
  @browser.text_field(:id => "twotabsearchtextbox").set "#{query}"
  @browser.send_keys :return
end

Then(/^the results returned will display (.*)$/) do |query|
  @browser.li(:id => "result_2").wait_until_present
  assert_it ('Verfied Results Display'){@browser.text.include? "#{query}"}
end
