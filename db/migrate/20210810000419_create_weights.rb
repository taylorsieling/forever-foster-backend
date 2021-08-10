class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.date :date
      t.time :time
      t.string :value
      t.string :unit
      t.belongs_to :kitten, null: false, foreign_key: true

      t.timestamps
    end
  end
end
