class CreateDiaperEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :diaper_entries do |t|
      t.datetime :daiper_change_date
      t.string :change_type
      t.string :notes

      t.timestamps
    end
  end
end
