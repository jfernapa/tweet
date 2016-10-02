Rails.application.routes.draw do

  get '/tweet/index'
  root 'tweet#index'

  get '/tweet/show'

  get '/tweet/new'

  get '/tweet/edit'

  get '/tweet/login'

  get '/tweet/create'

  get '/tweet/update'

  get '/tweet/delete'

end
