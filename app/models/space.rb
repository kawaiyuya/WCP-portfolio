class Space < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :reservations, dependent: :destroy
	has_many :categories, dependent: :destroy
	has_many :facilitys, dependent: :destroy
	has_many :space_images, dependent: :destroy
 	accepts_attachments_for :space_images, attachment: :image

 	validates :name, presence: true
	validates :price, presence: true
	validates :capacity, presence: true
	validates :address, presence: true
	geocoded_by :address
  	after_validation :geocode
	
	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
	
end
