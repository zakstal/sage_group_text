Rails.application.routes.draw do
  post "/inbound-text", to: "twilio#inbound_text"
  get "/outbound-text", to: "twilio#outbound_text"
end
