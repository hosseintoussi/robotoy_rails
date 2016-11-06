Rails.application.routes.draw do
  get 'robotoy/index'
  root 'robotoy#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
