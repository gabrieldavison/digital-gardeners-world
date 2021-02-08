class WebsitesController < ApplicationController
  def index
    @websites = Website.all.sort { |a, b| a.title <=> b.title }
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.new(website_params)

    if @website.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  private
  def website_params
    params.require(:website).permit(:title, :link, :description)
  end
end
