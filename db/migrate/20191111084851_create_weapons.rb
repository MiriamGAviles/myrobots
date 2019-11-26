class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :w_type
      t.string :serial_number

      t.timestamps
    end
    add_foreign_key :robots
  end
end
