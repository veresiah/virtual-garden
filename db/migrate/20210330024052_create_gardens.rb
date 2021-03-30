class CreateGardens < ActiveRecord::Migration[6.1]
  def change
    create_table :gardens do |t|
      t.integer :plant_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
