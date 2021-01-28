require "test_helper"

class TweeetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweeeter = tweeeters(:one)
  end

  test "should get index" do
    get tweeeters_url
    assert_response :success
  end

  test "should get new" do
    get new_tweeeter_url
    assert_response :success
  end

  test "should create tweeeter" do
    assert_difference('Tweeeter.count') do
      post tweeeters_url, params: { tweeeter: { tweeet: @tweeeter.tweeet } }
    end

    assert_redirected_to tweeeter_url(Tweeeter.last)
  end

  test "should show tweeeter" do
    get tweeeter_url(@tweeeter)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweeeter_url(@tweeeter)
    assert_response :success
  end

  test "should update tweeeter" do
    patch tweeeter_url(@tweeeter), params: { tweeeter: { tweeet: @tweeeter.tweeet } }
    assert_redirected_to tweeeter_url(@tweeeter)
  end

  test "should destroy tweeeter" do
    assert_difference('Tweeeter.count', -1) do
      delete tweeeter_url(@tweeeter)
    end

    assert_redirected_to tweeeters_url
  end
end
