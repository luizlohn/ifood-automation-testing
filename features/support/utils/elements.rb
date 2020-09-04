# frozen_string_literal: true

# Verifify if element is present
class ElementsHelper
  def present?(how, what)
    $driver.wait { 5 }
    result = !$driver.find_elements(how, what).empty?
    $driver.find_element(how, what).displayed? if result
  end

  def array_element_compare(selector, element, text)
    button_array = $driver.find_elements(selector, element)
    button_array.each do |btn|
      btn.click if btn.text == text
    end
  end
end
