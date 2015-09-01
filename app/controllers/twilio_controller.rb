class TwilioController < ApplicationController

  def inbound_text
    p "I have made it into the controller"
    pars = Hash[inbound_text_params.map { |k,v| [k.underscore, v]}]
    user = User.find_by_phone(pars["from"])

    TextIn.create!(pars)
	  render json: pars
  end

  def outbound_text
    TwilioSend.send_text('2068532262', 'test this method')
    render json: "sucssess"
  end

  def inbound_text_params
    params.permit(
      :ToCountry,
      :ToState,
      :SmsMessageSid,
      :NumMedia,
      :ToCity,
      :FromZip,
      :SmsSid,
      :FromState,
      :SmsStatus,
      :FromCity,
      :Body,
      :FromCountry,
      :To,
      :ToZip,
      :MessageSid,
      :From,
      :ApiVersion,
      :AccountSid
      )
  end
end 