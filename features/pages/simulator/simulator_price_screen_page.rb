# frozen_string_literal: true

# Class to get elements and make actions
class SimulatorPriceScreen
  attr_reader :input_value,
              :pagination,
              :competitor_fee_text,
              :competitor_value,
              :infinitepay_fee_text,
              :infinitepay_value

  def initialize(input_value, pagination, competitor_fee_text, competitor_value, infinitepay_fee_text, infinitepay_value)
    @input_value = input_value
    @pagination = pagination
    @competitor_fee = competitor_fee_text
    @competitor_value = competitor_value
    @infinitepay_text = infinitepay_fee_text
    @infinitepay_value = infinitepay_value
  end

  def input_sale_value(value)
    @input_value.click
    @input_value.send_keys value
  end

  def choose_slice_position(position)
    case position
    when 1
      @pagination[0].click
    when 2
      @pagination[1].click
    when 3
      @pagination[2].click
    else
      "You gave me #{position} -- This is not a valid position"
    end
  end

  def competitor_fee_value
    ConvertHelper.new.parse_to_number(@competitor_fee.text)
  end

  def competitor_receive_value
    @competitor_value.text
    ConvertHelper.new.parse_to_number(@competitor_value.text)
  end

  def infinitepay_fee_value
    ConvertHelper.new.parse_to_number(@infinitepay_text.text)
  end

  def infinitepay_receive_value
    ConvertHelper.new.parse_to_number(@infinitepay_value.text)
  end

  def calculate_fee(price, fee)
    competitor_fee_price = price * fee / 100
    price - competitor_fee_price
  end
end
