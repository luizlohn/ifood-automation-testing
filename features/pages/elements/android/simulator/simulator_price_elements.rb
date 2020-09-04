# frozen_string_literal: true

require './features/pages/simulator/simulator_price_screen_page'
include ::Appium::Flutter::Finder

module Android
  # Class with element identify
  class SimulatorPriceElements < SimulatorPriceScreen

    def initialize

      input_value = Element.new($driver, finder: by_text('input_title_edit_view'))
      first_slice = Element.new($driver, finder: by_text('dot_0_view'))
      second_slice = Element.new($driver, finder: by_text('dot_1_view'))
      third_slice = Element.new($driver, finder: by_text('dot_2_view'))
      competitor_fee_text = Element.new($driver, finder: by_text('competitor_text_view'))
      competitor_value = Element.new($driver, finder: by_text('competitor_value_text_view'))
      infinitepay_fee_text = Element.new($driver, finder: by_text('infinite_pay_text_view'))
      infinitepay_value = Element.new($driver, finder: by_text('infinite_pay_value_text_view'))

      super(input_value,
        first_slice,
        second_slice,
        third_slice,
        competitor_fee_text,
        competitor_value,
        infinitepay_fee_text,
        infinitepay_value)
    end
  end
end
