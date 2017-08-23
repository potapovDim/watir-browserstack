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
    @application_link = '#link'
    @date_picker_day = '.btn-secondary'
    @cancel_button = '#cancel'
    @post_button = '#save'
    @description_area = '.fr-element.fr-view'
    @dropdown_item = '.dropdown-item'
  end

  def set_compay_name(value)
    @browser.element(css: @company_studio_name).focus
      for i in 0..@browser.element(css: @company_studio_name).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_studio_name).send_keys value
    @browser.elements(css: @dropdown_item)[0].fire_event 'click'
    return self
  end

  def set_compay_description(value)
    @browser.element(css: @description_area).focus
      for i in 0..@browser.element(css: @description_area).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @description_area).send_keys value
    return self
  end

  def set_email(value)
    @browser.element(css: @company_email).focus
    for i in 0..@browser.element(css: @company_email).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_email).send_keys value
    return self
  end

  def set_application_link(value)
    @browser.element(css: @application_link).focus
    for i in 0..@browser.element(css: @application_link).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @application_link).send_keys value
    return self
  end

  def set_title(value)
    @browser.element(css: @company_title).focus
    for i in 0..@browser.element(css: @company_title).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_title).send_keys value
    return self
  end

  def set_location(value)
    @browser.element(css: @company_location).focus
    for i in 0..@browser.element(css: @company_location).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_location).send_keys value
    return self
  end
  
  def set_salary(value)
    @browser.element(css: @company_salary).focus
    for i in 0..@browser.element(css: @company_salary).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_salary).send_keys value
    return self
  end

  def set_currency(value)
    @browser.element(css: @company_studio_name).focus
    for i in 0..@browser.element(css: @company_studio_name).value.length - 1
      @browser.send_keys :backspace
    end
    @browser.element(css: @company_studio_name).send_keys value
    @browser.elements(css: @dropdown_item)[0].fire_event 'click'
    return self
  end

  def set_apply_by()
    @browser.element(css: @job_apply_by).fire_event 'focus'
    @browser.element(text:(Time.new.day.to_i + 1).to_s).click
    @browser.send_keys :escape
    return self
  end
  
  def set_publish_at()
    @browser.element(css: @job_publish_at).fire_event 'focus'
    @browser.element(text: (Time.new.day.to_i).to_s).click
    @browser.send_keys :escape
    return self
  end


  def confirm_new_job
    @browser.element(css: @post_button).fire_event 'click'
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