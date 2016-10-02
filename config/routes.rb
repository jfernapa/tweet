Rails.application.routes.draw do

  get '/index'
  root 'tweet#index'

  get '/show'

  get '/new'

  get '/edit'

  get '/login'

  get '/create'

  get '/update'

  get '/delete'

end
