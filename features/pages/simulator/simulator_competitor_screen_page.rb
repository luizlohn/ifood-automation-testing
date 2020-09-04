# frozen_string_literal: true

# Class to get elements and make actions
class SimulatorCompetitorScreen
  attr_reader :competitor_name, :next_competitor

  def initialize(competitor_name, next_competitor)
    @competitor_name = competitor_name
    @next_competitor = next_competitor
  end

  def choose_competitor(value)
    next_competitor_click until competitor_name_text.eql?(value)
  end

  def competitor_name_text
    @competitor_name.text
  end

  def next_competitor_click
    @next_competitor.click
  end
end
