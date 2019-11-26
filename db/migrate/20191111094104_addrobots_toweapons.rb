class AddrobotsToweapons < ActiveRecord::Migration[6.0]
  def change
  	add_reference :weapons, :robots, foreign_key: true
  end
end
