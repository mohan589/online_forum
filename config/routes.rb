Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  resources :questions do
    resources :answers
  end

  resources :answers do
    resources :answers
  end

  root "questions#index"
end
