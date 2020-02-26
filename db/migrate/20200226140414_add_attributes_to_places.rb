class AddAttributesToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :name, :string
    add_column :places, :description, :text
    add_column :places, :options, :string
    #pour le champ photos => on utilisera active storage
  end
end
