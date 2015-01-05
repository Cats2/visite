require 'test_helper'

class SitesControllerTest < ActionController::TestCase
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post :create, site: { adresse: @site.adresse, audioguide: @site.audioguide, avis: @site.avis, categorie: @site.categorie, description: @site.description, groupe: @site.groupe, guide: @site.guide, latitude: @site.latitude, longitude: @site.longitude, nom: @site.nom, reduction: @site.reduction, tarif: @site.tarif, tel: @site.tel, web: @site.web }
    end

    assert_redirected_to site_path(assigns(:site))
  end

  test "should show site" do
    get :show, id: @site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site
    assert_response :success
  end

  test "should update site" do
    patch :update, id: @site, site: { adresse: @site.adresse, audioguide: @site.audioguide, avis: @site.avis, categorie: @site.categorie, description: @site.description, groupe: @site.groupe, guide: @site.guide, latitude: @site.latitude, longitude: @site.longitude, nom: @site.nom, reduction: @site.reduction, tarif: @site.tarif, tel: @site.tel, web: @site.web }
    assert_redirected_to site_path(assigns(:site))
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete :destroy, id: @site
    end

    assert_redirected_to sites_path
  end
end
