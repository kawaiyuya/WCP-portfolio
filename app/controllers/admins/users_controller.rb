class Admins::UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to admin_users_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(edit)
		user.update
		redirect_to admins_users_path
	end

	private
		def user_edit
			params.require(:user).permit(:nickname, :email, :name_family_name, :name_name, :furigana_family_name, :furigana_name_name)
			
		end
end

