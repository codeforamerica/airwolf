class Program < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :instructions
end
