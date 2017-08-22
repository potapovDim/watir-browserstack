class NewJob
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
    @description_area = '.fr-element.fr-view'
    @menu_jobs = '#menu-jobs'
    @add_new_job = '#add'
  end

  def clear_and_set_value(value)
    @browser.element(css: @company_studio_name).focus
      for i in 0..@browser.element(css: selector).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: selector).send_keys value
    return self
  end

  def navigate(url)
    @browser.goto url
  end

  def get_input_value(selector)
    return @browser.element(css: selector).value
  end

  def get_browser_title
    return @browser.title
  end

  def get_browser_url
    return @browser.url
  end

  def click_element(selector)
    @browser.element(css: selector).fire_event 'click'
    return self
  end
end


# @company_studio_name = '#company'
# @company_email = '#email'
# @company_location = '#location'
# @company_title = '#title'
# @company_salary = '#salary'
# @company_currency = '#currency'
# @job_publish_at = '#publish-at'
# @job_apply_by = '#apply-by'
# @date_picker_day = '.ngb-dp-day'
# @cancel_button = '#cancel'
# @post_button = '#save'
# @description_area = '.fr-element.fr-view'
# @menu_jobs = '#menu-jobs'
# @add_new_job = '#add'