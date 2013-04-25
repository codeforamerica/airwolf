class AddInstructionIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :instruction_id, :integer
  end
end
