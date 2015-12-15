class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.string :members, array: true
      t.string :details

      t.timestamps null: false
    end
  end
end
