# frozen_string_literal: true

require './features/pages/simulator/simulator_price_screen_page'
include ::Appium::Flutter::Finder

module IOS
  # Class with element identify
  class SimulatorPriceElements < SimulatorPriceScreen

    def initialize

      input_value = Element.new($driver, finder: by_value_key('input_value'))
      pagination = Element.new($driver, finder: by_value_key('pagination_ball'))
      competitor_fee_text = Element.new($driver, finder: by_text('competitor_text_view'))
      competitor_value = Element.new($driver, finder: by_text('competitor_value_text_view'))
      infinitepay_fee_text = Element.new($driver, finder: by_text('infinite_pay_text_view'))
      infinitepay_value = Element.new($driver, finder: by_text('infinite_pay_value_text_view'))

      super(input_value,
        pagination,
        competitor_fee_text,
        competitor_value,
        infinitepay_fee_text,
        infinitepay_value)
    end
  end
end
