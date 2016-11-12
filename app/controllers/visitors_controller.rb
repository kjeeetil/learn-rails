class VisitorsController < ApplicationController

	def new
		Rails.logger.debug 'DEBUG: entering new method'
		@owner = Owner.new
		Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
		flash[:notice] = 'Wilkommen!'
		flash[:alert] = 'Bursdagen min er nært forestående'
	end
end


#jeg er på side 132