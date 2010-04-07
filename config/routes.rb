ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resources :user_sessions  
  map.resources :password_resets

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.register "register", :controller => "users", :action => "new"
  map.activate '/activate/:activation_code', :controller => 'activations', :action => 'create'

  map.root :controller => "users", :action => "show"
end
