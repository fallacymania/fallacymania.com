Rails.application.routes.draw do
  # root to: 'visitors#index'
  post '/mail/contact_me', to: 'mail/contact_me#create'
end
