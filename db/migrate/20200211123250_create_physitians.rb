class CreatePhysitians < ActiveRecord::Migration[5.2]
  def change
    create_table :physitians do |t|
      t.string :name
      t.string :experience

      t.timestamps
    end
  end
end
