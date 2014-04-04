WeddingChecklist::Application.routes.draw do
  match('templates/', {via: :get, to: 'templates#index'})
  match('templates/', {via: :post, to: 'templates#create'})
  match('templates/:id', {via: :get, to: 'templates#show'})
  match('templates/:id', {via: [:patch, :put], to: 'templates#update'})
  match('templates/:id', {via: :delete, to: 'templates#destroy'})

  match('users/', {via: :get, to: 'users#index'})
  match('users/', {via: :post, to: 'users#create'})
  match('users/:id', {via: :get, to: 'users#show'})
  match('users/:id', {via: [:patch, :put], to: 'users#update'})
  match('users/:id', {via: :delete, to: 'users#destroy'})
  match('users/:id/templates', {via: :get, to: 'users#choose_templates'})
end
