class Program < ActiveRecord::Base
  attr_accessible :description, :name, :id
  has_many :instructions
end
