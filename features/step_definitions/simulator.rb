# frozen_string_literal: true

VALUES = YAML.safe_load(
  ERB.new(File.read(File.join(File.dirname(__FILE__), '../data/simulator.yml')))
      .result
)

Given('I on app home screen') do
  $OS::HomeScreenElements.new.click_to_simulate
end

When('I type a value to compare') do
  @price = VALUES['value_' + rand(1..4).to_s]
  @simulator = $OS::SimulatorPriceElements.new
  @simulator.input_sale_value(@price.to_s + '00')
end

When('I choose a installments') do
  sleep 5
  @simulator.choose_slice_position(2)
  $OS::SimulatorInstallmentElements.new.choose_installment(VALUES['installment_' + rand(1..3).to_s])
end

When('I choose competitor {string}') do |string|
  @simulator.choose_slice_position(3)
  $OS::SimulatorCompetitorElements.new.choose_competitor(string)
end

Then('I should see the comparison result') do
  @simulator = $OS::SimulatorPriceElements.new
  value_expected = @simulator.calculate_fee(@price.to_f, @simulator.competitor_fee_value)
  begin
    expect(value_expected.round(2)).to eq(@simulator.competitor_receive_value)
  rescue StandardError
    $driver.back
  end
  $driver.back
end
