class LoginHelper

  LOGINDATA = YAML.safe_load(
    ERB.new(File.read(File.join(File.dirname(__FILE__), '../../data/login.yml')))
        .result
  )

  def valid_login
    $OS::HomeScreenElements.new.click_to_login
    @login_phone = $OS::LoginPhoneElements.new
    @login_phone.insert_field(LOGINDATA['phone'])
    $driver.hide_keyboard
    @login_phone.click_to_next
    @login_token = $OS::LoginTokenElements.new
    @login_token.insert_token(LOGINDATA['token'])
    $driver.hide_keyboard
    @login_token.click_to_next
  end

end
