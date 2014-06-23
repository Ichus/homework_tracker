class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.string :submit
      t.datetime :completion_date
      t.boolean :complete
      t.references :user, index: true
      t.references :assignment, index: true

      t.timestamps
    end
  end
end
