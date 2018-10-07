class SpaceImagesController < ApplicationController
	def destroy
		  space_image = SpaceImage.where(space_id: params[:id])
		  puts space_image.count
		 # params["space"]["space_image"]["image_id"].each do |image_id|
		 # 	binding.pry
		 # end
		 # space_image.destroy
		 # redirect_to spaces_path
		# space_image.destroy(checked_data)
		# redirect_to space_path(space)

		
	end
end
