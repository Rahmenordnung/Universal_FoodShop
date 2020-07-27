require 'test_helper'

class ProveniencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provenience = proveniences(:one)
  end

  test "should get index" do
    get proveniences_url
    assert_response :success
  end

  test "should get new" do
    get new_provenience_url
    assert_response :success
  end

  test "should create provenience" do
    assert_difference('Provenience.count') do
      post proveniences_url, params: { provenience: { description: @provenience.description, image: @provenience.image, title: @provenience.title } }
    end

    assert_redirected_to provenience_url(Provenience.last)
  end

  test "should show provenience" do
    get provenience_url(@provenience)
    assert_response :success
  end

  test "should get edit" do
    get edit_provenience_url(@provenience)
    assert_response :success
  end

  test "should update provenience" do
    patch provenience_url(@provenience), params: { provenience: { description: @provenience.description, image: @provenience.image, title: @provenience.title } }
    assert_redirected_to provenience_url(@provenience)
  end

  test "should destroy provenience" do
    assert_difference('Provenience.count', -1) do
      delete provenience_url(@provenience)
    end

    assert_redirected_to proveniences_url
  end
end
