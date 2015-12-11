Rails.application.routes.draw do

  root to: "welcome#index"

  get "/dashboard" => "climbs#index", as: :climbs
  post "/dashboard" => "climbs#create"

  get "/peaks" => "peaks#index"
  get "/peaks/:id" => "peaks#show", as: :peaks_show
  delete "/peaks/:id" => "climbs#destroy"

  get "/ranges" => "ranges#index"
  get "/ranges/:range" => "ranges#show", as: :ranges_show

  get "/leaderboard" => "welcome#leader", as: :leader

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
