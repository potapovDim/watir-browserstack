require 'watir'
require 'cucumber'

Before do |scenario|
  def assert_it message, &block
    begin
      if (block.call)
        puts "Assertion PASSED for #{message}"
      else
        puts "Assertion FAILED for #{message}"
        fail('Test Failure on assertion')
      end
    rescue => e
      puts "Assertion FAILED for #{message} with exception '#{e}'"
      fail('Test Failure on assertion')
    end
  end
  p "Starting #{scenario}"

  if ENV['REMOTE']
    b_name = ENV['BROWSER'].downcase 
    print b_name
    case b_name
      when 'firefox'
        @caps = Selenium::WebDriver::Remote::Capabilities.firefox(
          :javascript_enabled => true,
          :marionette => true)
      when 'chrome'
        @caps = Selenium::WebDriver::Remote::Capabilities.chrome(
          :javascript_enabled => true,
          :marionette => true)
    end
    @browser = Watir::Browser.new(
      :remote,
      :url => "http://127.0.0.1:4444/wd/hub",
      :desired_capabilities => @caps) 
  else
    @browser = Watir::Browser.new :chrome   
  end
end
After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
  @browser.close
end

