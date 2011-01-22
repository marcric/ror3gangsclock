R3gc::Application.routes.draw do

  root :to => "home#index"

  match "/home" => "home#index", :as => :home
  match "/about" => "home#about", :as => :about
  match "/signin" => "home#signin", :as => :signin

end
