class ChangeColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :condition, :condition_id
    rename_column :products, :orign_area, :prefecture_id
    rename_column :products, :lead_time, :lead_time_id
    rename_column :products, :delivery_pay, :delivery_pay_id
  end
end
