Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :teams, :path => '', param: :slug, only: [:show]
  %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show" :code => code
  end
end
