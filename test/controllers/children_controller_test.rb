require 'test_helper'

class ChildrenControllerTest < ActionController::TestCase
  setup do
    @child = FactoryBot.create(:child)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child" do
    assert_difference('Child.count') do
      post :create, params: { child: { active: @child.active, first_name: @child.first_name, last_name: @child.last_name } }
    end

    assert_redirected_to child_path(assigns(:child))
  end

  test "should show child" do
    get :show, params: { id: @child }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @child }
    assert_response :success
  end

  test "should update child" do
    patch :update, params: { id: @child, child: { active: @child.active, first_name: @child.first_name, last_name: @child.last_name } }
    assert_redirected_to child_path(assigns(:child))
  end

  test "should destroy child" do
    assert_difference('Child.count', -1) do
      delete :destroy, params: { id: @child }
    end

    assert_redirected_to children_path
  end
end
