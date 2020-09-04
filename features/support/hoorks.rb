# frozen_string_literal: true

include ::Appium::Flutter::Finder

After('@login') do
  $driver.reset
end
