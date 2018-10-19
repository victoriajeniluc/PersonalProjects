module UsersHelper

	def check_user(current_user, pin_creator)
		return true if current_user.id == pin_creator.user_id
	end 
end 