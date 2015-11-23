$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../step_definitions/')

require 'yaml'
require 'rspec'
require 'capybara'
require 'capybara/webkit'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'pry'

Capybara::Screenshot.prune_strategy = :keep_last_run

Capybara.configure do |config|
  config.match = :prefer_exact
  config.save_and_open_page_path = File.dirname(__FILE__) + '/../../tmp/'
  config.default_driver = :webkit
end

Capybara::Webkit.configure do |config|
  # Enable debug mode. Prints a log of everything the driver is doing.
  config.debug = ENV['SMOKE_DEBUG'] || false

  # We are robots we don't like images
  config.skip_image_loading

  # We do not want to hit analitycs etc.
  config.block_unknown_urls
  config.allow_url('nature.com')
  config.allow_url('palgrave-journals.com')
  config.allow_url('readcube.com')
end

Before do
  $setup_prep ||= false

  unless $setup_prep
    target = case ENV['TARGET']
             when 'live' then 'www'
             when 'test' then 'test-www'
             else 'local'
             end

    $site = Helper::Site.new(target)
    $user = Helper::User.new($site, credentials)

    step 'get authentication from SSO'
    $setup_prep = true
  end
end

def credentials
  YAML::load(File.open('config/users.yml'))['users'][ENV['USER']]
end
