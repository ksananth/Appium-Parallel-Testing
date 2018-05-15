require 'rspec/expectations'
require 'appium_lib'
#require 'cucumber/ast'

class AppiumWorld
end


#if ENV['ADEVICENAME']=='Google_Nexus_5___5_1_0___API_22___1080x1920'
#	caps = Appium.load_appium_txt file: File.expand_path("./../Google_Nexus_5___5_1_0___API_22___1080x1920/appium.txt", __FILE__), verbose: true
#els
if ENV['ADEVICENAME']=='Redmi4'
	caps = Appium.load_appium_txt file: File.expand_path("./../Redmi4/appium.txt", __FILE__), verbose: true
else
caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
end


Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
