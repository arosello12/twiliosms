class SmsController < ApplicationController
  include Webhookable

  after_filter :set_header
  skip_before_action :verify_authenticity_token

  # Receive incoming SMS
  def smsincoming
  
   # twiml = Twilio::TwiML::Response.new do |r|
   #     r.Message "Hey Monkey. Thanks for the message!"
   # end
   # render text: twiml.text
    
    response = Twilio::TwiML::Response.new do |r|
        r.Message do |message|
        message.Body "Here are some images to view"
        message.Media "https://demo.twilio.com/owl.png"
        message.Media "https://demo.twilio.com/logo.png"
        end
    end
   
   render_twiml response

  end



  private
    # Use callbacks to share common setup or constraints between actions.

  

end