require 'test_helper'

class CompletedAssignmentsControllerTest < ActionController::TestCase
  setup do
    @completed_assignment = completed_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:completed_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create completed_assignment" do
    assert_difference('CompletedAssignment.count') do
      post :create, completed_assignment: { assignment_id_id: @completed_assignment.assignment_id_id, complete: @completed_assignment.complete, completion_date: @completed_assignment.completion_date, submit: @completed_assignment.submit, user_id_id: @completed_assignment.user_id_id }
    end

    assert_redirected_to completed_assignment_path(assigns(:completed_assignment))
  end

  test "should show completed_assignment" do
    get :show, id: @completed_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @completed_assignment
    assert_response :success
  end

  test "should update completed_assignment" do
    patch :update, id: @completed_assignment, completed_assignment: { assignment_id_id: @completed_assignment.assignment_id_id, complete: @completed_assignment.complete, completion_date: @completed_assignment.completion_date, submit: @completed_assignment.submit, user_id_id: @completed_assignment.user_id_id }
    assert_redirected_to completed_assignment_path(assigns(:completed_assignment))
  end

  test "should destroy completed_assignment" do
    assert_difference('CompletedAssignment.count', -1) do
      delete :destroy, id: @completed_assignment
    end

    assert_redirected_to completed_assignments_path
  end
end
