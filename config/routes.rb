Rails.application.routes.draw do
  get 'admin/index'
  #get 'sessions/new'

  get 'sessions/create'
  get 'sessions/destroy'


  resources :users


  root 'admin#index'
  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'login' => :destroy
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
