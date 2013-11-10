Serial::Application.routes.draw do

  resources :companies, only: [:index, :show] do
    resources :employees, only: [:index, :show]
    resources :offices, only: [:index, :show]
  end

  root to: "companies#index"

end
