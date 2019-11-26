class AddRobotToArmors < ActiveRecord::Migration[6.0]
  def change
    add_reference :armors, :robots, foreign_key: true
  end
end
