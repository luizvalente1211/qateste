require_relative 'helpers.rb'
   After do |scenario|
    @helper = Helper.new
    @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.take_screenshot(@nome, 'screenshots/test_failed') if   scenario.failed?
    unless @helper.take_screenshot(@nome, 'screenshots/test_passed')
   end
end