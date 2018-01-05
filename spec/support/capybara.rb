require 'capybara/poltergeist'
# not sure what this does
Capybara.asset_host = 'http://localhost:3001'
# if your testing while your dev server is running, it's important to specify a different port
# for testing or capybara will get confused and run things on your dev server rather than test

Capybara.server_port = 3001
Capybara.app_host = 'http://localhost:3001'

# this is needed to let the wait_for_ajax helper wait long enough for ajax to load
Capybara.default_max_wait_time = 10

# poltergeist is a headless browser, runs a little faster than the chromedriver

# web driver defaults to poltergeist unless CHROME=TRUE preceeds rspec command
# for example: CHROME=TRUE foreman run bundle exec rspec
unless ENV['CHROME'].present?
  Capybara.javascript_driver = :poltergeist
else
  ######### Chrome Setup #################
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.javascript_driver = :selenium
  #########----- this may be useful if you need to stick a binding in and inspect the DOM or something..
  ########################################
end
