class Assignment < ActiveRecord::Base
  belongs_to :teacher
  has_and_belongs_to_many :users
  has_many :completed_assignments, dependent: :destroy

  validates :title, presence: true
  validates :assign_date, presence: true
  validates :due_date, presence: true
  validates :description, presence: true
  validates :teacher_id, presence: true

  def assigned?(assignment)
    assignment.assign_date < Time.current
  end

  def late?(assignment)
    assignment.due_date < Time.current
  end

  def completed(assignment, user)
    CompletedAssignment.where(assignment_id: assignment.id, user_id: user.id)
  end
end
