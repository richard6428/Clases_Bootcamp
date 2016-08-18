require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: { classroomNumber: @lesson.classroomNumber, date: @lesson.date, idClassroom: @lesson.idClassroom, idStudents: @lesson.idStudents, idTeacher: @lesson.idTeacher, purpose: @lesson.purpose, quota: @lesson.quota, teacher: @lesson.teacher }
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    patch :update, id: @lesson, lesson: { classroomNumber: @lesson.classroomNumber, date: @lesson.date, idClassroom: @lesson.idClassroom, idStudents: @lesson.idStudents, idTeacher: @lesson.idTeacher, purpose: @lesson.purpose, quota: @lesson.quota, teacher: @lesson.teacher }
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end
end
