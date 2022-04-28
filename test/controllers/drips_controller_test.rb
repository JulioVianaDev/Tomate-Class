require "test_helper"

class DripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drip = drips(:one)
  end

  test "should get index" do
    get drips_url
    assert_response :success
  end

  test "should get new" do
    get new_drip_url
    assert_response :success
  end

  test "should create drip" do
    assert_difference("Drip.count") do
      post drips_url, params: { drip: { blusa: @drip.blusa, bone: @drip.bone, nome: @drip.nome, pants: @drip.pants, priceblusa: @drip.priceblusa, pricebone: @drip.pricebone, pricepants: @drip.pricepants } }
    end

    assert_redirected_to drip_url(Drip.last)
  end

  test "should show drip" do
    get drip_url(@drip)
    assert_response :success
  end

  test "should get edit" do
    get edit_drip_url(@drip)
    assert_response :success
  end

  test "should update drip" do
    patch drip_url(@drip), params: { drip: { blusa: @drip.blusa, bone: @drip.bone, nome: @drip.nome, pants: @drip.pants, priceblusa: @drip.priceblusa, pricebone: @drip.pricebone, pricepants: @drip.pricepants } }
    assert_redirected_to drip_url(@drip)
  end

  test "should destroy drip" do
    assert_difference("Drip.count", -1) do
      delete drip_url(@drip)
    end

    assert_redirected_to drips_url
  end
end
