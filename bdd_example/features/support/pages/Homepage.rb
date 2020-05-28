# encoding: utf-8

class HomePage

  include PageObject

  img :page_logo, xpath: "//img[contains(@class, 'App-logo')]"
  h1 :page_title, xpath: "//h1[contains(@class, 'App-title')]"
  div :list_of_names_panel, xpath: "//div[contains(@class, 'col-md-3')]"
  div :details_panel, xpath: "//div[contains(@class, 'col-md-6')]"
  h3 :customer_name, xpath: "//div[contains(@class, 'col-md-3')]//h3[contains(@class, 'panel-title')]"
  p :customer_email_address, xpath: "//div[contains(@class, 'col-md-3')]//div[contains(@class, 'panel-body')]/p[1]"
  p :customer_telephone_number, xpath: "//div[contains(@class, 'col-md-3')]//div[contains(@class, 'panel-body')]/p[2]"
  button :view_details, xpath: "//div[contains(@class, 'col-md-3')]//div[contains(@class, 'panel-body')]/button"
  p :name, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[1]"
  p :email, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[2]"
  p :phone, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[3]"
  p :city, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[4]"
  p :state, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[5]"
  p :country, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[6]"
  p :organization, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[7]"
  p :job_profile, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[8]"
  p :add_info, xpath: "//div[contains(@class, 'col-md-6')]//div[contains(@class, 'panel-body')]/p[9]"

  def page_logo_displayed?
    page_logo_element.visible?
  end

  def page_title_displayed?
    page_title_element.text == "Selenium Test"
  end

  def list_of_names_panel_displayed?
    list_of_names_panel_element.wait_until_present(30)
    list_of_names_panel_element.visible?
  end

  def details_panel_displayed?
    details_panel_element.wait_until_present(30)
    details_panel_element.visible?
  end

  def customer_full_name
    customer_name_element.wait_until_present(30)
    customer_name_element.text
  end

  def customer_email_address
    customer_email_address_element.wait_until_present(30)
    customer_email_address_element.text
  end

  def customer_telephone_number
    customer_telephone_number_element.wait_until_present(30)
    customer_telephone_number_element.text
  end

  def view_details_displayed?
    view_details_element.wait_until_present(30)
    view_details_element.visible?
  end

  def click_view_details
    view_details_element.wait_until_present(30)
    view_details_element.click
  end

  def full_details_displayed?
    name_element.wait_until_present(30)
    name_element.text == "Name : John Smith" and
    email_element.text == "Email : jsmith@test.com" and
    phone_element.text == "Phone : 0208092029" and
    city_element.text == "City : London" and
    state_element.text == "State : Greater London" and
    country_element.text == "Country : England" and
    organization_element.text == "Organization : Company 1" and
    job_profile_element.text == "Job Profile : Software Developer" and
    add_info_element.text == "Additional Info : Has Bought a lot of products before and a high Value Customer"
  end

end