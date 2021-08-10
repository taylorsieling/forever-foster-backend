class CreateMedicals < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_entries do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :notes
      t.belongs_to :kitten, null: false, foreign_key: true

      t.timestamps
    end
  end
end
