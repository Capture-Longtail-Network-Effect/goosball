class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.datetime :date
      t.integer :members_ids, array: true, default: []

      t.timestamps null: false
    end
  end
end
