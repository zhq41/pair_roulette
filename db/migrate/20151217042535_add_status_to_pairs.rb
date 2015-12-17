class AddStatusToPairs < ActiveRecord::Migration
  def change
    add_column :pairs, :status, :string
  end
end
