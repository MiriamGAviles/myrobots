class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :a_type
      t.string :serial_number

      t.timestamps
    end
    add_foreign_key :robots
  end
end
