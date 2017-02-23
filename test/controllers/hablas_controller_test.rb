require 'test_helper'

class HablasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habla = hablas(:one)
  end

  test "should get index" do
    get hablas_url
    assert_response :success
  end

  test "should get new" do
    get new_habla_url
    assert_response :success
  end

  test "should create habla" do
    assert_difference('Habla.count') do
      post hablas_url, params: { habla: { message: @habla.message } }
    end

    assert_redirected_to habla_url(Habla.last)
  end

  test "should show habla" do
    get habla_url(@habla)
    assert_response :success
  end

  test "should get edit" do
    get edit_habla_url(@habla)
    assert_response :success
  end

  test "should update habla" do
    patch habla_url(@habla), params: { habla: { message: @habla.message } }
    assert_redirected_to habla_url(@habla)
  end

  test "should destroy habla" do
    assert_difference('Habla.count', -1) do
      delete habla_url(@habla)
    end

    assert_redirected_to hablas_url
  end
end
