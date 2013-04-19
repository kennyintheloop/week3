Homework3::Application.routes.draw do

  get '/rps', controller:'rps',action: 'index', as: 'rps'
  get '/poker', controller:'poker',action: 'index', as: 'poker'
  get '/dice', controller:'dice',action: 'index', as: 'dice'
  get '/dice/roll', controller:'dice',action: 'roll', as: 'roll'
  post '/rps', controller:'rps',action: 'index'
  post '/poker', controller: 'poker', action: 'poker'
  post '/dice/roll', controller: 'dice', action: 'roll'

  #delete '/movies/:id', controller: 'movies', action: 'destroy'
end
