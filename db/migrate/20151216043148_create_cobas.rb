class CreateCobas < ActiveRecord::Migration
  def change
    create_table :cobas do |t|

      t.timestamps null: false
    end
  end
end
