class CreateRobots < ActiveRecord::Migration[6.0]
  def change
    create_table :robots do |t|
      t.string :nombre
      t.string :tipo
      t.string :serial_number
      t.references :users

      t.timestamps
    end
  end
end
