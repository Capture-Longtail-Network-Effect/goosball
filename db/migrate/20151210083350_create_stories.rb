class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :story
      t.references :pairing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
