class Website
  include SiteHelper
  def initialize(browser)
    @browser = browser
  end
  
  def test
    @test ||= Test.new(@browser)
  end

  def logged_in
    @logged_in ||= LoggedIn.new(@browser)
  end
end
