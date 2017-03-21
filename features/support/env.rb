require 'rake'
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'


Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize