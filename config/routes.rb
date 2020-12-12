Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :show, :activate]

  #literally have to code in the URL link and then point it
  #to the action method in the controller.
  get 'students/:id/activate', to: 'students#activate'
 
end
