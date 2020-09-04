# frozen_string_literal: true

# Class to get elements and make actions
class LoginTokenScreen
  attr_reader :token, :next_button

  def initialize(token, next_button)
    @token = token
    @next_button = next_button
  end

  def insert_token(number)
    @token.send_keys number
  end

  def click_to_next
    @next_button.click
  end
end
