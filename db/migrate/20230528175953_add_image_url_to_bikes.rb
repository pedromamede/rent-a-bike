class AddImageUrlToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :image_url, :string
  end
end
