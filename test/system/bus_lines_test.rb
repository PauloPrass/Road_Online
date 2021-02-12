require "application_system_test_case"

class BusLinesTest < ApplicationSystemTestCase
  setup do
    @bus_line = bus_lines(:one)
  end

  test "visiting the index" do
    visit bus_lines_url
    assert_selector "h1", text: "Bus Lines"
  end

  test "creating a Bus line" do
    visit bus_lines_url
    click_on "New Bus Line"

    fill_in "Code", with: @bus_line.code
    fill_in "Name", with: @bus_line.name
    click_on "Create Bus line"

    assert_text "Bus line was successfully created"
    click_on "Back"
  end

  test "updating a Bus line" do
    visit bus_lines_url
    click_on "Edit", match: :first

    fill_in "Code", with: @bus_line.code
    fill_in "Name", with: @bus_line.name
    click_on "Update Bus line"

    assert_text "Bus line was successfully updated"
    click_on "Back"
  end

  test "destroying a Bus line" do
    visit bus_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bus line was successfully destroyed"
  end
end
