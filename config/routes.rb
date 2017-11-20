Rails.application.routes.draw do
  

  get 'configurations/rake'

  get 'configurations/routes'

  resources :sections
  resources :type_sections
  resources :pages
  resources :screens
  resources :displays
  get 'carte_components/index'

  get 'carte_components/show'

  get 'carte_components/new'

  get 'carte_components/edit'

  get 'carte_components/create'

  get 'carte_components/update'

  get 'carte_components/destroy'

  resources :cartes, controller: 'carte_components', type: 'Carte'

  resources :carte_items, controller: 'carte_components', type: 'CarteItem'

  
  root 'carte_components#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
