Sweepstake::Application.routes.draw do

  resources :people, :only => [ :show ]

  get "leaderboards/countries"

  get "leaderboards/people"

  root :to => 'leaderboards#people'
end
