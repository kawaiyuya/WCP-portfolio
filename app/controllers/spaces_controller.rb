class SpacesController < ApplicationController

	def index
		@spaces = Space.all
		# @spaces_image = SpaceImage.where(image_id: @space.id)
		# @spaces.where('created_at > ?', 1.day.ago)
		@categorys = nil
	end

	def show
		@space = Space.find(params[:id])
		@categories = Category.where(space_id: @space.id)
		@facilitys = Facility.where(space_id: @space.id)
		@user = User.find(@space.lender_id)
		# @facilitys = Facility.where(space_id: @space.id)

		@genres = Genre.all

		# @genres_array = []
		# 		@genres.each do |genre|
	 # 			@genres_array << [genre.name,genre.name]
	 # 		end

	 	@amenities = Amenitie.all

	 # 	@amenities_array = []
	 # 			@amenities.each do |amenitie|
	 # 			@amenities_array = [amenitie.name,amenitie.name]
	 # 		end
	 		# binding.pry
	end

	def new
		@space = Space.new
		@space.space_images.build
		
	end

	def update
		# binding.pry
		@space = Space.find(params[:id])
		@space.update(new_space)
		redirect_to spaces_path



	end

	def space_images_deleate
		images = params["space"]["image_id"]
		images.delete("0")

		space = Space.find(params[:id])
		space_images = SpaceImage.where(space_id: space.id)

		 images.each do |image|
		 	select_image = space_images.find(image.to_i)
		 	select_image.delete
		 end
		redirect_to space_path(space)

	end



	def create
		# binding.pry
		@space = Space.new(new_space)
		@space.lender_id = current_user.id
		@space.save
		redirect_to new_category_facility_path(@space)
	end

	def destroy
		space = Space.find(params[:id])
		space.destroy
		redirect_to spaces_path
	end

	def category_facility
		@space = Space.find(params[:id])
		@space.categories.build
		@genres = Genre.all

		@space.facilitys.build
		@amenities = Amenitie.all
	end



	def create_category_facility
		params["space"]["category"]["genre_id"].delete("0")
		params["space"]["category"]["genre_id"].each do |genre_number|
		
			category = Category.new(genre_id: genre_number.to_i,space_id: params[:id])
			category.save
		end
		params["space"]["facility"]["amenitie_id"].delete("0")
		params["space"]["facility"]["amenitie_id"].each do |amenitie_number|
			facility = Facility.new(amenitie_id: amenitie_number.to_i,space_id: params[:id])
			facility.save
		end
		redirect_to spaces_path

	end





	private

		def new_space
			params.require(:space).permit(:name, :description, :addres, :capacity, :price, space_images_images: [])
		end

		def params_update
			params.require(:space).permit(:id, :image, :name, :description, :addres, :capacity, :price)
		end

		
		# def index_spaces
		# 	params.require(:space).permit(:id, :image, :name, :description, :addres, :capacity, :price)
		# end


end
