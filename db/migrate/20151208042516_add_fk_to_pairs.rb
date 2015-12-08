class AddFkToPairs < ActiveRecord::Migration
  def change
      add_foreign_key :pairs, :members, column: :driver_id
      add_foreign_key :pairs, :members, column: :navigator_id
  end
end
