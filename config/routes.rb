Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/new'
  get 'home/create'

  get 'home/destroy/:post_id' => 'home#destroy'
  get 'home/edit/:post_id' => 'home#edit'
  get 'home/update/:post_id' => 'home#update'

  get 'home/contact'

  get 'home/dashboard'
end
