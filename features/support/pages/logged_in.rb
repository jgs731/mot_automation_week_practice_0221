class LoggedIn
  include PageObject

  button(:createbtn, :id => 'createRoom')

  def create_button_visible?
    createbtn?
  end
end
