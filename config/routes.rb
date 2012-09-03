LandingPageEng::Engine.routes.draw do
  resources :products

  match '/landing_pages/sitemap', to: 'landing_pages#sitemap'
  match '/products/sitemap', to: 'products#sitemap'
  resources :landing_pages
  match ":slug", to: "landing_pages#route"
  match "/gift/:slug", to: "products#route"
end
