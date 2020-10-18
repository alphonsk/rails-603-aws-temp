Rails.application.routes.draw do 

  root to: "main#index"

  
  # MAIN  
  # get '/u/:id', to: 'profiles#show', as: 'u' 
    get 'main/index'
    get 'main/help'
    get 'main/faq'
    get 'main/privacy'
    get 'main/legal'
    get 'main/contact'
    get 'main/tou' 
    get '/ads.txt', to: 'main#ads'
  
 
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  