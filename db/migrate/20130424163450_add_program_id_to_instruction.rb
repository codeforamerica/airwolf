class AddProgramIdToInstruction < ActiveRecord::Migration
  def change
    add_column :instructions, :program_id, :integer
  end
end
