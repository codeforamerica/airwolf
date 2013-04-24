class Program < ActiveRecord::Base
  attr_accessible :description, :name, :instruction_id
  has_many :instructions
end
