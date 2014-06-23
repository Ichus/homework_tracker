class TeacherUser < ActiveRecord::Base
  belongs_to :teacher_id
  belongs_to :user_id
end
