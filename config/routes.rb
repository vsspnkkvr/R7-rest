Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/test', to: 'test#show'
end

namespace :api do
  namespace :v1 do
    resources :members do
      resources :facts
    end
  end
end