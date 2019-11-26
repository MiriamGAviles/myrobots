class Robot < ApplicationRecord
	has_many :armors
	has_many :weapons


  	validates :name, presence: true, uniqueness: true
  	validates :r_type, presence: true, inclusion: { in: %w(hackerobot protectrobot tacticrobot),
    	message: "%{value} is not a valid type" }
  	validates :serial_number, format: { with: /\AR+\d{6}\z/, 
    	message: "Please enter keywords in correct format (letter (R) + 6 digits)"}
end
