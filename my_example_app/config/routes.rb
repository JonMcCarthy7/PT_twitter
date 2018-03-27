Rails.application.routes.draw do

  root 'welcome#index'

  get 'this_is_me' => 'welcome#about'

  get 'hit_me_up' => 'welcome#contact'

  get 'your_mom' => 'welcome#your_mom'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
