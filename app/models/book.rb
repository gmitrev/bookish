class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :lang, :page_count, :published_by, :published_in, :title

  has_many :authorships
  has_many :authors, through: :authorships
end
