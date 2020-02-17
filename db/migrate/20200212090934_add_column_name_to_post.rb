class AddColumnNameToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :salary, :float
  end
end
