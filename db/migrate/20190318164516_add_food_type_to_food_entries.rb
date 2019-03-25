class AddFoodTypeToFoodEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :food_entries, :food_type, :string
  end
end
