Rails.application.routes.draw do
  get 'currencies/index'

  get 'currencies/show'

  get 'currencies/new' => 'currencies#create'

  get 'currencies/update' => 'currencies#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
