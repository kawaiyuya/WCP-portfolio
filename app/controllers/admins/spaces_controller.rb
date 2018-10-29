class Admins::SpacesController < ApplicationController

	def index
		@spaces = Space.all
	end

	def show
		@space = Space.find(params[:id])
	end

	def destroy
		space = Space.find(params[:id])
		space.destroy
		redirect_to admins_spaces_path
	end

	# private
	# def destroy_params
	# 	params.require(:).permit(:nickname, :email, :name_family_name, :name_name, :furigana_family_name, :furigana_name_name)
		
	# end
end
