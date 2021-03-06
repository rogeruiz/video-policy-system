class CountryController < ApplicationController
  def index
    redirect_to :root
  end
  def show
    code = params[:id].upcase
    selected_country = Country.find_by(code: code)
    if selected_country
      @country = selected_country
      videos = Video.all
      data = {'id' => '', 'title' => '', 'country' => '', 'policy' => ''}
      @videos = []
      videos.each do |v|
        v.systems.each do |sys|
          if sys.country.code == code && sys.policy.name != 'block'
            data['id'] = v.id
            data['title'] = v.title
            data['country'] = sys.country.code
            data['policy'] = sys.policy.name
            @videos.push(data.clone)
          end
        end
      end
    else
      redirect_to :root
    end
  end
end
