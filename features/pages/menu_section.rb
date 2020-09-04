# frozen_string_literal: true

# Class to get elements and make actions
class MenuSection
  attr_reader :support_button, :transactions_button, :calculator_button, :settings_button

  def initialize(support_button, transactions_button, calculator_button, settings_button)
    @support_button = support_button
    @transactions_button = transactions_button
    @calculator_button = calculator_button
    @settings_button = settings_button
  end

  def click_to_support
    @support_button.click
  end

  def click_to_dashboard
    @transactions_button.click
  end

  def click_to_calculator
    @calculator_button.click
  end

  def click_to_settings
    @settings_button.click
  end

end
