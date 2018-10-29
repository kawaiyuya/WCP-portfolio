class CommentsController < ApplicationController
	
	def create
		@room = Room.find(params[:room_id])
		comment = Comment.new(comment_params)
		comment.room_id = @room.id
		comment.save!
		# binding.pry
		redirect_to room_path(comment.room.id)
	end


	private
	
	def comment_params
		params.require(:comment).permit(:user_id,:room_id,:comment)
	end
end
