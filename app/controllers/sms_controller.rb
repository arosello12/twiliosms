class SMSController < ApplicationController

  # Receive incoming SMS
  def smsquickstart
   
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message "Hey Monkey. Thanks for the message!"
    end

    respond(twiml.text)

  end



  private
    # Use callbacks to share common setup or constraints between actions.

    

  

end