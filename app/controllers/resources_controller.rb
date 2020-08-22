class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
  end

  def create
    resource = Resource.create(resource_params)

    if resource.save
      redirect_to '/resources'
      flash[:message] = "Thanks for being resourceful!"
    else
      redirect_to '/'
      flash[:error] = resource.errors.full_messages.to_sentence
    end
  end

  private

  def resource_params
    params.permit(:title, :link, :category, :source, :project)
  end
end
