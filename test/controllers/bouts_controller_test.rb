require "test_helper"

class BoutsControllerTest < ActionController::TestCase

  before do
    @bout = bouts(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bouts)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Bout.count') do
      post :create, bout: {  }
    end

    assert_redirected_to bout_path(assigns(:bout))
  end

  def test_show
    get :show, id: @bout
    assert_response :success
  end

  def test_edit
    get :edit, id: @bout
    assert_response :success
  end

  def test_update
    put :update, id: @bout, bout: {  }
    assert_redirected_to bout_path(assigns(:bout))
  end

  def test_destroy
    assert_difference('Bout.count', -1) do
      delete :destroy, id: @bout
    end

    assert_redirected_to bouts_path
  end
end
