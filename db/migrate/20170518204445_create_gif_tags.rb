class CreateGifTags < ActiveRecord::Migration[5.1]
  def change
    create_table :gif_tags do |t|
      t.column "gif_id", :integer, null: false
      t.column "tag_id", :integer, null: false

      t.timestamps
    end
  end
end
