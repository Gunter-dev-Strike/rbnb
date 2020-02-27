class ChangeOptionsToBeArrayInPlaces < ActiveRecord::Migration[6.0]
  def change
     change_column :places, :options, :text, array: true, default: [], using: "(string_to_array(options, ','))"
  end
end
