require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
      title: 'css',
      description: 'css3',
      image_url: 'http://2.bp.blogspot.com/-6urr7R6cuT8/U0bhXejHlHI/AAAAAAAAAYk/FEj7ISefb6g/s1600/css3-animasi.jpg',
      price: 3.0
    }
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      # post products_url, params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
      post products_url, params: {product: @update}
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    # patch product_url(@product), params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
    patch product_url(@product), params: { product: @update }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
