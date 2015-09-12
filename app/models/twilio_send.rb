class TwilioSend

	MY_NUMBER = '+16362246812'

	#TODO: make number and body into hash with keys as :numer, :body
	def self.send_text(to_number, body)
		self.new(to_number, body)
	end

	def self.send_group_text(to_num_arr, body)
		to_num_arr.each do |num|
			self.send_text(num, body)
		end
	end

	def initialize(to_number, body)
		@body = body
		@to_number = to_number
		@client = new_twilio_client
		send_message
	end

	def new_twilio_client
		Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
	end

	def send_message
		@client.sms.messages.create from: MY_NUMBER, to: @to_number, body: @body
	end

end