class ChangeUrlToFile < ActiveRecord::Migration[5.1]
  def change
    rename_column :gifs, :url, :file
  end
end
