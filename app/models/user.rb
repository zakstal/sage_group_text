class User < ActiveRecord::Base
	has_many :events, class_name: "ClockworkDatabaseEvents", foreign_key: :user_id
	has_many :subscription
	has_many :groups, through: :subscription

	def other_group_members( group )
		found_group = self.find_group( group )

		found_group.users.map do |user|
			p "user phone #{user.phone}, self phone: #{self.phone}"
			p "user name #{user.name}"
			if user.phone != self.phone
				user
			end
		end
	end

	def find_group( group )
		p "groups: #{self.groups}"
		p "group users: #{self.groups[0].users}"
		self.groups.find do |g|
			g.name === group
		end
	end
end
