class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.string :email
      t.string :github

      t.timestamps null: false
    end
  end
end
