# frozen_string_literal: true

require './features/pages/login/login_error_popup'
include ::Appium::Flutter::Finder

module Android
  # Class with element identify
  class LoginErrorElements < LoginErrorPopup

    def initialize

      message = Element.new($driver, finder: by_value_key('alert_description'))
      confirm_button = Element.new($driver, finder: by_text('OK'))

      super(message, confirm_button)
    end
  end
end
