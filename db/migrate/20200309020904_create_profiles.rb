class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :lastname, null: false
      t.string :lastname_kana, null: false
      t.string :firstname, null: false
      t.string :firstname_kana, null: false
      t.integer :birthday, null: false
      t.integer :postal_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :adddress, null:false
      t.string :building
      t.integer :tell
      t.timestamps
    end
  end
end
