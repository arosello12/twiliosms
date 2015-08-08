class SMSController < ApplicationController

  # Receive incoming SMS
  def smsincoming
  
    response = Twilio::TwiML::Response.new do |r|
        r.Message "Hey Monkey. Thanks for the message!"
    end

    render text: response.text

  end



  private
    # Use callbacks to share common setup or constraints between actions.

  

end