class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :category
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :address

      t.timestamps
    end
  end
end
