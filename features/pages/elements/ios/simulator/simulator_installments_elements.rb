# frozen_string_literal: true

require './features/pages/simulator/simulator_installment_screen_page'
include ::Appium::Flutter::Finder

module IOS
  # Class with element identify
  class SimulatorInstallmentElements < SimulatorInstallmentScreen

    def initialize

      next_installment = Element.new($driver, finder: by_text('input_next_button'))
      installment_type = Element.new($driver, finder: by_text('input_title_edit_view'))

      super(next_installment, installment_type)
    end
  end
end
