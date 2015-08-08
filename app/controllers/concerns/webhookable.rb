module Webhookable
extend ActiveSupport::Concern
 
  def set_header
        response.headers["Content-Type"] = "text/xml"
  end
 
  def render_twiml(response)
        render xml: response.to_xml
  end
 
end