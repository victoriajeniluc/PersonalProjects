class Pin < ApplicationRecord
	has_one_attached :image
	validates_presence_of :description, :title 
	belongs_to :user
	validate :image_validation 

	def image_validation
		if !image.attached?
			errors[:base] << "Please add a picture to this!"
		end 
	end 
end
