class Armor < ApplicationRecord
	belongs_to :robots, required: true

	validates :a_type, presence: true, inclusion: { in: ["shield", "magnetic field", "invisible field"]}
  	validates :serial_number, format: { with: /\AA+\d{6}\z/}
end
