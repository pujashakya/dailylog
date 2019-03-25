require 'test_helper'

class DiaperEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diaper_entry = diaper_entries(:one)
  end

  test "should get index" do
    get diaper_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_diaper_entry_url
    assert_response :success
  end

  test "should create diaper_entry" do
    assert_difference('DiaperEntry.count') do
      post diaper_entries_url, params: { diaper_entry: { change_type: @diaper_entry.change_type, daiper_change_date: @diaper_entry.daiper_change_date, notes: @diaper_entry.notes } }
    end

    assert_redirected_to diaper_entry_url(DiaperEntry.last)
  end

  test "should show diaper_entry" do
    get diaper_entry_url(@diaper_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_diaper_entry_url(@diaper_entry)
    assert_response :success
  end

  test "should update diaper_entry" do
    patch diaper_entry_url(@diaper_entry), params: { diaper_entry: { change_type: @diaper_entry.change_type, daiper_change_date: @diaper_entry.daiper_change_date, notes: @diaper_entry.notes } }
    assert_redirected_to diaper_entry_url(@diaper_entry)
  end

  test "should destroy diaper_entry" do
    assert_difference('DiaperEntry.count', -1) do
      delete diaper_entry_url(@diaper_entry)
    end

    assert_redirected_to diaper_entries_url
  end
end
