class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.string :sitter_id, null: false, index: true
      t.integer :price, null: false
      t.integer :distance, null: false
      t.integer :max_occurences, null: false
      t.string :times_avail, null: false, array: true

      t.timestamps
    end
  end
end
