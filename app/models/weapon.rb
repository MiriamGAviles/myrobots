class Weapon < ApplicationRecord
	belongs_to :robots, required :true
end
