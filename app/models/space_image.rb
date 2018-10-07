class SpaceImage < ApplicationRecord
	belongs_to :space
	attachment :image
end
