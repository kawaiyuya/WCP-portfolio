class SearchsController < ApplicationController
	def index
		@spaces = Space.where(category_id: params[:genre_id])

	end
	def show
		@categorys = Category.where(genre_id: params[:genre_id])
		p @categorys
		# space= Space.where(id: @categorys.space_id)
		respond_to do |format|
			format.html {render :partial => "show", :locals => { :categorys => @categorys}}
			format.js
		end
	end
end

