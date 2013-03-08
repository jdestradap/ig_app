IgApp::Application.routes.draw do
  scope "api" do
    resources :orders, except: [:new, :edit]
    resources :products, except: [:new, :edit]
  end
end
