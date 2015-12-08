class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.references :driver, index: true, foreign_key: true
      t.references :navigator, index: true, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end
