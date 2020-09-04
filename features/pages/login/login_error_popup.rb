# frozen_string_literal: true

# Class to get elements and make actions
class LoginErrorPopup
  attr_reader :message, :confirm_button

  def initialize(message, confirm_button)
    @message = message
    @confirm_button = confirm_button
  end
  
  def message_text
    @message.text
  end

  def confirm_click
    @confirm_button.click
  end
end
