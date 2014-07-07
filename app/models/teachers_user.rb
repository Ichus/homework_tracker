class TeachersUser < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :user
end
