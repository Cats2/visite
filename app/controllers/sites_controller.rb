class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]
  require 'uri'
  require 'cgi'

  # GET /sites
  # GET /sites.json
  # GET /sites?categorie=categorie
  # GET /sites?nom=nom
  def index
    categorie=params[:categorie]
    nom=params[:nom];
    region=params[:region_nom];
    if categorie
      @sites = Site.where(categorie: categorie) 
    elsif nom
      @sites = Site.where(nom: nom) 
    elsif region
      @sites = Site.where(region_nom: region)
    else
      @sites = Site.all
    end
  end

  # GET /sites?categorie=musee
  def search
     @sites = Site.where(categorie: params[:categorie])
     render :index
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
    region=params[:region_nom];
    if region
      @sites = Site.where(region_nom: region_nom)
    end
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: 'Site was successfully created.' }
        format.json { render :show, status: :created, location: @site }
      else
        format.html { render :new }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { render :show, status: :ok, location: @site }
      else
        format.html { render :edit }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to sites_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:nom, :categorie, :adresse, :description, :latitude, :longitude, :tel, :web, :tarif, :reduction, :groupe, :audioguide, :guide, :avis, :region_nom, :image)
    end
end
