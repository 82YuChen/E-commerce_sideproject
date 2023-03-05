class ChangeStoreIdToAllowNullInProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :store_id, :bigint, null: true
  end
end
