require 'test_helper'

class NapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nap = naps(:one)
  end

  test "should get index" do
    get naps_url
    assert_response :success
  end

  test "should get new" do
    get new_nap_url
    assert_response :success
  end

  test "should create nap" do
    assert_difference('Nap.count') do
      post naps_url, params: { nap: { duration: @nap.duration, nap_date: @nap.nap_date, notes: @nap.notes } }
    end

    assert_redirected_to nap_url(Nap.last)
  end

  test "should show nap" do
    get nap_url(@nap)
    assert_response :success
  end

  test "should get edit" do
    get edit_nap_url(@nap)
    assert_response :success
  end

  test "should update nap" do
    patch nap_url(@nap), params: { nap: { duration: @nap.duration, nap_date: @nap.nap_date, notes: @nap.notes } }
    assert_redirected_to nap_url(@nap)
  end

  test "should destroy nap" do
    assert_difference('Nap.count', -1) do
      delete nap_url(@nap)
    end

    assert_redirected_to naps_url
  end
end
