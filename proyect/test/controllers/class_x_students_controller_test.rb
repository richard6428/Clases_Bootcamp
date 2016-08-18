require 'test_helper'

class ClassXStudentsControllerTest < ActionController::TestCase
  setup do
    @class_x_student = class_x_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_x_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_x_student" do
    assert_difference('ClassXStudent.count') do
      post :create, class_x_student: { class_id: @class_x_student.class_id, student_id: @class_x_student.student_id }
    end

    assert_redirected_to class_x_student_path(assigns(:class_x_student))
  end

  test "should show class_x_student" do
    get :show, id: @class_x_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_x_student
    assert_response :success
  end

  test "should update class_x_student" do
    patch :update, id: @class_x_student, class_x_student: { class_id: @class_x_student.class_id, student_id: @class_x_student.student_id }
    assert_redirected_to class_x_student_path(assigns(:class_x_student))
  end

  test "should destroy class_x_student" do
    assert_difference('ClassXStudent.count', -1) do
      delete :destroy, id: @class_x_student
    end

    assert_redirected_to class_x_students_path
  end
end
