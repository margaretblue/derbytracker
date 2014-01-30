require "test_helper"

class RefereesControllerTest < ActionController::TestCase

  before do
    @referee = referees(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:referees)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Referee.count') do
      post :create, referee: {  }
    end

    assert_redirected_to referee_path(assigns(:referee))
  end

  def test_show
    get :show, id: @referee
    assert_response :success
  end

  def test_edit
    get :edit, id: @referee
    assert_response :success
  end

  def test_update
    put :update, id: @referee, referee: {  }
    assert_redirected_to referee_path(assigns(:referee))
  end

  def test_destroy
    assert_difference('Referee.count', -1) do
      delete :destroy, id: @referee
    end

    assert_redirected_to referees_path
  end
end
