# frozen_string_literal: true

Rails.application.routes.draw do

  match '/' => 'app#index', via: 'get'

  match '/users' => 'users#index', via: 'get'
  match '/users' => 'users#validate', via: 'post'
  match '/users:id' => 'users#display', via: 'get'
  match '/users:id' => 'users#update', via: 'put'
  match '/users:id' => 'users#destroy', via: 'delete'

  match '/items' => 'items#index', via: 'get'
  match '/items' => 'items#upload', via: 'post'
  match '/items:id' => 'items#display', via: 'get'
  match '/items:id' => 'items#update', via: 'put'
  match '/items:id' => 'items#destroy', via: 'delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
