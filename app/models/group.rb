class Group < ActiveRecord::Base
	has_many :subscription
	has_many :users, through: :subscription
end
