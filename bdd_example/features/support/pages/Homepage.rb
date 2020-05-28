# encoding: utf-8

class HomePage

  include PageObject

  img :page_logo, xpath: "//img[contains(@class, 'App-logo')]"
  h1 :page_title, xpath: "//h1[contains(@class, 'App-title')]"
  div :list_of_names_panel, xpath: "//div[contains(@class, 'col-md-3')]"

  def page_logo_displayed?
    page_logo_element.visible?
  end


end