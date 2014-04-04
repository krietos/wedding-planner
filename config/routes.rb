WeddingChecklist::Application.routes.draw do
  match('templates/', {via: :get, to: 'templates#index'})
  match('templates/pick/:user_id', {via: :get, to: 'templates#index'})
  match('templates/', {via: :post, to: 'templates#create'})
  match('templates/:id', {via: :get, to: 'templates#show'})
  match('templates/:id', {via: [:patch, :put], to: 'templates#update'})
  match('templates/:id', {via: :delete, to: 'templates#destroy'})

  match('users/', {via: :get, to: 'users#index'})
  match('users/', {via: :post, to: 'users#create'})
  match('users/:id', {via: :get, to: 'users#show'})
  match('users/:id', {via: [:patch, :put], to: 'users#update'})
  match('users/:id', {via: :delete, to: 'users#destroy'})

  match('aspects/', {via: :get, to: 'aspects#index'})
  match('aspects/:user_id', {via: :post, to: 'aspects#create'})
  match('aspects/:id', {via: :get, to: 'aspects#show'})
  match('aspects/:id', {via: [:patch, :put], to: 'aspects#update'})
  match('aspects/:id', {via: :delete, to: 'aspects#destroy'})
end
