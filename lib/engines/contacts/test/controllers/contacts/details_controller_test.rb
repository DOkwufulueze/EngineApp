require 'test_helper'

module Contacts
  class DetailsControllerTest < ActionController::TestCase
    setup do
      @detail = contacts_details(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:details)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create detail" do
      assert_difference('Detail.count') do
        post :create, detail: { address: @detail.address, email: @detail.email, name: @detail.name, phone: @detail.phone }
      end

      assert_redirected_to detail_path(assigns(:detail))
    end

    test "should show detail" do
      get :show, id: @detail
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @detail
      assert_response :success
    end

    test "should update detail" do
      patch :update, id: @detail, detail: { address: @detail.address, email: @detail.email, name: @detail.name, phone: @detail.phone }
      assert_redirected_to detail_path(assigns(:detail))
    end

    test "should destroy detail" do
      assert_difference('Detail.count', -1) do
        delete :destroy, id: @detail
      end

      assert_redirected_to details_path
    end
  end
end
