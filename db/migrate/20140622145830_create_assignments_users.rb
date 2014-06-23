class CreateAssignmentsUsers < ActiveRecord::Migration
  def change
    create_table :assignments_users, :id => false do |t|
      t.references :assignment, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
