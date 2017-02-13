Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'reads#index'

  namespace :api do
    namespace :v1 do
      post '/reads', to: 'reads#create'
    end
  end
end
