class CreateKittens < ActiveRecord::Migration[6.1]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :sex
      t.date :dob
      t.string :breed
      t.string :color
      t.string :pattern
      t.boolean :altered
      t.boolean :microchipped
      t.string :status
      t.string :bio
      t.string :portrait_url
      t.belongs_to :litter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
