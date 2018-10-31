class RoomsController < ApplicationController


	def index
		room_user = Room.where(user_id: current_user.id)
		room_your = Room.where(your_id: current_user.id)
		@rooms = room_user + room_your

		# binding.pry

	end

	def show
		@room = Room.find(params[:id])
    	@comments = @room.comments.order('created_at desc')
    	@comment = Comment.new

    	room_user = Room.where(user_id: current_user.id)
		room_your = Room.where(your_id: current_user.id)
		@rooms = room_user + room_your

    	if @room.user_id == current_user.id
    		# @roomに紐ずくuser_idがcurrent_userのidと同じなら
    		@your = User.find(@room.your_id)
    		# @yourにroomに紐ずくyour_idを入れる。
    	else
    		@your = User.find(@room.user_id)
    	end
	end

	def create
		user = User.find(params[:id])
		
	  	if current_user.id < user.id
	  		room = Room.find_or_create_by(user_id: current_user.id, your_id: user.id)
	  	else
	  		room = Room.find_or_create_by(user_id: user.id, your_id: current_user.id)
	  	end
	  	redirect_to room_path(room.id)
	end


end
