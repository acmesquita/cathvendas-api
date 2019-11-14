require 'test_helper'

class PaymentingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymenting = paymentings(:one)
  end

  test "should get index" do
    get paymentings_url, as: :json
    assert_response :success
  end

  test "should create paymenting" do
    assert_difference('Paymenting.count') do
      post paymentings_url, params: { paymenting: { description: @paymenting.description, value: @paymenting.value } }, as: :json
    end

    assert_response 201
  end

  test "should show paymenting" do
    get paymenting_url(@paymenting), as: :json
    assert_response :success
  end

  test "should update paymenting" do
    patch paymenting_url(@paymenting), params: { paymenting: { description: @paymenting.description, value: @paymenting.value } }, as: :json
    assert_response 200
  end

  test "should destroy paymenting" do
    assert_difference('Paymenting.count', -1) do
      delete paymenting_url(@paymenting), as: :json
    end

    assert_response 204
  end
end
