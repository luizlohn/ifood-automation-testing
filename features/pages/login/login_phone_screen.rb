# frozen_string_literal: true

# Class to get elements and make actions
class LoginPhoneScreen
  attr_reader :field, :next_button, :not_customer_yet

  def initialize(field, next_button, not_customer_yet)
    @field = field
    @next_button = next_button
    @not_customer_yet = not_customer_yet
  end

  def insert_field(number)
    @field.send_keys number
  end

  def click_to_next
    @next_button.click
  end

  def click_to_register
    @not_customer_yet.click
  end
end
