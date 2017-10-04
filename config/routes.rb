Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
   namespace :v1 do
    get '/bitcoins' => 'bitcoins#index'
    post '/bitcoins' => 'bitcoins#create'
    get 'bitcoins/:id' => 'bitcoins#show'
    patch '/bitcoins/:id' => 'bitcoins#update'
    delete '/bitcoins/:id' => 'bitcoins#destroy'

  end

  namespace :v2 do
     get '/bitcoins' => 'bitcoins#index'
     post '/bitcoins' => 'bitcoins#create'
     get 'bitcoins/:id' => 'bitcoins#show'
     patch '/bitcoins/:id' => 'bitcoins#update'
     delete '/bitcoins/:id' => 'bitcoins#destroy'

  end

end

 


  
