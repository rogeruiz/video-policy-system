VideoPolicySystem::Application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Use resources instead of get, much smarter routes
  resources :country do
    resources :video
  end

  get '*path', to: redirect('/')

end
