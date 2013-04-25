class Instruction < ActiveRecord::Base
  attr_accessible :description, :name, :documents, :id, :steps_attributes, :program_id
  has_many :steps
  accepts_nested_attributes_for :steps, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
