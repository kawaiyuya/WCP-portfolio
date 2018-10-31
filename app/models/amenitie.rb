class Amenitie < ApplicationRecord
	has_many :facilitys, dependent: :destroy
end
