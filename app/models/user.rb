class User < ActiveRecord::Base
	has_many :events, class_name: "ClockworkDatabaseEvents", foreign_key: :user_id
end
