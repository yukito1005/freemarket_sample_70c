class ChangeDataPriceToProducts < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :price, :integer
  end
end
