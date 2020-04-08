require 'test_helper'

class ShopitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopitem = shopitems(:one)
  end

  test "should get index" do
    get shopitems_url, as: :json
    assert_response :success
  end

  test "should create shopitem" do
    assert_difference('Shopitem.count') do
      post shopitems_url, params: { shopitem: { description: @shopitem.description, image: @shopitem.image, name: @shopitem.name, price: @shopitem.price, stock: @shopitem.stock } }, as: :json
    end

    assert_response 201
  end

  test "should show shopitem" do
    get shopitem_url(@shopitem), as: :json
    assert_response :success
  end

  test "should update shopitem" do
    patch shopitem_url(@shopitem), params: { shopitem: { description: @shopitem.description, image: @shopitem.image, name: @shopitem.name, price: @shopitem.price, stock: @shopitem.stock } }, as: :json
    assert_response 200
  end

  test "should destroy shopitem" do
    assert_difference('Shopitem.count', -1) do
      delete shopitem_url(@shopitem), as: :json
    end

    assert_response 204
  end
end
