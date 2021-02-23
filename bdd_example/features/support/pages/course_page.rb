# encoding: utf-8

class CoursePage

  include PageObject

  #page elements
  div :course_image, id: "pa_602f99d67dab9_p1738fe84439-section__content"
  h1 :course_title, id: "pa_602f99d67dab9_p1739076bba0-projectTitle"
  div :course_content, id: "pa_602f99d67dab9_p1739076bba1-text"
  span :start_button, id: "pa_602f99d67dab9_p15766ba6ccd-button__text"
  h3 :working_with_chemicals_title, id: "pa_602f99d68219c_p17390dc8e75-title"

  def course_image_displayed?
    course_image_element.wait_until_present(60)
    course_image_element.visible?
  end

  def course_title
    course_title_element.text
  end

  def course_content
    course_content_element.text
  end

  def click_start_button
    start_button_element.click
  end

  def working_with_chemicals
    working_with_chemicals_title_element.wait_until_present(60)
    working_with_chemicals_title_element.text
  end


end