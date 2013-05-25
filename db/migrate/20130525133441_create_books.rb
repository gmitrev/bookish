class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :isbn
      t.string :lang
      t.string :page_count
      t.string :published_in
      t.string :published_by

      t.timestamps
    end
  end
end
