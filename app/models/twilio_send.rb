class TwilioSend

	MY_NUMBER = '+16502097477'

	#TODO: make number and body into hash with keys as :numer, :body
	def self.send_text(to_number, body)
		self.new(to_number, body)
	end

	def self.send_group_text(user_arr, body)
		user_arr.each do |user|
			p "send group text"
			p "user phone: #{user.phone}"
			p body
			self.send_text(user.phone, body)
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
		p "in send_message in twilio_send model"
		@client.sms.messages.create from: MY_NUMBER, to: @to_number, body: @body
	end

end