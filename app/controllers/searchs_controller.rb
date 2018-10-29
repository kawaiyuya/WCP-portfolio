class SearchsController < ApplicationController
	def index
		@spaces = Space.where(category_id: params[:genre_id])

	end
	def show
		@categorys = Category.where(genre_id: params[:id])
		space= Space.where(id: @categorys.space_id)
		render :partial => "show", :locals => { :categorys => @categorys}
	end
end

