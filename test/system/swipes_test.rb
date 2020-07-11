require "application_system_test_case"

class SwipesTest < ApplicationSystemTestCase
  setup do
    @swipe = swipes(:one)
  end

  test "visiting the index" do
    visit swipes_url
    assert_selector "h1", text: "Swipes"
  end

  test "creating a Swipe" do
    visit swipes_url
    click_on "New Swipe"

    fill_in "Account", with: @swipe.account_id
    check "Liked" if @swipe.liked
    fill_in "Project", with: @swipe.project_id
    click_on "Create Swipe"

    assert_text "Swipe was successfully created"
    click_on "Back"
  end

  test "updating a Swipe" do
    visit swipes_url
    click_on "Edit", match: :first

    fill_in "Account", with: @swipe.account_id
    check "Liked" if @swipe.liked
    fill_in "Project", with: @swipe.project_id
    click_on "Update Swipe"

    assert_text "Swipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Swipe" do
    visit swipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Swipe was successfully destroyed"
  end
end
