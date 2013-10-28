class WelcomeController < ApplicationController
  def index
    @videos = Video.all
    # @systems = System.all
  end
end
