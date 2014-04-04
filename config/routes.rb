WeddingChecklist::Application.routes.draw do
  match('templates/', {via: :get, to: 'templates#index'})
  match('templates/', {via: :post, to: 'templates#create'})
  match('templates/:id', {via: :get, to: 'templates#show'})
end
