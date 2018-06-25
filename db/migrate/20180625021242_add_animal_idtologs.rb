class AddAnimalIdtologs < ActiveRecord::Migration[5.2]
  def change
    add_reference :logs, :animal, foreign_key: true
  end
end
