Rails.application.routes.draw do

  root 'pages#home'

  get 'about_page', to: 'pages#about'
  get 'contact_page', to: 'pages#contact'
  get 'post', to: 'post#post'

end
