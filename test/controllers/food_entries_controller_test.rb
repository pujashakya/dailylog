require 'test_helper'

class FoodEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_entry = food_entries(:one)
  end

  test "should get index" do
    get food_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_food_entry_url
    assert_response :success
  end

  test "should create food_entry" do
    assert_difference('FoodEntry.count') do
      post food_entries_url, params: { food_entry: { amount: @food_entry.amount, fed_date: @food_entry.fed_date, notes: @food_entry.notes } }
    end

    assert_redirected_to food_entry_url(FoodEntry.last)
  end

  test "should show food_entry" do
    get food_entry_url(@food_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_entry_url(@food_entry)
    assert_response :success
  end

  test "should update food_entry" do
    patch food_entry_url(@food_entry), params: { food_entry: { amount: @food_entry.amount, fed_date: @food_entry.fed_date, notes: @food_entry.notes } }
    assert_redirected_to food_entry_url(@food_entry)
  end

  test "should destroy food_entry" do
    assert_difference('FoodEntry.count', -1) do
      delete food_entry_url(@food_entry)
    end

    assert_redirected_to food_entries_url
  end
end
