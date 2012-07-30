Sweepstake::Application.routes.draw do
  get "leaderboards/countries"

  get "leaderboards/people"

  root :to => 'leaderboards#people'
end
