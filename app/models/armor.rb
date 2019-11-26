class Armor < ApplicationRecord
	belongs_to :robots, required :true
end
