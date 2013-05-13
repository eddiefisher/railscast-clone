class EpisodesController < ApplicationController
  respond_to :html
  
  def index
    products_per_page = 10
    if params[:tag]
      @episodes = Episode.tagged_with(params[:tag]).page(params[:page]).per(products_per_page)
    else
      @episodes = Episode.page(params[:page]).per(products_per_page)
    end
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
end
