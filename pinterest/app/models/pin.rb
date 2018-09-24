class Pin < ApplicationRecord
	validates_presence_of :description, :title 
end
