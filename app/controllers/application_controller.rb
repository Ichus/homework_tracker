class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :assigned?
  helper_method :late?
  helper_method :completed

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
      @current_user ||= Teacher.find(session[:user_id])
    end
  end

  def assigned?(assignment)
    assignment.assign_date < Time.current
  end

  def late?(assignment)
    assignment.due_date < Time.current
  end

  def completed(assignment)
    CompletedAssignment.find_by_assignment_id(assignment.id)
  end
end
