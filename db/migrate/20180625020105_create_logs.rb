class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.boolean :fed
      t.boolean :defecation
      t.boolean :cleaned
      t.string :length
      t.string :weight
      t.boolean :shed
      t.boolean :fed
      t.string :prey_item
      t.boolean :refused

      t.timestamps
    end
  end
end
