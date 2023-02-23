class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :driver_name
      t.integer :phone_no
      t.string :status
    end
  end
end
