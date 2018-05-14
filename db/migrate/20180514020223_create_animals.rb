class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :code
      t.string :name
      t.text :morph
      t.date :p_date
      t.date :h_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
