class AddNameAndAddressAndRatingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :rating, :decimal
  end
end
