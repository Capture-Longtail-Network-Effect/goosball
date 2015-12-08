class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.references :driver, references: :members
      t.references :navigator, references: :members
      t.datetime :date

      t.timestamps null: false
    end
  end
end
