require 'test_helper'

class EnglishesControllerTest < ActionController::TestCase
  setup do
    @english = englishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:englishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create english" do
    assert_difference('English.count') do
      post :create, english: { meaning: @english.meaning, word: @english.word }
    end

    assert_redirected_to english_path(assigns(:english))
  end

  test "should show english" do
    get :show, id: @english
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @english
    assert_response :success
  end

  test "should update english" do
    patch :update, id: @english, english: { meaning: @english.meaning, word: @english.word }
    assert_redirected_to english_path(assigns(:english))
  end

  test "should destroy english" do
    assert_difference('English.count', -1) do
      delete :destroy, id: @english
    end

    assert_redirected_to englishes_path
  end
end
