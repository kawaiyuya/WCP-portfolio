class Admins::ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
		
		
	end

	def destroy
		reservation = Reservation.find(params[:id])
		reservation.destroy
		redirect_to admins_reservations_path
		
	end
end
