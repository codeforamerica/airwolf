class AddDocsIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :docs, :string
  end
end
