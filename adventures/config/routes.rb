Rails.application.routes.draw do

  resources :activities
  resources :states
  # root 'this_is_my_website' => 'welcome#index'
  #
  # get 'about_me' => 'welcome#about'

  get 'I_love_to_code' => 'welcome#love_code'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
