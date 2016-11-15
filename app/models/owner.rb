class Owner
	def name
		name ="Kjetil"
	end

	def birthdate
		birthdate = Date.new(2020,07,24)
	end

	def countdown
		Rails.logger.debug "\033[1;34;40mDEBUG: \033[0m " + 'entering Owner countdown method'
		today = Date.today
		birthday = Date.new(2020, 11, 8)
		countdown = (birthday - today). to_i
	end
end
