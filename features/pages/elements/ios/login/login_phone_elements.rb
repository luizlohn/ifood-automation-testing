# frozen_string_literal: true

require './features/pages/login/login_phone_screen'
include ::Appium::Flutter::Finder

module IOS
  # Class with element identify
  class LoginPhoneElements < LoginPhoneScreen

    def initialize

      field = Element.new($driver, finder: by_value_key('login_number_field'))
      next_button = Element.new($driver, finder: by_value_key('login_next_button'))
      not_customer_yet = Element.new($driver, finder: by_value_key('login_notpart_button'))

      super(field, next_button, not_customer_yet)
    end
  end
end
