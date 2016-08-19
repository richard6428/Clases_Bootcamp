require 'test_helper'

class UserBlogsControllerTest < ActionController::TestCase
  setup do
    @user_blog = user_blogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_blogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_blog" do
    assert_difference('UserBlog.count') do
      post :create, user_blog: { document: @user_blog.document, email: @user_blog.email, lastname: @user_blog.lastname, name: @user_blog.name, phone: @user_blog.phone }
    end

    assert_redirected_to user_blog_path(assigns(:user_blog))
  end

  test "should show user_blog" do
    get :show, id: @user_blog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_blog
    assert_response :success
  end

  test "should update user_blog" do
    patch :update, id: @user_blog, user_blog: { document: @user_blog.document, email: @user_blog.email, lastname: @user_blog.lastname, name: @user_blog.name, phone: @user_blog.phone }
    assert_redirected_to user_blog_path(assigns(:user_blog))
  end

  test "should destroy user_blog" do
    assert_difference('UserBlog.count', -1) do
      delete :destroy, id: @user_blog
    end

    assert_redirected_to user_blogs_path
  end
end
