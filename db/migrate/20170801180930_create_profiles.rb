class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.integer :phone
      t.timestamps
    end
    add_index :profiles, :phone, unique: true
  end
end
