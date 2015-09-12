class Match

	attr_reader :message, :user, :users

	def initialize( message, user )
		@org_message = message
		@user = user
		match_groups
		self
	end

	def match_groups
		groups = Group.all.pluck(:name)

		groups.each do |group|
			if @org_message =~ /^#{group.downcase}/
				p "in match groups"
				@users = @user.other_group_members( group.downcase )
				self.get_message( group )
			end
		end

	end

	def get_message( group )
		message = @org_message.match(/(?<= ).+/)
		@message = message.nil? ? nil : message[0]
		if @message.nil? 
			@message = Group.find_by_name(group).message
		end

		@message
	end

end