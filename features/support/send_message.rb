require 'net/http'
require 'faker'

class SendMessage
  URI_ = URI('https://automationintesting.online/')

  def send_message
    @send_message ||= Net::HTTP.post_form(URI_, message_params)
  end

  def message_body
    send_message.body
  end

  private 

  def message_params
    {
      "name": Faker::Name.unique.name,
      "email": Faker::Internet.unique.email,
      "phone": Faker::PhoneNumber,
      "subject": Faker::Food,
      "description": 'enter description here' 
    }
  end
end

sm = SendMessage.new
sm.send_message
p sm.message_body