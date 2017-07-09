Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  constraints subdomain: 'api' do
    # path as '/' lets us avoid duplication in route
    # without -- http://api.app.com/api/resource
    # with -- http://api.app.com/resource
    namespace 'api', path: '/' do
      namespace 'v1' do
        resources :ads
        resources :users
        resources :contracts
      end

      namespace 'v2' do
      end
    end
  end
end
