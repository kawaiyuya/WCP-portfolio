class ReservationsController < ApplicationController
	# def index
	# 	binding.pry
	# 	@reservations = Reservation.Where(user_id: params[:id])
	# 	@lender_spaces = Space.where(lender_id: params[:id])
	# end
	def new
		@reservation = Reservation.new(space_id:params[:id])
	end

	def create
		@reservation = Reservation.new(reservation_params)
		@space = Space.find(params[:space_id])
		finish_time = @reservation.finish_time.to_time.to_i
		start_time = @reservation.start_time.to_time.to_i
		total_time = (finish_time - start_time)/3600

		@price = @space.price * total_time
		render :show

	end


	def user_reservations
		@reservations = Reservation.where(user_id: params[:id])
		# binding.pry
		# @spaces = Space.where(id: @reservations.space_id)

		@lender_spaces = Space.where(lender_id: params[:id])
		# reserved_space = spaces.reservations
		# binding.pry
		# @a = Reservation.where(space_id: @lender_spaces.id)
	end

	def show
		@reservation = Reservation.find_by(space_id: params[:id])
	end

	def change
		@reservation = Reservation.new(reservation_params)
		render :new
	end


	def confirm
		reservation = Reservation.new(reservation_params)
		reservation.save
		redirect_to spaces_path
	end

	private

	def reservation_params
		params.require(:reservation).permit(:reservation_date, :start_time, :finish_time, :total_price, :space_id, :user_id)
		
	end
end
