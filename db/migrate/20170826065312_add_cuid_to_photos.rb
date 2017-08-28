class AddCuidToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :cu_id, :integer
  end
end
