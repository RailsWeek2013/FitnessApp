require 'test_helper'

class UebungsControllerTest < ActionController::TestCase
  setup do
    @uebung = uebungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uebungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uebung" do
    assert_difference('Uebung.count') do
      post :create, uebung: {  uebung: @uebung. uebung, anzset: @uebung.anzset, anzwdh: @uebung.anzwdh, beschreibung: @uebung.beschreibung, trainingsart: @uebung.trainingsart }
    end

    assert_redirected_to uebung_path(assigns(:uebung))
  end

  test "should show uebung" do
    get :show, id: @uebung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uebung
    assert_response :success
  end

  test "should update uebung" do
    patch :update, id: @uebung, uebung: {  uebung: @uebung. uebung, anzset: @uebung.anzset, anzwdh: @uebung.anzwdh, beschreibung: @uebung.beschreibung, trainingsart: @uebung.trainingsart }
    assert_redirected_to uebung_path(assigns(:uebung))
  end

  test "should destroy uebung" do
    assert_difference('Uebung.count', -1) do
      delete :destroy, id: @uebung
    end

    assert_redirected_to uebungs_path
  end
end
