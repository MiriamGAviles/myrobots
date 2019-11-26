class Robot < ApplicationRecord::Base
	#Associations
	has_many :weapons, dependent: :destroy
	has_many :armors, dependent: :drestoy

	#Validations
	validates 

end
