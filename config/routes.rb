Rails.application.routes.draw do
  get 'carte_components_controller/index'

  get 'carte_components_controller/show'

  get 'carte_components_controller/new'

  get 'carte_components_controller/edit'

  get 'carte_components_controller/create'

  get 'carte_components_controller/update'

  get 'carte_components_controller/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
