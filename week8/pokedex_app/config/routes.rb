Rails.application.routes.draw do
  # get 'pokemon/new'
  #
  # get 'pokemon/create'
  #
  # get 'pokemon/delete'
  #
  # get 'pokemon/edit'


  resources :pokemon #, except: [:destroy]


  get 'page/new'

  get 'page/create'

  get 'page/delete'

  get 'page/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
