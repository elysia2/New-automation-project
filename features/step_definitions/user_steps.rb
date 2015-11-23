Given /^Pending/ do
  pending
end

Given /^I am a logged in user/ do
  page.driver.set_cookie("login=#{$user.login}; path=/; domain=nature.com")
  page.driver.set_cookie(%Q(login_encoded=#{$user.login_encoded}; path=/; domain=nature.com))
  $user.logged_in?
end

Given 'I am a visitor' do ; end

Given 'I am a robot' do ; end

Then 'I will see the login page' do
  expect(page).to have_content('Enter your username and password to login')
end

# This is performed once before at the beginning
# think before_all
Given 'get authentication from SSO' do
  visit $site.page_for('/nplants')
  click_link('Login')
  fill_in 'E-mail',   with: $user.username
  fill_in 'Password', with: $user.password
  click_button('Login')

  if page.driver.cookies['login'] && page.driver.cookies['login_encoded']
    $user.login         = page.driver.cookies['login']
    $user.login_encoded = page.driver.cookies['login_encoded']
    STDOUT.puts "Logged in as '#{$user.username}' and stored session cookies"
  else
    raise "Could not set the cookies, verify the user #{$user.username}"
  end
end
