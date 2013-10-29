class VideoController < ApplicationController
  def index
    code = params[:id]
    selected_video = Video.find_by(id: code)
    if selected_video
      @country = Country.find_by(code: params[:code].upcase)
      @video = selected_video
    else
      redirect_to :root
    end

  end
end
