class Pin < ApplicationRecord
	has_one_attached :image
	validates_presence_of :description, :title 
	belongs_to :user
end
