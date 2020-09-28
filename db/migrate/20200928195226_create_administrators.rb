class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :user_name
      t.string :password
      t.string :status

      t.timestamps
    end
  end
end
