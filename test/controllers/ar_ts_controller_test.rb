require 'test_helper'

class ArTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art = arts(:one)
  end

  test "should get index" do
    get arts_index_url
    assert_response :success
  end

  test "should get new" do
    get new_art_url
    assert_response :success
  end

  test "should create art" do
    assert_difference('Arts.count') do
      post arts_index_url, params: { art: { artist: @art.artist, date: @art.date, description: @art.description, photo: @art.photo, place: @art.place, reference: @art.reference, size: @art.size, technic: @art.technic, title: @art.title } }
    end

    assert_redirected_to art_url(Arts.last)
  end

  test "should show art" do
    get art_url(@art)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_url(@art)
    assert_response :success
  end

  test "should update art" do
    patch art_url(@art), params: { art: { artist: @art.artist, date: @art.date, description: @art.description, photo: @art.photo, place: @art.place, reference: @art.reference, size: @art.size, technic: @art.technic, title: @art.title } }
    assert_redirected_to art_url(@art)
  end

  test "should destroy art" do
    assert_difference('Arts.count', -1) do
      delete art_url(@art)
    end

    assert_redirected_to arts_index_url
  end
end
