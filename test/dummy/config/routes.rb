Rails.application.routes.draw do

  mount LandingPageEng::Engine => "/lp", as: "lp"
end
