require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, email: @client.email, fax: @client.fax, mobile: @client.mobile, notes: @client.notes, phone: @client.phone, title: @client.title, vat_number: @client.vat_number, website: @client.website }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address: @client.address, email: @client.email, fax: @client.fax, mobile: @client.mobile, notes: @client.notes, phone: @client.phone, title: @client.title, vat_number: @client.vat_number, website: @client.website }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
