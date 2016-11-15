class GamesController < ApplicationController
#	include ApplicationHelper
	def new
		@game = Game.new
	end


	def create
		@game = Game.new

		intr = ['Rock', 'Paper', 'Scissors']

		usr = params[:game][:rps].to_i
		comp = 3*rand
		comp = comp.floor

		if usr == comp
			res = "It's a tie!"
		elsif usr - comp == -1 || usr - comp == 2
			res = "You lost!"
		elsif usr - comp == -2 || usr - comp == 1
			res = "You won!"
		end


		notice =["Computer picked #{intr[comp]}",
				 "You picked #{intr[usr]}",
				 "#{res}"]
		flash[:notice] = notice.join(". ").html_safe
		#flash_message :notice, notice[0]
		#flash[:notice] = notice[1]
		#flash[:notice] = notice[2]

		redirect_to new_game_path
			
	end
	
#	private
#	
#	def secure_params
#		params[:game][:rps]
#	end

end