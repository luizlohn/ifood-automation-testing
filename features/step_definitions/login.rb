LOGINDATA = YAML.safe_load(
  ERB.new(File.read(File.join(File.dirname(__FILE__), '../data/login.yml')))
      .result
)

When("I click to login") do
  $OS::HomeScreenElements.new.click_to_login
end

When("I fill a phone number") do
  @login_phone = $OS::LoginPhoneElements.new
  @login_phone.insert_field(LOGINDATA['phone'])
  @login_phone.click_to_next
end

When("I fill a valid token") do
  @login_token = $OS::LoginTokenElements.new
  @login_token.insert_token(LOGINDATA['token'])
  @login_token.click_to_next
end

Then("I should see the dashboard") do
  $OS::DIRFPopUpElements.new
  LogoutHelper.new
end

When("I fill a invalid token") do
  @login_token = $OS::LoginTokenElements.new
  @login_token.insert_token(LOGINDATA['invalid_token'])
  @login_token.click_to_next
end

Then("I should see the messege: {string}") do |string|
  error = $OS::LoginErrorElements.new
  expect(error.message_text).to eq(string)
  error.confirm_click
end

When("I fill a invalid phone number") do
  @login_phone = $OS::LoginPhoneElements.new
  @login_phone.insert_field(LOGINDATA['invalid_phone'])
  @login_phone.click_to_next
end
