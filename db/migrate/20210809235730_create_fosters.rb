class CreateFosters < ActiveRecord::Migration[6.1]
  def change
    create_table :fosters do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture

      t.timestamps
    end
  end
end
