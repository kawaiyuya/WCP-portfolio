class ReservationsController < ApplicationController
	def new
		@reservation = Reservation.new(space_id:params[:id])
	end

	def create
		# reservation =
		
	end
end
