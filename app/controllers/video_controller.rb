class VideoController < ApplicationController
  def index
    redirect_to :root
  end
  def show
    country_code = params[:country_id].upcase
    video_id = params[:id]
    selected_video = Video.find_by(id: video_id)
    if selected_video
      selected_video.systems.each do |sys|
        if sys.policy.name == 'block' && sys.country.code == country_code
          redirect_to :root
          return
        end
      end
      @country = Country.find_by(code: country_code)
      @video = selected_video
    else
      redirect_to :root
      return
    end
  end
end
