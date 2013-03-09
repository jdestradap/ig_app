IgApp::Application.routes.draw do
  resources :oauth_consumers do
    member do
      get :callback
      get :callback2
      match 'client/*endpoint' => 'oauth_consumers#client'
    end
  end

  devise_for :users

  get "welcome/index"

  scope "api" do
    resources :orders, except: [:new, :edit]
    resources :products, except: [:new, :edit]
  end

  root :to => "welcome#index"
end