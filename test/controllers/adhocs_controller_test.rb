require 'test_helper'

class AdhocsControllerTest < ActionController::TestCase
  setup do
    @adhoc = adhocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adhocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adhoc" do
    assert_difference('Adhoc.count') do
      post :create, adhoc: { arrive: @adhoc.arrive, depart: @adhoc.depart, dest: @adhoc.dest, orig: @adhoc.orig, reason: @adhoc.reason, type_of_freight: @adhoc.type_of_freight }
    end

    assert_redirected_to adhoc_path(assigns(:adhoc))
  end

  test "should show adhoc" do
    get :show, id: @adhoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adhoc
    assert_response :success
  end

  test "should update adhoc" do
    patch :update, id: @adhoc, adhoc: { arrive: @adhoc.arrive, depart: @adhoc.depart, dest: @adhoc.dest, orig: @adhoc.orig, reason: @adhoc.reason, type_of_freight: @adhoc.type_of_freight }
    assert_redirected_to adhoc_path(assigns(:adhoc))
  end

  test "should destroy adhoc" do
    assert_difference('Adhoc.count', -1) do
      delete :destroy, id: @adhoc
    end

    assert_redirected_to adhocs_path
  end
end
