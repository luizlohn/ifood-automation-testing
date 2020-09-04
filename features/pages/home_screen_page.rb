# frozen_string_literal: true

# Class to get elements and make actions
class HomeScreen
  attr_reader :register_button, :simulator_button, :login_button

  def initialize(register_button, simulator_button, login_button)
    @register_button = register_button
    @simulator_button = simulator_button
    @login_button = login_button
  end

  def click_to_register
    @register_button.click
  end

  def click_to_simulate
    @simulator_button.click
  end

  def click_to_login
    @login_button.click
  end
end
