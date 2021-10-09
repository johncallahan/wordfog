require 'test_helper'

class FogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fog = fogs(:one)
  end

  test "should get index" do
    get fogs_url
    assert_response :success
  end

  test "should get new" do
    get new_fog_url
    assert_response :success
  end

  test "should create fog" do
    assert_difference('Fog.count') do
      post fogs_url, params: { fog: { name: @fog.name, words: @fog.words } }
    end

    assert_redirected_to fog_url(Fog.last)
  end

  test "should show fog" do
    get fog_url(@fog)
    assert_response :success
  end

  test "should get edit" do
    get edit_fog_url(@fog)
    assert_response :success
  end

  test "should update fog" do
    patch fog_url(@fog), params: { fog: { name: @fog.name, words: @fog.words } }
    assert_redirected_to fog_url(@fog)
  end

  test "should destroy fog" do
    assert_difference('Fog.count', -1) do
      delete fog_url(@fog)
    end

    assert_redirected_to fogs_url
  end
end
