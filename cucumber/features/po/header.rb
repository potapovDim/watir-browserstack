class Header
  def initialize(browser)
    @browser = browser
    @job = '#menu-jobs'
  end

  def go_to_jobs_list
    @browser.element(css: @job).fire_event 'click'
    return JobsList.new @browser
  end
end