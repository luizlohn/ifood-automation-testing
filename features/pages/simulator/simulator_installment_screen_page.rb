# frozen_string_literal: true

# Some action on Installment Section on Simulator Screen
class SimulatorInstallmentScreen
  attr_reader :next_installment, :installment_type

  def initialize(next_installment, installment_type)
    @next_installment = next_installment
    @installment_type = installment_type
  end

  def choose_installment(value)
    value.times do
      @next_installment.click
    end
  end

  def installment_type_text
    @installment_type.text
  end
end
