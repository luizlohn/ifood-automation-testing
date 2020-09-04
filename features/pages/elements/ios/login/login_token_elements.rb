# frozen_string_literal: true

require './features/pages/login/login_token_screen'
include ::Appium::Flutter::Finder

module IOS
  # Class with element identify
  class LoginTokenElements < LoginTokenScreen

    def initialize

      token = Element.new($driver, finder: by_value_key('login_token_field'))
      next_button = Element.new($driver, finder: by_value_key('login_next_button'))

      super(token, next_button)
    end
  end
end
