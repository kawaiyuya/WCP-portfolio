class Space < ApplicationRecord
	has_many :favorites
	has_many :reservations
	has_many :categories
	has_many :facilitys
	has_many :space_images, dependent: :destroy
 	accepts_attachments_for :space_images, attachment: :image
	
	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
	
end
