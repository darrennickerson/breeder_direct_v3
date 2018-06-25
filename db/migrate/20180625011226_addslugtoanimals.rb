class Addslugtoanimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :slug, :string, unique: true
  end
end
