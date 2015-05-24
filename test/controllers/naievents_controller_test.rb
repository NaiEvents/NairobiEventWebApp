require 'test_helper'

class NaieventsControllerTest < ActionController::TestCase
  setup do
    @naievent = naievents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:naievents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create naievent" do
    assert_difference('Naievent.count') do
      post :create, naievent: { date: @naievent.date, location: @naievent.location, title: @naievent.title }
    end

    assert_redirected_to naievent_path(assigns(:naievent))
  end

  test "should show naievent" do
    get :show, id: @naievent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @naievent
    assert_response :success
  end

  test "should update naievent" do
    patch :update, id: @naievent, naievent: { date: @naievent.date, location: @naievent.location, title: @naievent.title }
    assert_redirected_to naievent_path(assigns(:naievent))
  end

  test "should destroy naievent" do
    assert_difference('Naievent.count', -1) do
      delete :destroy, id: @naievent
    end

    assert_redirected_to naievents_path
  end
end
