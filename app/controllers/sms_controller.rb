class SmsController < ApplicationController
  include Webhookable

  after_filter :set_header
  skip_before_action :verify_authenticity_token

  # Receive incoming SMS
  def smsincoming
  
   # Example 1
   # response = Twilio::TwiML::Response.new do |r|
   #     r.Message "Hey Monkey. Thanks for the message!"
   # end
   # render_twiml response
    
   # Example 2 
   # response = Twilio::TwiML::Response.new do |r|
   #     r.Message do |message|
   #    message.Body "Here are some images to view blah blah blah and Blah blah blah do re mi fa sol la ti"
   #     message.Media "https://demo.twilio.com/logo.png"
   #     message.Media "https://demo.twilio.com/owl.png"
   #     message.Media "https://demo.twilio.com/owl.png"
   #      message.Media "https://demo.twilio.com/logo.png"
   #     end
   # end
   # render_twiml response

   # Example 3

    sender = params[:From]
    friends = {
       "+18137678172" => "Al Rosello",
      "+13053063771" => "Better Voice",
      "+14155551234" => "Virgil"
    }
    session["counter"] ||= 0
    sms_count = session["counter"]

    name = friends[sender] || "Mobile Monkey"
      message = "Hello, #{name}. Thanks for the new message."
    else
      message = "Hello, #{name}. Thanks for message number #{sms_count + 1}"
    end
    response = Twilio::TwiML::Response.new do |r|
      r.Message message
    end
    session["counter"] += 1
    render_twiml response

  end



  private
    # Use callbacks to share common setup or constraints between actions.

  

end