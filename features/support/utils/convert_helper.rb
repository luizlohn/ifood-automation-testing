# frozen_string_literal: true

# Get only the fee from text
class ConvertHelper
  def parse_to_number(string)
    fee_match = string.scan(/(\d+[.,]\d+)/).flatten.first
    # converting matched string to float
    fee_match.tr(',', '.').to_f
  end
end
