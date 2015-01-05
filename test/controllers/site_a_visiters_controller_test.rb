require 'test_helper'

class SiteAVisitersControllerTest < ActionController::TestCase
  setup do
    @site_a_visiter = site_a_visiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_a_visiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_a_visiter" do
    assert_difference('SiteAVisiter.count') do
      post :create, site_a_visiter: { nom_site: @site_a_visiter.nom_site, nom_voyage: @site_a_visiter.nom_voyage }
    end

    assert_redirected_to site_a_visiter_path(assigns(:site_a_visiter))
  end

  test "should show site_a_visiter" do
    get :show, id: @site_a_visiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_a_visiter
    assert_response :success
  end

  test "should update site_a_visiter" do
    patch :update, id: @site_a_visiter, site_a_visiter: { nom_site: @site_a_visiter.nom_site, nom_voyage: @site_a_visiter.nom_voyage }
    assert_redirected_to site_a_visiter_path(assigns(:site_a_visiter))
  end

  test "should destroy site_a_visiter" do
    assert_difference('SiteAVisiter.count', -1) do
      delete :destroy, id: @site_a_visiter
    end

    assert_redirected_to site_a_visiters_path
  end
end
