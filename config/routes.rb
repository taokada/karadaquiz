Rails.application.routes.draw do

  get "home/top" => "home#top"
  get "home/about" => "home#about"
  get "home/blog" => "home#blog"
  get "home/portfolio" => "home#portfolio"
  get "home/contact" => "home#contact"
  post "home/post" => "home#post"

  get "users/signup" => "users#signup"
  post "users/create" => "users#create"
  get "users/login" => "users#login_form"
  post "users/login" => "users#login"
  post "users/logout" =>"users#logout"


  get 'post/index' => "post#index"
  get "post/cxca" => "post#cxca"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
