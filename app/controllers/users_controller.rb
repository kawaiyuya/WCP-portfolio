class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@spaces = Space.where(lender_id: @user.id)
	end

	def update
		user = User.find(params[:id])
		user.update(user_params)
		redirect_to user_path(current_user.id)
	end

	private
	def user_params
      params.require(:user).permit(:nickname, :profile_image, :self_introduction)
    end
end
