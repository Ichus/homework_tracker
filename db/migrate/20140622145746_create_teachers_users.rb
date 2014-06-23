class CreateTeachersUsers < ActiveRecord::Migration
  def change
    create_table :teachers_users, :id => false do |t|
      t.references :teacher, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
