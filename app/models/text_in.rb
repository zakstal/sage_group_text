class TextIn < ActiveRecord::Base
	validates  :to_country, :to_state, :sms_message_sid, :num_media, :to_city, :from_zip, :sms_sid, :from_state, :sms_status, :from_city, :body, :from_country, :to, :to_zip, :message_sid, :from, :api_version, :account_sid, presence: true
end
