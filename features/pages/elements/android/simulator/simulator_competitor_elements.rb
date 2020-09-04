# frozen_string_literal: true

require './features/pages/simulator/simulator_competitor_screen_page'
include ::Appium::Flutter::Finder

module Android
  # Class with element identify
  class SimulatorCompetitorElements < SimulatorCompetitorScreen

    def initialize

      competitor_name = Element.new($driver, finder: by_text('input_title_edit_view'))
      next_competitor = Element.new($driver, finder: by_text('input_prev_button'))

      super(competitor_name, next_competitor)
    end
  end
end
