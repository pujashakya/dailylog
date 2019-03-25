class CreateFoodEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :food_entries do |t|
      t.datetime :fed_date
      t.string :amount
      t.string :notes

      t.timestamps
    end
  end
end
