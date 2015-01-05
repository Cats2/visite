class SiteAVisitersController < ApplicationController
  before_action :set_site_a_visiter, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    voyage=params[:voyage_nom];
    if voyage
      @site_a_visiters = SiteAVisiter.where(nom_voyage: voyage) 
    else
    @site_a_visiters = SiteAVisiter.all
    end
    respond_with(@site_a_visiters)
  end

  def show
    respond_with(@site_a_visiter)
  end

  def new
    nom = params[:nom_site]
    @site_a_visiter = SiteAVisiter.new
    @site_a_visiter.update(:nom_site => nom)
    respond_with(@site_a_visiter)
  end

  def edit
  end

  def create
    @site_a_visiter = SiteAVisiter.new(site_a_visiter_params)
    @site_a_visiter.save
    respond_with(@site_a_visiter)
  end

  def update
    @site_a_visiter.update(site_a_visiter_params)
    respond_with(@site_a_visiter)
  end

  def destroy
    nom = params[:voyage_nom]
    @site_a_visiter.destroy
    respond_with(@site_a_visiter)
  end

  private
    def set_site_a_visiter
      @site_a_visiter = SiteAVisiter.find(params[:id])
    end

    def site_a_visiter_params
      params.require(:site_a_visiter).permit(:nom_site, :nom_voyage)
    end
end
