Rails.application.routes.draw do
  devise_for :users,
                path:'',
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
                },
                controllers: {
                  sessions: 'users/sessions',
                  registrations: 'users/registrations'
                }, 
                defaults: { format: :json }

  namespace :api do
    resources :posts
  end

  get '/current_user', to: 'current_user#index'

end
