Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
  resource :user, only: [:new, :create, :index, :show]
  root to: "questions#index"
  resources :questions do
    resources :answers
  end
end
