Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "subs#index"
  
  resources :subs do
    resources :topics
  end

  # custome route
  get 'x/:we/:sub_id', to: "topics#we", as: "yo"


  # get '/subs', to "subs#index"
  # get '/subs/:id', to "subs#show"

  # index in topics
  # get '/subs/:sub_id/topics', to: "topics#index"
  # get '/subs/:sub_id/topics/:id', to: "topics#show"

  # resources :topics do
  #   resources :comments
  # end

  # get '/topics/:topic_id/comments', to: "comments#index"

end
