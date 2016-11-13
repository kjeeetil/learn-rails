class Owner
	def name
		name ="Kjetil"
	end

	def birthdate
		birthdate = Date.new(2016,11,8)
	end

	def countdown
		Rails.logger.debug "\033[1;34;40mDEBUG: \033[0m " + 'entering Owner countdown method'
		today = Date.today
		birthday = Date.new(2020, 11, 8)
		if birthday > today
			countdown = (birthday - today). to_i
		else
			countdown = (birthday - today).to_i
		end
	end
end
