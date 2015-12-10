Rails.application.routes.draw do
  root to: "welcome#index"
  
  get "/peaks" => "peaks#index"
  get "/peaks/:id" => "peaks#show", as: :peaks_show
  get "/ranges" => "ranges#index"
  get "/ranges/:range" => "ranges#show", as: :ranges_show

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
