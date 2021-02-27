Given('I navigate to the Restful Booker home page') do
  site.test.open_p
end

When('I log in with {string} credentials') do |string|
  site.test.login_with 'admin', 'password'
end

Then('I should be logged in') do
  sleep(2) # not proud of it..
  expect(site.logged_in.create_button_visible?).to be true
end
