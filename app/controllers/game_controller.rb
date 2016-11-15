class GamesController < ApplicationController
	def new
		@game = Game.new
	end


	def create
		@game = Game.new(secure_params)
		if @contact.valid?
			# TODO send message
			flash[:notice] = "Message sent from #{@contact.name}."
			#redirect_to root_path
		else
		render :new
		end
	end
	
#	private
	
#	def secure_params
#		params.require(:contact).permit(:name, :email, :content)
#	end

end