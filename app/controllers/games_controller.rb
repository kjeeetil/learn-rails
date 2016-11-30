class GamesController < ApplicationController
#	include ApplicationHelper
	def index
		@games =Game.all
	end

	def show
		@game = Game.find(params[:id])
	end
	def new
		@game = Game.new(params[:game])
		@btnclr = [0,1,2].shuffle

		@game.index = 1
	end

	def create
		@game = Game.new(params.permit(:color, :choice, :result))

		@intr = ['Rock', 'Paper', 'Scissors']
		@res = ["It's a tie!", "You lost!", "You won!"]

		usr = params[:game][:rps].to_i
		@game.color = params[:game][:clr].to_i
		@game.choice = usr

		comp = 3*rand
		comp = comp.floor
		

		if usr == comp
			@game.result = 0
		elsif usr - comp == -1 || usr - comp == 2
			@game.result = 1
		elsif usr - comp == -2 || usr - comp == 1
			@game.result = 2
		end

		notice =["You picked #{@intr[@game.choice]}",
				 "Computer picked #{@intr[comp]}",
				 "#{@res[@game.result]}"]
				 

		flash[:notice] = notice.join(". ")

		@game.save

		redirect_to new_game_path
		

	end
	
#	private
#	
#	def secure_params
#		params[:game][:rps]
#	end

end