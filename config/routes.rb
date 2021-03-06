Rails.application.routes.draw do
  get 'web/home' => redirect('/')

  get 'about-us' => 'web#about_us', as: 'web_about_us'

  post 'web/search'

  root to: 'web#home'

  resources :books, except: [:new, :create]
  resources :authors do
    resources :books
  end

  resources :employees, path_names: { new: 'hire'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
