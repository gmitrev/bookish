class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :lang, :page_count, :published_by, :published_in, :title, :author

  attr_accessor :author

  has_many :authorships, dependent: :destroy
  has_many :authors, through: :authorships, uniq: true

  before_save do
    old_author = self.authors.first
    new_author = Author.find(author)
    if old_author != new_author
      self.authors = [new_author]
    end
  end
end
