require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "creating a Sale" do
    visit sales_url
    click_on "New Sale"

    fill_in "Client on", with: @sale.client_on
    fill_in "First year comp", with: @sale.first_year_comp
    fill_in "Name", with: @sale.name
    check "New client" if @sale.new_client
    check "New money" if @sale.new_money
    fill_in "Opening amount", with: @sale.opening_amount
    fill_in "Product", with: @sale.product
    fill_in "Renewal comp", with: @sale.renewal_comp
    fill_in "Sales rep", with: @sale.sales_rep
    fill_in "Source", with: @sale.source
    fill_in "User", with: @sale.user
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "updating a Sale" do
    visit sales_url
    click_on "Edit", match: :first

    fill_in "Client on", with: @sale.client_on
    fill_in "First year comp", with: @sale.first_year_comp
    fill_in "Name", with: @sale.name
    check "New client" if @sale.new_client
    check "New money" if @sale.new_money
    fill_in "Opening amount", with: @sale.opening_amount
    fill_in "Product", with: @sale.product
    fill_in "Renewal comp", with: @sale.renewal_comp
    fill_in "Sales rep", with: @sale.sales_rep
    fill_in "Source", with: @sale.source
    fill_in "User", with: @sale.user
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale" do
    visit sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale was successfully destroyed"
  end
end
