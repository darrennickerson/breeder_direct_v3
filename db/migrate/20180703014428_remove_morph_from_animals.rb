class RemoveMorphFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :morph, :text
    add_column :animals, :traits, :text, array:true, default: []
  end
end
