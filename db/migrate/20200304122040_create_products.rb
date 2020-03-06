class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :item_name, null: false
      t.text :item_detail, null: false
      t.string :item_size
      t.string :condition, null: false
      t.integer :price, null: false
      t.references :category, null: false, foreign_key: true
      t.string :delivery_pay, null: false
      t.string :orign_area, null: false
      t.string :lead_time, null: false
      t.timestamps
    end
  end
end
