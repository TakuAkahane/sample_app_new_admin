# encoding: utf-8
# frozen_string_literal: true

Renopertyadmin::Engine.routes.draw do
  resources :users, only: %w[index edit update] do
    member do
      get 'sign_in_as_user'
      get 'ploxy_sign_in_as_user'
      patch 'account_lock'
      patch 'account_unlock'
      patch 'block_mails'
    end
    collection do
      get 'user_display'
      get 'sub_accounts_index'
    end
  end

  resources :properties
end
