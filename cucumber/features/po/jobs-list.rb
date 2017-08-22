class JobsList
  def initialize(browser)
    @browser = browser
    @add_button = '#add'
  end

  def add_new_job
    @browser.element(css: @add_button).fire_event 'click'
    return NewJob.new @browser
  end
end