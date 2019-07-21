Rails.application.routes.draw do
  get 'clients/index'
  get 'clients/new'
  get 'clients/create'
  get 'clients/update'
  get 'clients/edit'
  get 'clients/show'
  get 'clients/destroy'
  get 'freelancers/index'
  get 'freelancers/new'
  get 'freelancers/show'
  get 'freelancers/update'
  get 'freelancers/create'
  get 'freelancers/edit'
  get 'freelancers/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
