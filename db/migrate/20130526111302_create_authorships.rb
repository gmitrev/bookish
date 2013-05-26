class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.string :author_id
      t.string :book_id

      t.timestamps
    end
  end
end
