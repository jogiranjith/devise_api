Rails.application.routes.draw do
	# Engines
	# Resources Start Here
	# Api
  devise_for :users, controllers: { registrations: 'api/v1/registrations',sessions: 'api/v1/sessions' ,passwords: 'api/v1/passwords'}

  namespace :api do
    namespace :v1 do
     
    end
  end

  # Devise routes start here

end
