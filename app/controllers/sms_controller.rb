class SmsController < ApplicationController

  # Receive incoming SMS
  def smsincoming
  
   # twiml = Twilio::TwiML::Response.new do |r|
   #     r.Message "Hey Monkey. Thanks for the message!"
   # end
   # render text: twiml.text
    
    twiml = Twilio::TwiML::Response.new do |r|
        r.Message do |message|
        message.Body "Body"
        message.MediaUrl "https://demo.twilio.com/owl.png"
        message.MediaUrl "https://demo.twilio.com/logo.png"
        end
    end
  
    twiml.text

  end



  private
    # Use callbacks to share common setup or constraints between actions.

  

end