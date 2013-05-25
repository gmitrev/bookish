class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :lang, :page_count, :published_by, :published_in, :title
end
