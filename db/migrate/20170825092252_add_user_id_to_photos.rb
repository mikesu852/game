class AddUserIdToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :users_id, :integer
  end
end
