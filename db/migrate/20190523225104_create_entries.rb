class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :description
      t.string :date_and_time
      t.integer :length_in_minutes

      t.timestamps
    end
  end
end
