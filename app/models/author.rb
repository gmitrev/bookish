class Author < ActiveRecord::Base
  attr_accessible :born, :died, :name, :nationality

  has_many :authorships
  has_many :books, through: :authorships
end
