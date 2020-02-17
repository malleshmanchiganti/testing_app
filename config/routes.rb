Rails.application.routes.draw do
  
 
  # get'posts/ajaxreq'
resources :posts do
  get 'ajaxreq'
end
 root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
