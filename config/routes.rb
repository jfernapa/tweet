Rails.application.routes.draw do

  get 'tweet/index'
  root 'tweet#index'

  get 'tweet/new'
  root 'tweet#new'

  get 'tweet/show'
  root 'tweet#show'

  get 'tweet/edit'
  root 'tweet#edit'

  get 'tweet/login'
  root 'tweet#login'

  get 'tweet/create'
  root 'tweet#create'

  get 'tweet/update'
  root 'tweet#update'

  get 'tweet/delete'
  root 'tweet#delete'

end
