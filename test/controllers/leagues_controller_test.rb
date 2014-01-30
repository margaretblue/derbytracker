require "test_helper"

class LeaguesControllerTest < ActionController::TestCase

  before do
    @league = leagues(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:leagues)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('League.count') do
      post :create, league: {  }
    end

    assert_redirected_to league_path(assigns(:league))
  end

  def test_show
    get :show, id: @league
    assert_response :success
  end

  def test_edit
    get :edit, id: @league
    assert_response :success
  end

  def test_update
    put :update, id: @league, league: {  }
    assert_redirected_to league_path(assigns(:league))
  end

  def test_destroy
    assert_difference('League.count', -1) do
      delete :destroy, id: @league
    end

    assert_redirected_to leagues_path
  end
end
