require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { client_on: @sale.client_on, first_year_comp: @sale.first_year_comp, name: @sale.name, new_client: @sale.new_client, new_money: @sale.new_money, opening_amount: @sale.opening_amount, product: @sale.product, renewal_comp: @sale.renewal_comp, sales_rep: @sale.sales_rep, source: @sale.source, user: @sale.user } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { client_on: @sale.client_on, first_year_comp: @sale.first_year_comp, name: @sale.name, new_client: @sale.new_client, new_money: @sale.new_money, opening_amount: @sale.opening_amount, product: @sale.product, renewal_comp: @sale.renewal_comp, sales_rep: @sale.sales_rep, source: @sale.source, user: @sale.user } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
