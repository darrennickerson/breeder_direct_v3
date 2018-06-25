require "application_system_test_case"

class LogsTest < ApplicationSystemTestCase
  setup do
    @log = logs(:one)
  end

  test "visiting the index" do
    visit logs_url
    assert_selector "h1", text: "Logs"
  end

  test "creating a Log" do
    visit logs_url
    click_on "New Log"

    fill_in "Cleaned", with: @log.cleaned
    fill_in "Defecation", with: @log.defecation
    fill_in "Fed", with: @log.fed
    fill_in "Length", with: @log.length
    fill_in "Prey Item", with: @log.prey_item
    fill_in "Refused", with: @log.refused
    fill_in "Shed", with: @log.shed
    fill_in "Weight", with: @log.weight
    click_on "Create Log"

    assert_text "Log was successfully created"
    click_on "Back"
  end

  test "updating a Log" do
    visit logs_url
    click_on "Edit", match: :first

    fill_in "Cleaned", with: @log.cleaned
    fill_in "Defecation", with: @log.defecation
    fill_in "Fed", with: @log.fed
    fill_in "Length", with: @log.length
    fill_in "Prey Item", with: @log.prey_item
    fill_in "Refused", with: @log.refused
    fill_in "Shed", with: @log.shed
    fill_in "Weight", with: @log.weight
    click_on "Update Log"

    assert_text "Log was successfully updated"
    click_on "Back"
  end

  test "destroying a Log" do
    visit logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log was successfully destroyed"
  end
end
