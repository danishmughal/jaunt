require 'test_helper'

class TripitemsControllerTest < ActionController::TestCase
  setup do
    @tripitem = tripitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tripitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tripitem" do
    assert_difference('Tripitem.count') do
      post :create, tripitem: { description: @tripitem.description, end_time: @tripitem.end_time, location: @tripitem.location, start_time: @tripitem.start_time, trip_id: @tripitem.trip_id }
    end

    assert_redirected_to tripitem_path(assigns(:tripitem))
  end

  test "should show tripitem" do
    get :show, id: @tripitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tripitem
    assert_response :success
  end

  test "should update tripitem" do
    patch :update, id: @tripitem, tripitem: { description: @tripitem.description, end_time: @tripitem.end_time, location: @tripitem.location, start_time: @tripitem.start_time, trip_id: @tripitem.trip_id }
    assert_redirected_to tripitem_path(assigns(:tripitem))
  end

  test "should destroy tripitem" do
    assert_difference('Tripitem.count', -1) do
      delete :destroy, id: @tripitem
    end

    assert_redirected_to tripitems_path
  end
end
