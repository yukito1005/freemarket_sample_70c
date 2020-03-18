class ChangeDatatypeConditionOfProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :condition_id, :integer
    change_column :products, :prefecture_id, :integer
    change_column :products, :lead_time_id, :integer
    change_column :products, :delivery_pay_id, :integer
  end
end
