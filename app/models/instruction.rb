class Instruction < ActiveRecord::Base
  attr_accessible :description, :name, :step, :documents
end
