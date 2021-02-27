class Test
  include PageObject
  text_field(:username, :id => 'username')
  text_field(:password, :id => 'password')
  button(:login, :id => 'doLogin')

  def open_p
    @browser.goto "#{ENV['test_url']}"+"#/admin"
    self
  end
  
  def login_with(username, password)
    self.username = username
    self.password = password
    login
  end
end
