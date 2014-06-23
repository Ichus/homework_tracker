class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
