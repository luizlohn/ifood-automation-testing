class LogoutHelper

  def initialize
    $OS::MenuSectionElements.new.click_to_settings
    logout_elements = $OS::SettingsScreenElements.new
    logout_elements.click_to_logout
    logout_elements.click_to_confirm_logout
  end

end
