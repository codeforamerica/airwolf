class AddInstructionIdToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :instruction_id, :integer
  end
end
