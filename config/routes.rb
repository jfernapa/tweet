Rails.application.routes.draw do
  get 'tweet/login'
  root 'tweet#login'

  get 'tweet/show'
  root 'tweet#show'

  get 'tweet/create'
  root 'tweet#create'

  get 'tweet/edit'
  root 'tweet#edit'

  get 'tweet/update'
  root 'tweet#update'

  get 'tweet/delete'
  root 'tweet#delete'

  get 'tweet/index'
  root 'tweet#index'

  get 'tweet/new'
  root 'tweet#new'
end
