class Author < ActiveRecord::Base
  attr_accessible :born, :died, :name, :nationality
end
