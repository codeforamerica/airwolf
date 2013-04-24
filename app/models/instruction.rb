class Instruction < ActiveRecord::Base
  attr_accessible :description, :name, :step, :documents, :program_id
  belongs_to :program
end
