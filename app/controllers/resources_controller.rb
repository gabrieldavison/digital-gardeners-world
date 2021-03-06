class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  private
  def resource_params
    params.require(:resource).permit(:title, :link, :description)
  end
end
