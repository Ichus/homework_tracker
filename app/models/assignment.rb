class Assignment < ActiveRecord::Base
  belongs_to :teacher
  has_and_belongs_to_many :users
  has_many :completed_assignments, dependent: :destroy

  validates :title, presence: true
  validates :assign_date, presence: true
  validates :due_date, presence: true
  validates :description, presence: true
  validates :teacher_id, presence: true
end
