class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :age
      t.string :specialty
      t.string :status
      t.integer :facility_id

      t.timestamps
    end
  end
end
