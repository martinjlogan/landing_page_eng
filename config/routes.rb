LandingPageEng::Engine.routes.draw do
  resources :products

  match '/sitemap', to: 'landing_pages#sitemap'
  resources :landing_pages
  match ":slug", to: "landing_pages#route"
end
