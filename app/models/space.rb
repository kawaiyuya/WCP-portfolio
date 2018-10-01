class Space < ApplicationRecord
	has_many :favorites
	has_many :reservations
	has_many :categories
	has_many :facilitys
end
