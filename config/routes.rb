Rails.application.routes.draw do
  get 'iaido/index'

  get 'welcome/index'

  # get 'welcome/create'

  # get 'welcome/new'

  # root 'welcome#index'

  root 'iaido#index'

  resources :articles do
  	resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
