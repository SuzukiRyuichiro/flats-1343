require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visit the home page and see the title" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end
end
