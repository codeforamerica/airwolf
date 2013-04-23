class AddColunumDocsToInstructions < ActiveRecord::Migration
  def change
    add_column :instructions, :documents, :text
  end
end
