class AddFoodTypeIdToFoodEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :food_entries, :food_type_id, :integer
  end
end
