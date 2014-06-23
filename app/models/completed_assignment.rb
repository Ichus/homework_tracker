class CompletedAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment

  validates :submit, presence: true
  validates :completion_date, presence: true
end
