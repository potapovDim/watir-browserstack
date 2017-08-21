class PostNewJob
  def initialize(browser)
    @browser = browser
    @company_studio_name = '#company'
    @company_email = '#email'
    @company_location = '#location'
    @company_title = '#title'
    @company_salary = '#salary'
    @company_currency = '#currency'
    @job_publish_at = '#publish-at'
    @job_apply_by = '#apply-by'
    @date_picker_day = '.ngb-dp-day'
    @cancel_button = '#cancel'
    @post_button = '#save'
  end

  def clear_and_set_value(selector, value)
    @browser.element(css: @email_input).focus
      for i in 0..@browser.element(css: selector).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: selector).send_keys value
    return self
  end
  
  def click_button(selector)
    @browser.element(css: selector).fire_event 'click'
    return self
  end
end
