require "application_system_test_case"

class TweeetersTest < ApplicationSystemTestCase
  setup do
    @tweeeter = tweeeters(:one)
  end

  test "visiting the index" do
    visit tweeeters_url
    assert_selector "h1", text: "Tweeeters"
  end

  test "creating a Tweeeter" do
    visit tweeeters_url
    click_on "New Tweeeter"

    fill_in "Tweeet", with: @tweeeter.tweeet
    click_on "Create Tweeeter"

    assert_text "Tweeeter was successfully created"
    click_on "Back"
  end

  test "updating a Tweeeter" do
    visit tweeeters_url
    click_on "Edit", match: :first

    fill_in "Tweeet", with: @tweeeter.tweeet
    click_on "Update Tweeeter"

    assert_text "Tweeeter was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweeeter" do
    visit tweeeters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweeeter was successfully destroyed"
  end
end
