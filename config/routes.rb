Rails.application.routes.draw do
  get 'ranges/index'

  get 'peaks/index'

  get "/" => "welcome#index"
  get "/peaks" => "peaks#index"
  get "/peaks/:id" => "peaks#show", as: :peaks_show
  get "/ranges" => "ranges#index"
  get "/ranges/:range" => "ranges#show", as: :ranges_show
end
