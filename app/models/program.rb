class Program < ActiveRecord::Base
  attr_accessible :description, :name, :id, :instruction_id, :instructions_attributes
  has_many :instructions
end
