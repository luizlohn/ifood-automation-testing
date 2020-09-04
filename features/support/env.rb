# frozen_string_literal: true

# First file that load
require 'yaml'
require 'selenium-cucumber'
require 'appium_lib_core'
require 'appium_flutter_finder'
require 'rspec/expectations'

ENV['OPERATION_SYSTEM'] = 'ios' unless ENV.key? 'OPERATION_SYSTEM'
ENV['RUNNER'] = 'local' unless ENV.key? 'RUNNER'
ENV['ENVIRONMENT'] = 'prod' unless ENV.key? 'ENVIRONMENT'

ENVIRONMENT = YAML.load_file("#{Dir.pwd}/features/support/config/environment.yml")[ENV['ENVIRONMENT']]

def load_module(path)
  Dir[path].each { |file| require file }
end

if ENV['OPERATION_SYSTEM'].eql?('ios')
  @caps = {
    caps: {
      platformName: 'iOS',
      automationName: 'flutter',
      platformVersion: '13.5',
      deviceName: 'iPhone SE (2nd generation)',
      clearSystemFiles: true,
      autoAcceptAlerts: true,
      app: "#{Dir.pwd}/features/data/app/Runner.zip",
      #noReset: true,
    },
    appium_lib: {
      wait_timeout: 5,
      server_url: 'http://0.0.0.0:4723/wd/hub',
      wait_interval: 1
    }
  }.freeze
  load_module('./features/pages/elements/ios/*.rb')
  $OS = IOS
elsif ENV['OPERATION_SYSTEM'].eql?('android')
  @caps = {
    caps: {
      platformName: 'android',
      automationName: 'uiautomator2',
      deviceName: 'emulator',
      appWaitActivity: 'io.cloudwalk.infinitepaydash.ui.unregistered.activity.IPDWelcomeActivity',
      autoGrantPermissions: true,
      app: "#{Dir.pwd}/features/data/app/infinitepay_146_b81-prd.apk",
      newCommandTimeout: 30
    },
    appium_lib: {
      export_session: true,
      wait_timeout: 20,
      wait_interval: 1,
      server_url: 'http://0.0.0.0:4723/wd/hub'

    }
  }.freeze
  load_module('./features/pages/elements/android/*.rb')
  $OS = Android
else
  raise("Not supported platform #{ENV['PLATFORM']}")
end


core = ::Appium::Core.for(@caps)

$driver = core.start_driver

$wait = Selenium::WebDriver::Wait.new(timeout: 20)
