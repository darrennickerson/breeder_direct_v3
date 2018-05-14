require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Code", with: @animal.code
    fill_in "H Date", with: @animal.h_date
    fill_in "Morph", with: @animal.morph
    fill_in "Name", with: @animal.name
    fill_in "P Date", with: @animal.p_date
    fill_in "User", with: @animal.user_id
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Code", with: @animal.code
    fill_in "H Date", with: @animal.h_date
    fill_in "Morph", with: @animal.morph
    fill_in "Name", with: @animal.name
    fill_in "P Date", with: @animal.p_date
    fill_in "User", with: @animal.user_id
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
