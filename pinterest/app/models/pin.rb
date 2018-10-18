class Pin < ApplicationRecord
	has_one_attached :image
	validates_presence_of :description, :title 
	belongs_to :user
	validate :image_validation 

	def image_validation
		if !image.attached?
			errors[:base] << "NEEDS A PICTURE TO THIS!"
		end 
	end 
end
