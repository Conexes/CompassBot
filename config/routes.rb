Rails.application.routes.draw do

  devise_for :users
  # Pages routers path
  get 'static_pages/workpage'
  get 'static_pages/home'
  get 'static_pages/help'


  devise_for :users # API routes path
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      #devise_for :users
      resources :users, :only => [:show, :create]
    end
  end

end
