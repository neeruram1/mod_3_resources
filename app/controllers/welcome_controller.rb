class WelcomeController < ApplicationController
  def index
    @resource = Resource.new
  end
end
