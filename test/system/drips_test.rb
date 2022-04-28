require "application_system_test_case"

class DripsTest < ApplicationSystemTestCase
  setup do
    @drip = drips(:one)
  end

  test "visiting the index" do
    visit drips_url
    assert_selector "h1", text: "Drips"
  end

  test "should create drip" do
    visit drips_url
    click_on "New drip"

    fill_in "Blusa", with: @drip.blusa
    fill_in "Bone", with: @drip.bone
    fill_in "Nome", with: @drip.nome
    fill_in "Pants", with: @drip.pants
    fill_in "Priceblusa", with: @drip.priceblusa
    fill_in "Pricebone", with: @drip.pricebone
    fill_in "Pricepants", with: @drip.pricepants
    click_on "Create Drip"

    assert_text "Drip was successfully created"
    click_on "Back"
  end

  test "should update Drip" do
    visit drip_url(@drip)
    click_on "Edit this drip", match: :first

    fill_in "Blusa", with: @drip.blusa
    fill_in "Bone", with: @drip.bone
    fill_in "Nome", with: @drip.nome
    fill_in "Pants", with: @drip.pants
    fill_in "Priceblusa", with: @drip.priceblusa
    fill_in "Pricebone", with: @drip.pricebone
    fill_in "Pricepants", with: @drip.pricepants
    click_on "Update Drip"

    assert_text "Drip was successfully updated"
    click_on "Back"
  end

  test "should destroy Drip" do
    visit drip_url(@drip)
    click_on "Destroy this drip", match: :first

    assert_text "Drip was successfully destroyed"
  end
end
