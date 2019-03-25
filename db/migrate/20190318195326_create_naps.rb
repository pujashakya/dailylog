class CreateNaps < ActiveRecord::Migration[5.0]
  def change
    create_table :naps do |t|
      t.datetime :nap_date
      t.numeric :duration
      t.string :notes

      t.timestamps
    end
  end
end
