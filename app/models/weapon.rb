class Weapon < ApplicationRecord
	belongs_to :robots, required: true

	validates :weapon_type, presence: true, inclusion: { in: %w(laser code acid map)}
  	validates :serial_number, format: { with: /\AW+\d{6}\z/}
end
