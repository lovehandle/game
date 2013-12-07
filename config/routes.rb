Game::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  PagesController::PAGES.each do |page|
    get "/pages/#{page}", as: "pages##{page}", as: "#{page}"
  end

  namespace :api do
    resources :venues
    resources :rewards
    resources :challenges
    resources :players
    resources :attempts
    resources :proofs
  end

  root "pages#home"

end
