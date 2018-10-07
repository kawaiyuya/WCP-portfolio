class FavoritesController < ApplicationController

	def create
		space = Space.find(params[:space_id])
       	favorite = current_user.favorites.build(space_id: space.id)
        favorite.save
        redirect_to space_path(space)
	end

	def destroy
		space = Space.find(params[:space_id])
        favorite = current_user.favorites.find_by(space_id: space.id)
        favorite.destroy
        redirect_to space_path(space)
	end
end
