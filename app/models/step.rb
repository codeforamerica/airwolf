class Step < ActiveRecord::Base
  attr_accessible :description, :name, :stepnumber, :id, :instruction_id, :docs
  belongs_to :instruction
end
