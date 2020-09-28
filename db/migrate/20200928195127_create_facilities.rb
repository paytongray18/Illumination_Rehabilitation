class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :location
      t.string :status
      t.integer :administrator_id

      t.timestamps
    end
  end
end
