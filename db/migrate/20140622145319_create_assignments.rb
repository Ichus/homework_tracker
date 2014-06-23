class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.datetime :assign_date
      t.datetime :due_date
      t.string :description
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
