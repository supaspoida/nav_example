NavExample::Application.routes.draw do
  resources :pages, only: [:index, :show]
  root to: 'pages#index'
end
