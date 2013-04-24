class Instruction < ActiveRecord::Base
  attr_accessible :description, :name, :step, :documents
  belongs_to :program
end
