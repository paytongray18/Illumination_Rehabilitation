class CreateAilments < ActiveRecord::Migration[6.0]
  def change
    create_table :ailments do |t|
      t.string :name
      t.string :aggression_level

      t.timestamps
    end
  end
end
