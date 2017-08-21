require 'watir-webdriver'
include Selenium
capabilities = WebDriver::Remote::Capabilities.firefox(:javascript_enabled => true)

b = Watir::Browser.new(
  :remote,
  :url => 'http://127.0.0.1:4444/wd/hub',
  :desired_capabilities => capabilities)
# b = Watir::Browser.new :firefox
b.goto "www.google.com"
b.text_field(:name => "q").set "Watir-WebDriver"
b.button(:name => "btnG").click
b.div(:id => "resultStats").wait_until_present
puts "Displaying page: '#{b.title}' with results: '#{b.div(:id => "resultStats").text}'"
b.close