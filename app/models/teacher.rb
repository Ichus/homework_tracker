class Teacher < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password

  validates :password, presence: true, :length => { minimum: 6, maximum: 40 },
                       confirmation: true
  validate :username_unique_across_user_and_teacher
  validates :username, presence: true

  has_and_belongs_to_many :users
  has_many :assignments, dependent: :destroy

  def username_unique_across_user_and_teacher
    users = User.all
    teachers = Teacher.all
    teachers.pluck(:username).each do |teacher_username|
      if username == teacher_username
        errors.add(:username, "Username in use. Select another username")
      end
    end
    users.pluck(:username).each do |user_username|
      if username == user_username
        errors.add(:username, "Username in use. Select another username")
      end
    end
  end

  def self.authenticate(username, password)
    teacher = find_by username: username
    if teacher && teacher.password_hash == BCrypt::Engine.hash_secret(password, teacher.password_salt)
      teacher
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
