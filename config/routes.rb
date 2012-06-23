LandingPageEng::Engine.routes.draw do
  resources :landing_pages

  match ":slug", to: "landing_pages#route"
end
