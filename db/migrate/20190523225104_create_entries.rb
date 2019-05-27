class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :description
      t.string :date_and_time
      t.integer :user_id

      t.timestamps
    end
  end
end
