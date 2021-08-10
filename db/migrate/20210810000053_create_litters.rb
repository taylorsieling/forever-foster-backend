class CreateLitters < ActiveRecord::Migration[6.1]
  def change
    create_table :litters do |t|
      t.string :theme
      t.date :intake_date
      t.time :intake_time
      t.string :intake_type
      t.string :location_found
      t.belongs_to :foster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
