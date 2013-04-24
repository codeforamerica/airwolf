class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :name
      t.string :step
      t.text :description
      t.integer :program_id


      t.timestamps
    end
  end
end
