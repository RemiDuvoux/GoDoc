Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :questions, only: [:index, :show, :create, :new] do
    get 'new_answer', to: 'questions#answer'
    patch '' => 'questions#answer_patch'
  end
  resources :users, only: [ :show, :edit, :update ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
