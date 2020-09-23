require 'cucumber'
require 'capybara/dsl'
require 'httparty'
require 'selenium-webdriver'



Capybara.configure do |config|
    #selenium   selenium_chrome   selenium_chrome_healess
 
     config.default_driver = :selenium_chrome
     config.default_max_wait_time = 15
     Capybara.page.driver.browser.manage.window.maximize
     
     
  end