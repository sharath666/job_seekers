require 'test_helper'

class ExperienceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience_type = experience_types(:one)
  end

  test "should get index" do
    get experience_types_url
    assert_response :success
  end

  test "should get new" do
    get new_experience_type_url
    assert_response :success
  end

  test "should create experience_type" do
    assert_difference('ExperienceType.count') do
      post experience_types_url, params: { experience_type: { name: @experience_type.name } }
    end

    assert_redirected_to experience_type_url(ExperienceType.last)
  end

  test "should show experience_type" do
    get experience_type_url(@experience_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_experience_type_url(@experience_type)
    assert_response :success
  end

  test "should update experience_type" do
    patch experience_type_url(@experience_type), params: { experience_type: { name: @experience_type.name } }
    assert_redirected_to experience_type_url(@experience_type)
  end

  test "should destroy experience_type" do
    assert_difference('ExperienceType.count', -1) do
      delete experience_type_url(@experience_type)
    end

    assert_redirected_to experience_types_url
  end
end
